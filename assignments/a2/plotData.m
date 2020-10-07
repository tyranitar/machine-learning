function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

positive = find(y == 1);
negative = find(y == 0);

% Row 1 where corresponding y value was positive (== 1) and
% row 2 where corresponding y value was positive.
% Note that row 1 and row 2 will have the same number of corresponding y values that are positive,
% which is why this 2D plot works.
plot(X(positive, 1), X(positive, 2), 'k+', 'LineWidth', 2, ...
    'MarkerSize', 7, 'MarkerEdgeColor', 'b')

plot(X(negative, 1), X(negative, 2), 'ko', ...
    'MarkerSize', 7, 'MarkerFaceColor', 'y')

% =========================================================================



hold off;

end
