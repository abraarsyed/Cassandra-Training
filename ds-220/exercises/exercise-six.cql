use killrvideo;

create table videos_count_by_tag (
  tag text,
  added_year int,
  video_count counter,
  primary key ((tag), added_year)
);

source 'videos_count_by_tag.cql';

select * from videos_count_by_tag limit 3;

update videos_count_by_tag set video_count = video_count + 10 where tag = 'You Are Awesome' and added_year = 2015;

select * from videos_count_by_tag where tag = 'You Are Awesome' and added_year = 2015;
