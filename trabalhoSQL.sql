create schema trabalho_OLIMPIADAS;
use trabalho_OLIMPIADAS;

CREATE TABLE atletas (
Name_atletas Varchar(30),
Noc_atletas Varchar(50),
Discipline_atletas Varchar(50)
);



CREATE TABLE coaches (
Name_coaches Varchar(50),
Noc_coaches Varchar(50),
Discipline_coaches Varchar(30),
event_coaches Varchar(50)
);



CREATE TABLE entriesGender (
disciplines_gender Varchar(50),
female_gender INT  NULL,
male_gender INT  NULL,
total_gender INT NOT NULL
);




CREATE TABLE medals (
rank_medals INT NULL,
team_medals Varchar(100),
gold_medals INT  NULL,
silver_medals INT  NULL,
bronze_medals INT  NULL,
total_medals INT NULL,
rank_by_total INT NULL
);


CREATE TABLE teams (
Name_teams Varchar(50),
Discipline_teams Varchar(50),
Noc_teams Varchar(40),
event_teams Varchar(50)
);

create database olimpik;
-- 1
SELECT distinct c.Name_coaches AS Coach, a.Name_atletas AS Athlete
FROM coaches c
JOIN teams t ON c.Noc_coaches = t.Noc_teams
JOIN atletas a ON t.Noc_teams = a.Noc_atletas
WHERE t.Discipline_teams = 'Handball';

-- 2 não há como identificar os atletas pelas medalhas pois elas só dizem o numero de medalhas ganhas.

-- 3 não há como saber pois a tabela de medalhas não consegue se relacionar com a tabela de generos.

-- 4 não tem como relacionar os atletas as medalhas e nem com os paises.

-- 5 não a como saber quem são os atletas pois não há como
-- relacionar os aletas as medalhas e nem aos paises, não há como saber o nome dos atkletas numa relação dessas