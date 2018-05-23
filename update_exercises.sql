use codeup_test_db;

select 'All albums in your table.' as 'Info';
select * from albums;

select 'All albums released before 1980' as 'Info';
select * from albums where release_date < 1980;

select 'All albums by Michael Jackson' as 'Info';
select * from albums where artist = 'Michael Jackson';