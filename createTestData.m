clear all % clears all workshop variables
close all % closes all open figures
load fisheriris % loads in the dataset

bb = fopen('TestData.txt','w+'); 
testData = [meas([36:50],:); meas([86:100],:); meas([136:150],:)];
lngth = length(testData);
for q = 1:lngth
fprintf(bb,'%0.5f,%0.5f,%0.5f,%0.5f\n', testData(q,1),testData(q,2), testData(q,3), testData(q,4));
end

fclose(bb)
