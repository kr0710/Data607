DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings 
(
  person varchar(255) NOT NULL,
  Halloween_score int NULL,
  TheWitch_score int NULL,
  BramsDracula_score int NULL,
  ItFollows_score int NULL,
  Insidious_score int NULL,
  Conjuring_score int NULL
);
insert into ratings values ('tom', 1, 3, NULL, 2, 4, 1);
insert into ratings values ('mike', 5, 3, NULL, 2, 3, 1);
insert into ratings values ('kerry', 1, 5, 5, 2, 4, 3);
insert into ratings values ('elyse', 1, 3, 5, 2, 4, 5);
insert into ratings values ('susan', NULL, 3, NULL, 2, 4, NULL);

select * from ratings INTO OUTFILE 'c:/data/movie_ratings.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n';
