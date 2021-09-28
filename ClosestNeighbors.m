function [distances, indices] = ClosestNeighbors(x,trainingMatrix,k)
%function [distances, indices] = ClosestNeighbors(x,trainingMatrix,k)
% this function finds the k closest neighbors of point (x) in the training
% matrix. it outputs the minimum distances and the indices of those points.
% Khaled Ajaj 4/2/2020

[rows, cols] = size(trainingMatrix); % finds the size of the training matrix
distances = zeros(rows,1); % preallocates the distances vector
for n = 1:rows % loops over the number of rows
    distances(n) = EuclideanDistance(x,trainingMatrix(n,[1:4])); % fills the distances vector
end
[minDistances, index] = mink(distances,k); % finds the k minimum distances and their indices
indices = index; % outputs the indices
end