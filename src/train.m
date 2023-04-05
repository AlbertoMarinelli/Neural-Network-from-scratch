function [weights] = train (weights, input, target, epoch, lr, activation_hidden, activation_output, alpha, lambda)

weight_updates = cell(numel(weights), 1);
weights_old = struct();

for l=1:numel(weights)
    weights_old(l).weight = zeros(size(weights(l).weight));
end

for i=1:epoch
    Q = 100; % # elem in batch
    [m,~] = size(target);
    range = randi(m, 1, Q);

    fprintf('epoch %i/%i\n', i, epoch)
    
    for t = 1:numel(range) % ... for each training sample
        
        % pick a training example
        x = input(range(t),:); % network inputs of the current example
        y_true = target(range(t),:); % ground truth of the network output (i.e. expected result)
   
        [nets, y] = feedforward (weights, x, activation_hidden, activation_output);
        [weight_updates{t}] = backpropagation (weights, y, y_true, x, nets, activation_hidden, activation_output);
        
    end
    
    [weights, weights_old] = update_weights (weights, weights_old, weight_updates, numel(range), lr, alpha, lambda);

end