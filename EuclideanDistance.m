function distance = EuclideanDistance(x,y)
%function distance = EuclideanDistance(x,y)
% this function takes two points as the vectors x and y, and it ouputs the
% distance between them (distance).
% Khaled Ajaj 4/2/2020

%checks if inputs are valid
if length(x) ~= length(y)
    distance = NaN; % return NaN if the vectors dont have the same length
    return
end
% if inputs are valid
x = x(:);% turns x into a column vector
y = y(:);% turns y into a column vector
distance = sqrt(sum((x-y).^2)); % finds the distance using the distance equation.
end