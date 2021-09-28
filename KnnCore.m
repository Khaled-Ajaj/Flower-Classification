function  [approxNum,approxString,myData]  = KnnCore(x,dataMatrix,species,k)
%function  [approxNum,approxString,myData]  = KnnCore(x,dataMatrix,species,k)
% this function is the main function that utilizes all the sub functions
% and it classifies the test data point using the training matrix. it takes
% inputs x (the test point), dataMatrix (the matrix with all the data points),
% species (the species cell array), and k (the number of neighbors). and it outputs
% the approximation as a number (approxNum), a string (approxString), and
% the training matrix that was created (myData).
% Khaled Ajaj 4/2/2020

isValid = CheckMainFunctionEntries(x,dataMatrix,species,k); % checks for valid entries
if isValid == false
    error('Invalid Entries'); % error if entries are invalid.
    return % end the function
end

myData = CreateTrainingMatrix(dataMatrix, species,35); % creates a training matrix from the data matrix
class = ClassifyNewPoint(x,myData,k); % classifies the test point x
approxNum = class; % it saves the class number to an output

if class == 1
    approxString = 'setosa'; % 1 corresponds to setosa
elseif class == 2
    approxString = 'versicolor'; % 2 corresponds to versicolor
elseif class == 3
    approxString = 'virginica'; % 3 corresponds to virginica
end
end