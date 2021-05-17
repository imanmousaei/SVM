%% clear everything
clc
clear
close all


%% constants
classesNo = 2;
featuresNo = 3;
testRate = 0;
maxNum = 10000000;
lambda = 1;


%% trainig data
I=xlsread('dataset.xlsx');
x(:) = I(:,1:end-1)
y(:) = I(:,end)

%% optimize
params = mainGA(featureNo, x, y, maxNum, lambda)





