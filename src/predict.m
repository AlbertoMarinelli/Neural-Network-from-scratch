function [y] = predict (weights, input, activation_hidden, activation_output) 
for j=1:size(input,1)
    sample = input(j,:);
    for i = 1:numel(weights)
        
        sample = [1 sample];
        nets(i).net = sample*weights(i).weight;
        
        if i < numel(weights)
            sample = activation_function(activation_hidden, nets(i).net);
        else
            y(j,:) = activation_function(activation_output, nets(i).net);
        end
    end  
end