from flask import Flask, request, jsonify
import requests
from PIL import Image
from transformers import BlipProcessor, BlipForConditionalGeneration, BlipForQuestionAnswering
import io
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # Enable CORS for all routes


# Load models and processors (do this ONCE when the app starts)
blip_caption_processor = BlipProcessor.from_pretrained("Salesforce/blip-image-captioning-base")
blip_caption_model = BlipForConditionalGeneration.from_pretrained("Salesforce/blip-image-captioning-base")

blip_vqa_processor = BlipProcessor.from_pretrained("Salesforce/blip-vqa-base")
blip_vqa_model = BlipForQuestionAnswering.from_pretrained("Salesforce/blip-vqa-base")

def process_image_captioning(image):
    """Generates a caption for the image using BLIP."""
    inputs = blip_caption_processor(image, return_tensors="pt")
    out = blip_caption_model.generate(**inputs)
    return blip_caption_processor.decode(out[0], skip_special_tokens=True)


def process_image_vqa(image):
    """Performs Visual Question Answering using BLIP."""
    questions = [
        "What is the brand of the image?",
        "What colour is it?",
        "What could be the product categories for that image?",
        "What could be products similar to the one in the image?"
    ]
    answers = []
    for question in questions:
        inputs = blip_vqa_processor(image, question, return_tensors="pt")
        out = blip_vqa_model.generate(**inputs)
        answers.append(blip_vqa_processor.decode(out[0], skip_special_tokens=True))
    print("VQA Answers:", answers)
    return answers


@app.route('/process_image', methods=['POST'])
def process_image():
    """
    Endpoint that receives an image, processes it with BLIP for captioning and VQA,
    and then uses the results as input for T5 to generate keywords.
    """
    try:
        # Check if the image is in the request files
        if 'image' not in request.files:
            return jsonify({'error': 'No image provided'}), 400

        image_file = request.files['image']

        # Read the image
        img = Image.open(io.BytesIO(image_file.read())).convert('RGB') 

        # Process the image with BLIP captioning
        caption = process_image_captioning(img)

        # Process the image with BLIP VQA
        vqa_answers = process_image_vqa(img)


        return jsonify({
            'caption': caption,
            'vqa_answers': vqa_answers
        })

    except Exception as e:
        print(f"Error: {e}")  # Log the exception for debugging
        return jsonify({'error': str(e)}), 500


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000) 