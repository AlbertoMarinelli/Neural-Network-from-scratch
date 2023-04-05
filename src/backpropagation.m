function [gradients] = backpropagation (weights, y, true_y, input, nets, activation_hidden, activation_output)
gradients = struct();
delta_l(numel(weights)).delta = (y - true_y).* activation_f_prime(activation_output, nets(end).net);

for i = (numel(weights)-1):-1:1

    delta_l(i).delta = (delta_l(i+1).delta*weights(i+1).weight(2:end,:)').*activation_f_prime(activation_hidden, nets(i).net(:,2:end));

end

gradients(1).weight = [1 input]' * delta_l(1).delta;
for l=2:(numel(weights)-1)
    gradients(l).weight =  activation_function(activation_hidden, nets(l-1).net)' * delta_l(l).delta;
end
gradients(numel(weights)).weight =  activation_function(activation_hidden, nets(numel(weights)-1).net)' * delta_l(numel(weights)).delta;
        