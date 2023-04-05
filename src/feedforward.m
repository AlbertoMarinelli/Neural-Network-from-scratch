function [nets, y] = feedforward (weights, input, activation_hidden, activation_output) 

for i = 1:numel(weights)
    
    input = [1 input];
    nets(i).net = input*weights(i).weight;
    
    if i < numel(weights)
        input = activation_function(activation_hidden, nets(i).net);
        nets(i).net = [1 nets(i).net];
    else
        y = activation_function(activation_output, nets(i).net);
    end
    
end