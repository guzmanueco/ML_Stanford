function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

hyp = sigmoid(X*theta);

short_theta = theta(2:length(theta));

theta_with_zero = [0;short_theta];

J = (1/m)*sum(-y.*log(hyp) - (1-y) .*log(1-hyp)) + (lambda/(2*m))*short_theta'*short_theta;

grad = (1/m)*X'*(hyp-y)+(lambda/m)* theta_with_zero;




% =============================================================

end
