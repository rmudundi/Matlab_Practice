img = imread('PCB2.png');
imshow(img)

gray = rgb2gray(img);

subplot(2,2,1);
edges1 = edge(gray,'Sobel');
imshow(edges1);
title('Sobel');

subplot(2,2,2);
edges2 = edge(gray,'Prewitt');
imshow(edges2);
title('Prewitt');

subplot(2,2,3);
edges3 = edge(gray,'Roberts');
imshow(edges3);
title('Roberts');

subplot(2,2,4);
diffImage = imabsdiff(edges1,edges2)
imshow(diffImage);
title('Difference between Sobel and Prewitts')
