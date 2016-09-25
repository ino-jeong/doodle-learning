%Doodle Leaning -Training application

clear;
close all;
clc

num_labels = 3;
load('data.mat');

m=size(X,1);
n=size(X,2);

lambda=0.5;

%One vs All Trainng;

all_theta=zeros(num_labels, n+1); %including thetas for bias term.
X_ = [ones(m,1) X]; %adding bias term.

for i=1:(num_labels)

options=optimset('GradObj','on','MaxIter',50);
[theta]=fmincg (@(t)(lgstRegJ(t,X_,(y==i),lambda)),(all_theta(i,:)'),options);
all_theta(i,:)=theta;

end

 %save('theta.mat','all_theta');