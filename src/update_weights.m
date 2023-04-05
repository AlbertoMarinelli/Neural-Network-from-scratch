function [weights, w_old] = update_weights (weights, w_old, weight_updates, range, lr, alpha, lambda)
% Weight update
acc = struct();
for l=1:numel(weights)
    acc(l).weight = zeros(size(weights(l).weight));
end
% sum each layer's weight changes over all training results
for t=1:numel(weight_updates)
    weight_changes = weight_updates{t};
    for w=1:numel(weights)
        acc(w).weight = acc(w).weight + weight_changes(w).weight;
    end

end
for w=1:numel(weights)
    acc(w).weight = acc(w).weight/range;
end
for l=1:numel(weights)  
   w_new = - lr.*acc(l).weight + alpha*w_old(l).weight;
   weights(l).weight = weights(l).weight + w_new - lambda*weights(l).weight;
   w_old(l).weight = w_new;
end