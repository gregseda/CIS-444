<!-- 	
	Greg Seda
	CIS 444 Homework 6
	nfl.php
	URL: http://cis444.cs.csusm.edu/seda004/hw6/nfl.php
-->

<!DOCTYPE html>
<html>
<head>
	<title>Greg Seda CIS 444 Homework 6</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="nfl_styles.css">
</head>
<body>
	<h1>NFL Teams</h1>
	<table>
	<caption>Team Information</caption>
<?php

$servername ="localhost";
$username = "seda004";
$password = "test";


$DBConnect = new mysqli($servername,$username,$password)
OR die("<div><p>Unable to connect to database</p></div>"."<div><p>Error code ".mysqli_connect_errno().": ".mysqli_connect_error()."</p></div>");
echo"<p>Connection Successful</p>";

mysqli_select_db($DBConnect,$username) OR die("<div><p>Unable to select database</p></div>");
echo"<div><p>Successful opened database</p></div>";

$teamNum = $_POST["id"];

$sql="SELECT * FROM teams WHERE teamID = $teamNum";
$QueryResult= $DBConnect->query($sql);
if(mysqli_num_rows($QueryResult)==0)
{
	die("<div><p>No results found</p></div>");
}
$row = mysqli_fetch_assoc($QueryResult);
$finfo=mysqli_fetch_fields($QueryResult);
echo "<tr>";
foreach($finfo as $val){
	echo "<th scope = 'col'>$val->name</th>";
}
echo "</tr>";
echo "<tr>";
foreach($finfo as $val){
	echo "<td>".$row[$val->name]."</td>";
}
echo "</tr>";

mysqli_close($DBConnect);
?>
</table>
</body>
</html>
