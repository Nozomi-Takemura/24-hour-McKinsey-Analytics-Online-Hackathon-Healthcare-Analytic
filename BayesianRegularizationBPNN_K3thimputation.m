clear
cd /export/home1/NoCsBack/thesisnl/r0649141/Hackason0414/
addpath ./netlab
%/[X,Yc,T,AUCo] = perfcurve(tn(:,Test_ix),Yhat_test,1)
pn = importdata('./K3nearestMissing_train.mat');
%pn_name = importdata('./NAremove_train_colnames.mat');
tn = importdata('./K3nearestMissing_train_target.mat');
tn = double(tn);
n = size(pn,1);

rp = randperm(43400);
Test_ix = rp(1:6510);
Val_ix = rp(6501:13020);
Train_ix = setdiff(1:43400, Test_ix);
Train_ix = setdiff(Train_ix, Val_ix);

%Test_ix = 2:4:n;
%Val_ix = 4:4:n;
%Train_ix = [1:4:n 3:4:n];

%% transpose data for inputs
pn = pn';
tn = tn';

%% Configure a network using LM
net2 = fitnet(5);
net2.trainFCn= 'trainbr';
net2.divideFcn = 'divideind';
net2.divideParam = struct('trainInd', Train_ix, ...
'valInd', Val_ix, ...
'testInd', Test_ix);
[net2, tr2] = train(net2, pn, tn);
%% Get predictions on training and test
Yhat_train = net2(pn(:, Train_ix));
Yhat_test = net2(pn(:, Test_ix));
MSE_test = perform(net2,tn(:,Test_ix),Yhat_test);
MSE_train = perform(net2,tn(:,Train_ix),Yhat_train);
[X,Yc,T,AUCo] = perfcurve(tn(:,Test_ix),Yhat_test,1)
