function isValid = CheckMainFunctionEntries(x,dMat, species, k)
%function isValid = CheckMainFunctionEntries(x,dMat)
% this function checks if the entries of the main function are invalid.
% it takes in the test point a vector (x) which represents the test point,
% the training data matrix (dMat), the species data (species), and the
% number of closest neighbors (k), and it outputs a boolean indicating if
% the inputs are valid (isValid).
% Khaled Ajaj 4/2/2020

isValid = true; % initialize as valid entries
x = x(:); % turns x into a column vector
[row,col] = size(dMat); % finds the number of rows and columns in dMat
%checking if entries are valid
if length(x) ~= col || length(species) < 3 || k<1
    isValid = false; % set to false if invalid
    return
end
end