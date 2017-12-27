/*
	compute.js
 	Greg Seda
	CIS 444 Homework 4
	URL: http://cis444.cs.csusm.edu/seda004/hw4/compute.js

*/


var appleTotal = 0;
var orangeTotal = 0;
var bananaTotal = 0;

function validateApple() {
  var num = document.getElementById("apple").value;
  appleTotal = num * 0.59;
}

function validateOrange() {
  var num = document.getElementById("orange").value;
  orangeTotal = num * 0.49;
}

function validateBanana() {
  var num = document.getElementById("banana").value;
  bananaTotal = num * 0.39;
}

function displayTotal() {
  var taxtotal = (appleTotal + orangeTotal + bananaTotal) * 1.0775;

  alert("Your total cost is $" + taxtotal.toFixed(2) + ".");
}