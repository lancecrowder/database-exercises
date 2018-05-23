use codeup_test_db;

select 'Albums released after 1991' as 'Info';
select * from albums where release_date > 1991;
delete from albums where release_date > 1991;

select 'Albums with the genre ''disco''' as 'Info';
select * from albums where genre like '%disco%';
delete from albums where genre like '%disco%';

select 'Albums by ''Whitney Houston''' as 'Info';
select * from albums where artist like '%Whitney Houston%';
delete from albums where artist like '%Whitney Houston%';

select * from albums;