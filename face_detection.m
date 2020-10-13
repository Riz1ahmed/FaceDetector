image = imread('EmdadRiz1.jpg');
[wight, height] = size(image);
if (wight > 320)
    image = imresize(image, [320, NaN]);
end

faceDetector = vision.CascadeObjectDetector();
faceLocation = step(faceDetector, image);
detectedImage = insertShape(image, 'Rectangle', faceLocation);

figure;
imshow(detectedImage);
title('Detected Image');