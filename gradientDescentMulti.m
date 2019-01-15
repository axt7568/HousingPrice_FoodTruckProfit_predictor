function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

    theta = theta - ((alpha/m) * (((((X*theta)-y)')*X)'));
    disp(["Cost function J:",num2str(computeCost(X, y, theta))]);
    disp(["Theta 0 :", num2str(theta(1)),"\n","Theta 1", num2str(theta(2))]);

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
