function [trainingMatrix] = CreateTrainingMatrix(allData, species, numPoints)
%function [trainingMatrix] = CreateTrainingMatrix(allData, species, numPoints)
% this function creates a training matrix from the data provided by the
% fisheriris dataset. this could also be applied to other datasets as long
% as they are similar to the fisheiris data set in terms of variables. it
% takes in the data matrix (allData), the species cell array (species), and
% the number of points to use in the training matrix for each species
% (numPoints) (optional).
% NOTE: this function creates a training matrix with the same number of
% points from each species so that there is not a bias towards any of the
% data when using the algorithm.
% Khaled Ajaj 4/2/2020

[rows,cols] = size(allData); % finds the size of the data matrix
%if the number of points is not specified, it turns the entire data matrix
%into a training matrix.
if nargin == 2
    numPoints = rows/3;
end

setosaVec = zeros(rows,cols); % preallocates a setosa matrix
versicolorVec = zeros(rows,cols);  % preallocates a versicolor matrix
virginicaVec = zeros(rows,cols);  % preallocates a virginica matrix
for k = 1:rows % loops over the rows of the data matrix
    if strcmp(species{k}, 'setosa') == true
        setosaVec(k,:) = allData(k,:); % finds the setosa measurements
    elseif strcmp(species{k}, 'versicolor') == true
        versicolorVec(k,:) = allData(k,:); % finds the versicolor measurements
    elseif strcmp(species{k}, 'virginica') == true
        virginicaVec(k,:) = allData(k,:); % finds the virginica measurements
    end
end
setosaVec = setosaVec(any(setosaVec,2),:); % removes the all zero rows
versicolorVec = versicolorVec(any(versicolorVec,2),:); % removes the all zero rows
virginicaVec = virginicaVec(any(virginicaVec,2),:); % removes the all zero rows
types = [ones(numPoints,1); 2*ones(numPoints,1); 3*ones(numPoints,1)]; % marks the species in a new column. setosa (1), versicolor (2), virginica(3)
training = [setosaVec([1:numPoints],:); versicolorVec([1:numPoints],:);...
            virginicaVec([1:numPoints],:)]; % concactenates the training data measurements into one matrix
trainingMatrix = [training, types]; % outputs the training matrix
end

            