%this script creates a table that shows the different results of the
%algorithm with different k values and how they change.
% Khaled Ajaj 4/2/2020
close all % clears all workshop variables
clear all % closes all figures

load fisheriris % loads in the data set
fprintf('K\tRating\n'); % prints the table headers
k = 7; % sets the max k value
for n = 1:k % loops over desired k values
    rating = TestAlgorithm(meas,species,n); % finds the rating for each k
    fprintf('%1.0f\t%0.5f\n', n, rating); % prints the results to the table
end