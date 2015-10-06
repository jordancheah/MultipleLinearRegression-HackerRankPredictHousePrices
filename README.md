# MultipleLinearRegression-HackerRankPredictHousePrices

## THE CHALLENGE
Predict house prices in R, Python, Octave/Matlab using Multiple Linear Regression
https://www.hackerrank.com/challenges/predicting-house-prices

## The Problem
Charlie wants to buy a house. He does a detailed survey of the houses in the area, and tries to quantify a lot of factors, such as the distance of the houses from commercial areas, schools and workplaces; the reputation of the construction companies and builders involved in constructing the apartments; the distance of the houses from highways, freeways and important roads; the size of the house; the facilities offered by the complex, and so on.
Each of these factors are quantified, normalized and mapped to values on a scale of 0 to 1. Charlie then makes a table. Each row in the table corresponds to Charlie's observations for a particular house. If Charlie has observed and noted F features, the row contains F comma separated values, followed by the house price in dollars per square foot at the end. If Charlie makes observations for H houses, his observation table has (F+1) columns and H rows, and a total of (F+1) * H entries.
Unfortunately, he was not able to get the pricing of some houses and he wants your help to give out an estimate of the pricing of the house.
There is one important observation which Charlie has made.
The prices per square foot, are (approximately) a linear function of the features in the observation table. For the purpose of prediction, you need to figure out this linear function.

## Input Format
The first line contains two space separated integers, F and N.
Over here, F is the number of observed features. N is the number of rows for which features as well as price per square-foot have been noted.
This is followed by a table having F+1 columns separated by a single space and N rows separated by a newline. The last column is the price per square foot.
After the table, is a single integer T. T lines follow, each being a row entry of the table with F columns separated by a single space.

## Constraints
```
1 <= F <= 10
5 <= N <= 100
1 <= T <= 100
0 <= Price Per Square Foot <= 106
0 <= Factor Values <= 1
```

## Output Format
T lines. Each line i contains the predicted price for the ith test case.

## Sample Input
```
2 7
0.18 0.89 109.85
1.0 0.26 155.72
0.92 0.11 137.66
0.07 0.37 76.17
0.85 0.16 139.75
0.99 0.41 162.6
0.87 0.47 151.77
4
0.49 0.18
0.57 0.83
0.56 0.64
0.76 0.18
```

## Sample Output
```
105.22
142.68
132.94
129.71
```


## Actual Output (Octave/Matlab)
```
$ chmod 755 HackerRankHousePrices.m
$ which octave
/usr/bin/octave
$ ./HackerRankHousePrices.m < HackerRankHousePrices-Input.txt
  105.21
  142.67
  132.94
  129.70
```

## Actual Output (Python 3.x Anaconda)
```
$ python HackerRankHousePrices.py < HackerRankHousePrices-Input.txt
105.214558351
142.670951307
132.936054691
129.701754045
```

## Actual Output (R)
```
$ Rscript HackerRankHousePrices.R < HackerRankHousePrices-Input.txt
3
105.134
143.4332
133.4505
129.5912
```

