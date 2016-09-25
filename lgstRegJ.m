%lgstRegJ (logistic regression cost J calculation function)

function [J, grad] = lgstRegJ(theta,X,y,lambda)

m=size(X,1);
J=0;

grad=zeros(size(theta));
theta1 = theta([2:end],:); %saving copy of theta without bias term for regularization

z=X*theta;
J= -1/m * ( y .* log(sigmoid(z)) + (1-y) .* log(1-sigmoid(z)));
J= sum(J); %J without regularization

J= J + lambda/(2*m) * (theta1'*theta1);

                       
grad= (1/m) * (X' * (sigmoid(z) - y)); %gradient withour regularization

grad(2:end)= grad(2:end)+lambda/m .* theta1;

end