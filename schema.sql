DROP TABLE if exists movies;
DROP TABLE if exists actors;
DROP TABLE if exists principal;

CREATE TABLE "movies" (
    "imdb_title_id" varchar(30)   NOT NULL,
    "title" varchar(500)   NOT NULL,
    "year" int   NOT NULL,
    "genre" varchar(100),
    CONSTRAINT "pk_movies" PRIMARY KEY (
        "imdb_title_id"
     )
);

CREATE TABLE "actors" (
    "imdb_name_id" varchar(30)   NOT NULL,
    "name" varchar(100)   NOT NULL,
    "place_of_birth" varchar(200),
    "spouses" varchar(200),
	"children" int   NOT NULL,
    "divorces" int   NOT NULL,
	CONSTRAINT "pk_actors" PRIMARY KEY (
        "imdb_name_id"
     )
);

CREATE TABLE "principal" (
    "cast_member_id" varchar(30)   NOT NULL,
    "movie_id" varchar(30)   NOT NULL,
    "category" varchar(30)   NOT NULL,
    "characters" varchar(200),
    CONSTRAINT "pk_principal" PRIMARY KEY (
        "cast_member_id"
     )
);

create view full_view as 
select * from movies as m, actors as a, principal as p
where m.imdb_title_id = p.movie_id and a.imdb_name_id = p.cast_member_id