Topic: Using KNN to classify flower species
Khaled Ajaj
4/2/2020


Abstract: Machine learning is the ability for machines to pick up patterns 
the same way humans can. Inherently, computers cannot pick up correlations 
and patters in data, but with proper and continuous training using machine 
learning, computers can be taught to see patterns in data and predict 
outcomes using those patterns. Hence, over the years, machine learning has 
grown into something very useful in all fields of science and technology. 
The k nearest neighbors algorithm is one of the methods used to predict a 
classification of new data by using already known data. This project uses 
the k nearest neighbors approach to predict the species of a flower using 
the fisheriris data that is available in Matlab.

Running the app:
- The app is run through the file mainGUI.m
- select either single data point or multiple data points
- If single data point:
	- Input all four measurements.
	- input an output file name if desired (no extension).
	- Click run algorithm to run it, it will display the result on screen.
	- if you wish to save the result, click the save button, it will save 
      the result in the same folder with the name you entered earlier.
- If multiple data points:
	- make sure you have the TestData.txt file that is included
	- in the input file name text box, enter 'TestData'
	- in the output file name text box, enter the desired file name.
	- click run algorithm.
	- the results will be saved in a text file with the name you selected.
 
Dataset: the fisheriris dataset included in Matlab was used in this project.

Functions:
- CheckMainFunctionEntries: checks the validity of entries for KnnCore.
- ClassifyNewPoint: uses the closest neighbors to classify test point.
- closest neighbors: finds the closest neighbors of a test point.
- CreateTrainingMatrix: creates a matrix of training data from the dataset 
with an equal number of each species. (the number is selected by the user).
- DataInputOutput: reads in data points, classifies them using the 
              KNN algoritm, and then it prints them out to a new text file.
- EuclideanDistance: finds the Euclidean distance between two points.
- KnnCore: uses all the small functions to classify the test data and 
           outputs the result.
- TestAlgorithm: tests the KNN algorithm using known data to find how 
                 close the results are to the known species.

Scripts:
- TestDifferentK: tests the KNN algorithm with different K values to and 
                  prints the results to a table.
