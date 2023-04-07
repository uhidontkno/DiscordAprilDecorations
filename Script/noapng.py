import os
from PIL import Image, ImageSequence

# Set the directory to the folder containing the PNG files
directory = '../Animated PNG'

# Loop through each file in the folder
for filename in os.listdir(directory):
    # Check if the file is a PNG
    if filename.endswith('.png'):
        # Open the image file
        image = Image.open(os.path.join(directory, filename))

        # Check if the image has multiple frames (is animated)
        if image.is_animated:
            # If it is animated, remove all frames except the first one
            frames = []
            for frame in ImageSequence.Iterator(image):
                frames.append(frame.convert('RGBA'))
                if len(frames) == 1:
                    break
            image = Image.alpha_composite(frames[0], frames[0].convert('RGBA'))

        # Save the modified image with the same filename
        image.save(os.path.join(directory, filename + "_p.png"))
        
        # Process the modified image as desired
        # ...