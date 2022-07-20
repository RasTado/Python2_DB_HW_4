--���������� ������������ � ������ �����;
SELECT style_music_name, COUNT(musican_id) FROM musicanstyle m
JOIN style_music ON m.style_id = style_music.id
GROUP BY style_music_name
ORDER BY COUNT(musican_id);

--���������� ������, �������� � ������� 2019-2020 �����;
SELECT album_name, COUNT(*) FROM track t
JOIN album a ON t.album_id = a.id
WHERE album_year >= 2019 AND album_year <= 2020
GROUP BY album_name

--������� ����������������� ������ �� ������� �������;
SELECT album_name, AVG(duration) FROM track t
JOIN album a ON t.album_id = a.id
GROUP BY album_name

--��� �����������, ������� �� ��������� ������� � 2020 ����;
SELECT musican_name FROM musican m
JOIN albummusican am ON m.id = am.musican_id
JOIN album a ON am.album_id = a.id
WHERE album_year != 2020
GROUP BY musican_name;

--�������� ���������, � ������� ������������ ���������� ����������� (�������� ����);
SELECT digest_name FROM musican m
JOIN albummusican am ON m.id = am.musican_id
JOIN album a ON am.album_id = a.id
JOIN track t ON a.id = t.album_id
JOIN digesttrack dt ON t.id = dt.track_id 
JOIN digest d ON dt.digest_id = d.id
WHERE musican_name = 'Madonna'
GROUP BY digest_name;

--�������� ��������, � ������� ������������ ����������� ����� 1 �����;
SELECT album_name, musican_name FROM musicanstyle ms
JOIN musican m ON ms.musican_id = m.id 
JOIN albummusican am ON m.id = am.musican_id
JOIN album a ON am.album_id = a.id
GROUP BY album_name, musican_name
HAVING COUNT(style_id) > 1
ORDER BY album_name;

--������������ ������, ������� �� ������ � ��������;
SELECT track_name FROM track t
LEFT JOIN digesttrack dt ON t.id = dt.track_id
WHERE track_id IS NULL

--�����������(-��), ����������� ����� �������� �� ����������������� ���� (������������ ����� ������ ����� ���� ���������);
SELECT musican_name, duration FROM musican m 
JOIN albummusican am ON m.id = am.musican_id
JOIN album a ON am.album_id = a.id
JOIN track t ON a.id = t.album_id
WHERE duration = (SELECT MIN(duration) FROM track)

--�������� ��������, ���������� ���������� ���������� ������.
SELECT album_name, COUNT(t.id) ct FROM album a
JOIN track t ON a.id = t.album_id 
GROUP BY album_name
HAVING COUNT(t.id) = (SELECT MIN(ct) FROM
	(SELECT COUNT(t.id) ct FROM album a
	JOIN track t ON a.id = t.album_id 
	GROUP BY album_name) AS res);
