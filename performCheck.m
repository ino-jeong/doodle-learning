function performCheck(theta,x)
%performa logistic regression based on trained theta value.


%load trained theta
%load('theta_160818');

all_theta=theta

total_z=x*all_theta';
total_h=sigmoid(total_z);

[max_val, p_index]=max(total_h,[],2);

for i=1:length(p_index)
displayVector(x(i,2:end));
fprintf('\nRecognization Number by LR : %f\n',p_index(i));

end

end


%read image
%test=imread('test_04.bmp');

%if image is rgb, modify as grayscale
%test=0.299*test(:,:,1)+0.587*test(:,:,2)+0.114*test(:,:,3);

%change image from uint8 to double
%test=double(test);

%reshape as a vector
%test=reshape(test,1,400);

%adding bias term
%test=[1 test];

%performCheck(test)

