function pointClassification = ClassifyNewPoint(x,trainingMatrix, k)
%function pointClassification = ClassifyNewPoint(x,trainingMatrix, k)
%this function classifies the test point using the closest neighbors to it.
%it takes in the test point (x), the training matrix, and the number of
%neighbors (k), and it outputs the point classification as a number (1,2,3)
%each number corresponds to different species (setosa,
%versicolor,virginica) in the same order.

[distanceVec, indexVec] = ClosestNeighbors(x,trainingMatrix,k); % finds the k closest neighbors and their indices
classificationVec = trainingMatrix(indexVec, 5); % finds the species of the closest neighbors
setosa = (classificationVec == 1); % creates a logical vector that counts the number of setosas
versicolor = (classificationVec == 2); % creates a logical vector that counts the number of versicolors
virginica  = (classificationVec == 3); % creates a logical vector that counts the number of virginicas
% finding the most prevalent species in the nearest neighbors
numSetosa = sum(setosa); % counts setosas
numVersicolor = sum(versicolor); % counts versicolors
numVirginica = sum(virginica);  % counts virginicas
nums = [numSetosa numVersicolor numVirginica]; % creates a vector of counts
maximumNum = max(nums); % finds the highest count 
id = find(nums == maximumNum); % finds the index of the highest count

if length(id) == 2 % if there are two species with the same number of neighbors
    sumDist1 = sum(distanceVec(classificationVec == id(1))); % finds the sum of distances of the first species
    sumDist2 = sum(distanceVec(classificationVec == id(2))); % finds the sum of distances of the second species
    if sumDist1 > sumDist2
        pointClassification = id(1); % classifies the point as the 1st species (setosa)
    elseif sumDist2 > sumDist1
        pointClassification = id(2); % classifies the point as the 2st species (versicolor)
    end
elseif length(id) == 3 % if there are three species with the same number of neighbors
    sumDist1 = sum(distanceVec(classificationVec == id(1))); % finds the sum of distances of the first species
    sumDist2 = sum(distanceVec(classificationVec == id(2))); % finds the sum of distances of the second species
    sumDist3 = sum(distanceVec(classificationVec == id(3))); % finds the sum of distances of the third species
    allDist = [sumDist1 sumDist2 sumDist3]; % puts all sums in a vector
    [maxSum, maxSumIndex] = max(allDist); % finds the max value and its index
    pointClassification = id(maxSumIndex); % classifies the point

elseif length(id) == 1 % if theres only one max value
    pointClassification = id(1); % classifies the point using that max value's index
end
end

