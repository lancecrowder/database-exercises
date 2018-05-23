USE codeup_test_db;
select 'The name of all albums by Pink Floyd.' as 'Info';
select record_name FROM albums where artist = 'pink floyd';

select 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' as 'Info';
select release_date from albums where record_NAME LIKE '%PEPPER%';

select 'The genre for Nevermind' as 'Info';
SELECT genre from albums where record_name = 'nevermind';

select 'Which albums were released in the 1990s' as 'Info';
select record_name from albums where release_date between 1990 and 1999;

select 'Which albums had less than 20 million certified sales' as 'Info';
select record_name from albums where sales<20;

select 'All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?' as 'Info';
select record_name from albums where genre LIKE '%Rock%';