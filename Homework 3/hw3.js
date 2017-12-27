//Greg Seda
//CIS 444 Homework 3
//hw3.js
//Print factorial numbers based on a number n inputted by the user. 
//URL: http://cis444.cs.csusm.edu/seda004/hw3/hw3.js

function sFact(num) {
  var value = 1;
  for (var i = 2; i <= num; i++) 
    value *= i;
  return value;
}