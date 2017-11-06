function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

% Perform a single gradient step on the parameter vector theta.
    theta -= alpha * (1 / m) * (X' * (X*theta - y));
    % A = X * theta - y;  % (m x 1 vector)
	  % delta = 1 / m * (A' * X)';  % ' ((n+1) x 1 vector)
	  % theta = theta - (alpha * delta);  % ' ((n+1) x 1 vector)

    % theta -= alpha * (1/m) * ((X*theta-y)' * X)'

    J_history(iter) = computeCost(X, y, theta);

end

end
