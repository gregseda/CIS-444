create table teams 
(
	teamID INT NOT NULL AUTO_INCREMENT,
	teamName VARCHAR(25),	
	startYear INT,
	ownerName VARCHAR(25),
	GMName VARCHAR(25),
	coachName VARCHAR(25),
	startQB VARCHAR(25),
	officeAddress VARCHAR(30),
	city VARCHAR(25),
	state VARCHAR(3),
	zipCode INT,
	phone VARCHAR(20),
	overallRecord VARCHAR(15),
	confRecord VARCHAR(15),
   PRIMARY KEY(teamID)
);

INSERT INTO teams (teamName, startYear, ownerName, GMName, coachName, startQB, officeAddress, city, state, zipCode, phone, overallRecord, confRecord) VALUES('Cowboys', 1960, 'Jerry Jones', 'Jerry Jones', 'Jason Garrett', 'Dak Prescott', 'One Legend Way', 'Arlington', 'TX', 76011, '(817)892-4000', 'W5-L4', 'W4-L3');

INSERT INTO teams (teamName, startYear, ownerName, GMName, coachName, startQB, officeAddress, city, state, zipCode, phone, overallRecord, confRecord) VALUES('Jets', 1959, 'Woody Johnson', 'Mike Maccagnan', 'Todd Bowles', 'Josh McCown', 'One MetLife Stadium Drive', 'East Rutherford', 'NJ', 07073,'(201) 559-1515', 'W4-L6', 'W3-L5');

INSERT INTO teams (teamName, startYear, ownerName, GMName, coachName, startQB, officeAddress, city, state, zipCode, phone, overallRecord, confRecord) VALUES('49ers', 1944, 'Jed York', 'John Lynch', 'Kyle Shanahan', 'CJ Beathard', 'Marie P DeBartolo Way', 'Santa Clara', 'CA', 95054, '(415) 464-9377', 'W1-L9', 'W1-L8');