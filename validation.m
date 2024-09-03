%%ROCValidation
% R
% RMSE
% ROC 
% AUC
outputtest = net(TestX');
R_Correlation_Test = corr2(TestY',outputtest);
e= TestY - outputtest;
MSE = mean(e.^2);
RMSE = sqrt(MSE);
plotroc(TestY',outputtest)
[tpr,fpr,thresholds] = roc(TestY',outputtest);
x1 = fpr;
y1 = tpr;
auc = trapz(x1,y1);