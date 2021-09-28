function rating = TestAlgorithm(allData, species,k)
% function rating = TestAlgorithm(allData, species,k)
% this function tests the approximation of the algorithm to the known
% classifications, and it finds a rating based on how many were correct. it
% takes the inputs allData (the matrix with all of the data), the species
% cell array (species), and k (the number of neighbors). it outputs the
% rating between 0 and 1, the higher the better.
% Khaled Ajaj 4/2/2020

knownData = [ones(15,1); 2*ones(15,1); 3*ones(15,1)]; % the known data vector
testData =  [allData([36:50],:); allData([86:100],:); allData([136:150],:)]; % creates a test data vector
approximated = zeros(length(knownData),1); % preallocates the approximate classification vector 
for cnt = 1:length(approximated)
    approximated(cnt) = KnnCore(testData(cnt,:),allData,species,k); % classifies the test data points and saves them in the approximation vector
end
rightAnswers = (approximated == knownData); % creates a logical vector where 1s are right answers and zeros are wrong answers
rating = sum(rightAnswers)/(length(approximated)); % finds the percentage of the right classifications.
end