DROP TABLE if exists movies;
DROP TABLE if exists actors;
DROP TABLE if exists principal;

CREATE TABLE "movies" (
    "movie_id" varchar(30)   NOT NULL,
    "title" varchar(500)   NOT NULL,
    "year" int   NOT NULL,
    "genre" varchar(100),
    "country" varchar(500),
    "director" varchar(500),
    "writer" varchar(500),
    CONSTRAINT "pk_movies" PRIMARY KEY (
        "movie_id"
     )
);

CREATE TABLE "actors" (
    "cast_member_id" varchar(30)   NOT NULL,
    "name" varchar(100)   NOT NULL,
    "birth_name" varchar(100),
    "height" int,
    "place_of_birth" varchar(200),
    "spouses" varchar(200),
    "divorces" int   NOT NULL,
    "spouses_with_children" int   NOT NULL,
    "children" int   NOT NULL,
    CONSTRAINT "pk_actors" PRIMARY KEY (
        "cast_member_id"
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

