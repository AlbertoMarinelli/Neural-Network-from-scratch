function [weights] = init(sizes)

        for i = 2:numel(sizes)

          %minrange = 0.50;
          %maxrange = 1.00;
          %r = (maxrange-minrange).*rand(sizes(i-1)+1, sizes(i)) + minrange;

          weights(i-1).weight = 0.05*rand(sizes(i-1)+1, sizes(i)); %r;

        end