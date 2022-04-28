create table if not exists Artist(
	ArtistID serial primary key,
	Name varchar (100) not null unique
);

create table if not exists Album(
	ArtistID serial primary key,
	Album_name varchar (100) not null unique
	AlbumID integer references Artist (id)
);

create table if not exists Tracks(
	AlbumID serial primary key,
	Title varchar (100) not null unique
	Time varchar (100) not null unique
	TracksID integer references Album (id)
);

create table if not exists Ganre (
	TracksID serial primary key,
	Ganre_name varchar (100) not null unique
)