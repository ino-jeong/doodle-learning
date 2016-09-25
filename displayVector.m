function displayVector(x)
%display image vector of 1*400 size, which is originally 20*20.

colormap(gray);
imageHeight=20;

img=reshape(x,imageHeight,imageHeight);
imagesc(img);

end
