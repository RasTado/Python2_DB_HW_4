create table if not exists style_music 
(
id SERIAL primary key,
style_music_name VARCHAR(500) unique not null
);

create table if not exists musican 
(
id SERIAL primary key,
musican_name VARCHAR(500) unique not null
);

create table if not exists musicanstyle
(
style_id INTEGER references style_music(id),
musican_id INTEGER references musican(id),
constraint musicanstyle_pk primary key (style_id,musican_id)
);

create table if not exists album
(
id SERIAL primary key,
album_name VARCHAR(500) not null,
album_year INTEGER
);

create table if not exists albummusican
(
musican_id INTEGER references musican(id),
album_id INTEGER references album(id),
constraint albummusican_pk primary key (musican_id,album_id)
);

create table if not exists track
(
id SERIAL primary key,
track_name VARCHAR(500) not null,
duration TIME not null,
album_id INTEGER NOT NULL references album(id)
);

create table if not exists digest
(
id SERIAL primary key,
digest_name VARCHAR(500) not null,
digets_year INTEGER
);

create table if not exists digesttrack
(
digest_id INTEGER references digest(id),
track_id INTEGER references track(id),
constraint digesttrack_pk primary key (digest_id,track_id)
);