INSERT INTO style_music(style_music_name)
VALUES('Pop'),('Rock'),('Classical'),('Jazz'),('Folk'),('Ambient');

--Pop - Madonna - La Isla Bonita - 4:00 - 1986 - True Blue
--Pop - Madonna - Open Your Heart - 4:31 - 1986 - True Blue
--Pop - Madonna - Justify My Love - 4:58 - 1990 - The Immaculate Collection
--Pop - Madonna - Music - 4:27 - 2018 - Music
INSERT INTO musican(musican_name)
VALUES('Madonna');

INSERT INTO musicanstyle(style_id,musican_id)
VALUES(1,1);

INSERT INTO album(album_name,album_year)
VALUES('True Blue',1986),('The Immaculate Collection',1990),('Music',2018);

INSERT INTO albummusican(musican_id,album_id)
VALUES(1,1),(1,2),(1,3);

INSERT INTO track(track_name,duration,album_id)
VALUES('La Isla Bonita','00:04:00',1),('Open Your Heart','00:04:31',1),('Justify My Love','00:04:58',2),('Music','00:04:27',3);

--Pop - Laura Branigan - Gloria - 3:51 - 1982 - Branigan
INSERT INTO musican(musican_name)
VALUES('Laura Branigan');

INSERT INTO musicanstyle(style_id,musican_id)
VALUES(1,2);

INSERT INTO album(album_name,album_year)
VALUES('Branigan',1982);

INSERT INTO albummusican(musican_id,album_id)
VALUES(2,4);

INSERT INTO track(track_name,duration,album_id)
VALUES('Gloria','00:03:51',4);

--Rock - Toto - Africa - 4:31 - 1982 - Toto IV
--Rock - Toto - Make Believe -  3:43 - 1982 - Toto IV
INSERT INTO musican(musican_name)
VALUES('Toto');

INSERT INTO musicanstyle(style_id,musican_id)
VALUES(2,3);

INSERT INTO album(album_name,album_year)
VALUES('Toto IV',1982);

INSERT INTO albummusican(musican_id,album_id)
VALUES(3,5);

INSERT INTO track(track_name,duration,album_id)
VALUES('Africa','00:04:31',5),('Make Believe','00:03:43',5);

--Rock - Three Days Grace - The Mountain - 3:22 - 2018 - Outsider
INSERT INTO musican(musican_name)
VALUES('Three Days Grace');

INSERT INTO musicanstyle(style_id,musican_id)
VALUES(2,4);

INSERT INTO album(album_name,album_year)
VALUES('Outsider',2018);

INSERT INTO albummusican(musican_id,album_id)
VALUES(4,6);

INSERT INTO track(track_name,duration,album_id)
VALUES('The Mountain','00:03:22',6);

--Classical - Luciano Pavarotti - Carusso - 5:18 - 1994 - DallAmeriCaruso
INSERT INTO musican(musican_name)
VALUES('Luciano Pavarotti');

INSERT INTO musicanstyle(style_id,musican_id)
VALUES(3,5);

INSERT INTO album(album_name,album_year)
VALUES('DallAmeriCaruso',1994);

INSERT INTO albummusican(musican_id,album_id)
VALUES(5,7);

INSERT INTO track(track_name,duration,album_id)
VALUES('Carusso','00:05:18',7);

--Jazz - Gary Moore - Still Got The Blues - 04:10 - 1990 - Still Got
--Jazz - Gary Moore - In My Dreams - 5:42 - 2021 - How Blue Can You Get
INSERT INTO musican(musican_name)
VALUES('Gary Moore');

INSERT INTO musicanstyle(style_id,musican_id)
VALUES(4,6);

INSERT INTO album(album_name,album_year)
VALUES('Still Got',1990),('How Blue Can You Get',2021);

INSERT INTO albummusican(musican_id,album_id)
VALUES(6,8),(6,9);

INSERT INTO track(track_name,duration,album_id)
VALUES('Still Got The Blues','00:04:10',8),('In My Dreams','00:05:42',9);

--Jazz - Peter Green - Slabo Day - 05:05 - 1979 - In the Skies
INSERT INTO musican(musican_name)
VALUES('Peter Green');

INSERT INTO musicanstyle(style_id,musican_id)
VALUES(4,7);

INSERT INTO album(album_name,album_year)
VALUES('In the Skies',1979);

INSERT INTO albummusican(musican_id,album_id)
VALUES(7,10);

INSERT INTO track(track_name,duration,album_id)
VALUES('Slabo Day','00:05:05',10);

--Folk - Johnny Cash - Rock Island Line - 2:12 - 1957 - With His Hot And Blue Guitar
INSERT INTO musican(musican_name)
VALUES('Johnny Cash');

INSERT INTO musicanstyle(style_id,musican_id)
VALUES(5,8);

INSERT INTO album(album_name,album_year)
VALUES('With His Hot And Blue Guitar',1957);

INSERT INTO albummusican(musican_id,album_id)
VALUES(8,11);

INSERT INTO track(track_name,duration,album_id)
VALUES('Rock Island Line','00:02:12',11);

--Ambient,Folk - Schiller - Falling - 5:13 - 2005 - Day and Night
--Ambient,Folk - Schiller - Ruhe  - 3:43 - 2018 - Zeitgeist
INSERT INTO musican(musican_name)
VALUES('Schiller');

INSERT INTO musicanstyle(style_id,musican_id)
VALUES(6,9),(5,9);

INSERT INTO album(album_name,album_year)
VALUES('Day and Night',2005),('Zeitgeist',2018);

INSERT INTO albummusican(musican_id,album_id)
VALUES(9,12),(9,13);

INSERT INTO track(track_name,duration,album_id)
VALUES('Falling','00:05:13',12),('Ruhe','00:03:43',13);

INSERT INTO digest(digest_name,digets_year)
VALUES('Best',2022),('Top',2015)('HITs',2020),('Platinum',2012),('Gold',2019),('Silver',1999),('Extra',2005),('Remix',2018);

--Hip hop - Тима Белорусских - Я больше не напишу - 3:11 - 2019 - Твой первый диск — моя кассета
--Hip hop - Тима Белорусских - Возвращаться уже поздно - 3:19 - 2019 - Твой первый диск — моя кассета
--Hip hop - Тима Белорусских - Песня-SOS - 3:35 - 2019 - Твой первый диск — моя кассета
INSERT INTO style_music(style_music_name)
VALUES('Hip hop');

INSERT INTO musican(musican_name)
VALUES('Тима Белорусских');

INSERT INTO musicanstyle(style_id,musican_id)
VALUES(2,10),(7,10);

INSERT INTO album(album_name,album_year)
VALUES('Твой первый диск — моя кассета',2019);

INSERT INTO albummusican(musican_id,album_id)
VALUES(10,14);

INSERT INTO track(track_name,duration,album_id)
VALUES('Я больше не напишу','00:03:11',14),('Возвращаться уже поздно','00:03:19',14),('Песня-SOS','00:03:35',14);

INSERT INTO digesttrack(digest_id,track_id)
VALUES(1,6),(1,9),(1,15),(2,4),(2,5),(3,6),(4,11),(4,8),(5,14),(5,2),(6,1),(6,2),(6,3),(6,4),(7,7),(7,10),(7,12),(7,13),(7,14),(7,4),(8,4),(8,14),(5,16),(5,17);
