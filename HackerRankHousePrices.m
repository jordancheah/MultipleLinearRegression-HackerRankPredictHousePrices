#!/usr/local/bin/octave -qf
% Replace the above with the correct path of octave.  Use 'which octave' command in Unix command line.
% -qf to suppress warning messages.
%
% AUTHOR
% Jordan Cheah
%
% CHALLENGE (Expert Level)
% Multiple Linear Regression to predict housing predicting-house-prices
% https://www.hackerrank.com/challenges/predicting-house-prices
% 
% TRAINING SET
% The first line contains two space separated integers, F and N.
% Over here, F is the number of observed features. 
% N is the number of rows for which features as well as price per square-foot have been noted.
% This is followed by a table having F+1 columns separated by a single space and 
% N rows separated by a newline. The last column is the price per square foot.
%
% PREDICTION
% After the table, is a single integer T. T lines follow, each being a row entry of the table
% with F columns separated by a single space.
% 
% CONSTRAINTS
% 1 <= F <= 10
% 5 <= N <= 100
% 1 <= T <= 100
% 0 <= Price Per Square Foot <= 106
% 0 <= Factor Values <= 1
% 
% OUTPUT FORMAT:
% T lines. Each line i contains the predicted price for the ith test case.
%
% SAMPLE INPUT:
% 2 7
% 0.18 0.89 109.85
% 1.0 0.26 155.72
% 0.92 0.11 137.66
% 0.07 0.37 76.17
% 0.85 0.16 139.75
% 0.99 0.41 162.6
% 0.87 0.47 151.77
% 4
% 0.49 0.18
% 0.57 0.83
% 0.56 0.64
% 0.76 0.18
%
% SAMPLE OUTPUT: 
% 105.22
% 142.68
% 132.94
% 129.71

F = scanf('%d',1);          % number of observed features
R = scanf('%d',1);          % number of rows or observations
X = scanf('%lf',[F+1,R])';  % data for the observations

Y = X(:,F+1);               % Y is the last column
X = [ones(R,1), X(:,[1:F])]; % First column of X is all 1's

T = pinv(X'*X)*X'*Y;        % Normal Equation to calculate Theta
q = scanf('%d',1);          
Q = [ones(q,1), scanf('%f',[F,q])'];
disp(Q*T)
