% importance of input variables in artificial neural networks
% Connection weights algorithm (CW)

Net_Weight_input = net.IW ;
Net_Weight_output = net.LW ;

input_W = cell2mat(Net_Weight_input);
output_W = cell2mat(Net_Weight_output);

W1 = (input_W' .* output_W) ;

Sum_1 = sum(W1,2);

bar(Sum_1);
xlabel('Variable')
ylabel ('Importance')
title ('importance of input variables - Connection weights algorithm')
