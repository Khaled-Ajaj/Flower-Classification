function DataInputOutput(inputFileName, outputFileName)
%function DataInputOutput(inputFileName, outputFileName)
% this function is for the GUI. it reads in the test data filename, opens a
% new text file, writes the output data to it, then closes it. it takes the
% input text file name (inputFileName), the file has to be a .txt file with
% comma seperated values. and it outputs a text file with the resultant
% species with the file name (outputFileName). 
% Khaled Ajaj 4/2/2020

load fisheriris % loads in the data set
str1 = sprintf('%s.txt',inputFileName); % creates the file name as a string
testData = csvread(str1); % reads in the file data
[rows, cols] = size(testData); % finds the size of the test data matrix
str2 = sprintf('%s.txt',outputFileName); % creates the output file name as a string 
fileId = fopen(str2,'w+'); % opens an output file with the name stored in str2

for k = 1:rows % loops over the rows of the test matrix
    [newRowNum, newRowString] = KnnCore(testData(k,:),meas,species,5); % finds the k nearest neighbors for each point
    fprintf(fileId,'%s\n',newRowString); % prints each result to the output file
end
fclose(fileId); % closes the file
end