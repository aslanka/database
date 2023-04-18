CREATE TABLE teams (
  team_id INT PRIMARY KEY AUTO_INCREMENT,
  team_name VARCHAR(50) NOT NULL,
  country VARCHAR(50) NOT NULL,
  coach_name VARCHAR(50) NOT NULL
);


CREATE TABLE players (
  player_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  position VARCHAR(50) NOT NULL,
  team_id INT,
  FOREIGN KEY (team_id) REFERENCES teams(team_id)
);


CREATE TABLE matches (
  match_id INT PRIMARY KEY AUTO_INCREMENT,
  home_team_id INT NOT NULL,
  away_team_id INT NOT NULL,
  match_date DATE NOT NULL,
  result VARCHAR(10) NOT NULL,
  FOREIGN KEY (home_team_id) REFERENCES teams(team_id),
  FOREIGN KEY (away_team_id) REFERENCES teams(team_id)
);
