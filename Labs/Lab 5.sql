create table team(
teamID int not null,
teamName varchar(50),
coach varchar(20),
homeVenue varchar(20),
color varchar(20)
constraint team_pk primary key(teamID)
);

create table game {
teamID int not null,
gameID int not null,
gameDate date,
hometeamScore int not null,
awayTeamScore int not null,
location varchar(2)
constraint game_pk primary key (teamID, gameID, gameDate),
constraint game_fk foreign key (teamID) referneces team(teamID)
};


create table player(
teamID int not null,
playerID int not null,
playerName varchar(20),
jerseyNumber int not null,
playerCoach varchar(20) references player(playerName),
constraint game_pk primary key (teamID,playerName,jerseyNumber)

);



--part 1
select teamName, coaches, field, gameDate from team natural join game where gameDate is not null;

--part 2
--Note: Not sure if you wanted both private and team coach, bull I will put it incase
select playerName, playerCoach,coach from player natural join team;
