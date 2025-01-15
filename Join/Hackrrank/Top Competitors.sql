select h.hacker_id,h.name
from Submissions s
join Challenges c
on s.challenge_id = c.challenge_id
join Difficulty d 
on c.difficulty_level = d.difficulty_level
join hackers h
on h.hacker_id = s.hacker_id
where s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) desc, s.hacker_id 

--https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true

/*
-- Create the table

CREATE TABLE Hackers (
  hacker_id INT PRIMARY KEY,
  name VARCHAR(100)
);
CREATE TABLE Difficulty (
  difficulty_level INT PRIMARY KEY,
  score INT
);
CREATE TABLE Challenges (
  challenge_id INT PRIMARY KEY,
  hacker_id INT,
  difficulty_level INT,
  FOREIGN KEY (hacker_id) REFERENCES Hackers(hacker_id),
  FOREIGN KEY (difficulty_level) REFERENCES Difficulty(difficulty_level)
);
CREATE TABLE Submissions (
  submission_id INT PRIMARY KEY,
  hacker_id INT,
  challenge_id INT,
  score INT,
  FOREIGN KEY (hacker_id) REFERENCES Hackers(hacker_id),
  FOREIGN KEY (challenge_id) REFERENCES Challenges(challenge_id)
);


INSERT INTO Hackers (hacker_id, name) VALUES
(90411, 'Joe'),
(86870, 'Ann');

INSERT INTO Difficulty (difficulty_level, score) VALUES
(2, 30),
(6, 100);

INSERT INTO Challenges (challenge_id, hacker_id, difficulty_level) VALUES
(71055, 90411, 2),
(66730, 86870, 6);

INSERT INTO Submissions (submission_id, hacker_id, challenge_id, score) VALUES
(1, 90411, 71055, 30),
(2, 86870, 66730, 100);
*/
