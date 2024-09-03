%%Prediction
BIG_DATA = xlsread('BIG_DATA.xlsx');
outputA = net(BIG_DATA')';
xlswrite('Final_DATA.xlsx', outputA);