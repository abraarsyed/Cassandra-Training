use killrvideo;

create table videos_by_tag_year (
  tag text,
  added_year int,
  video_id timeuuid,
  added_date timestamp,
  description text,
  title text,
  user_id uuid,
  primary key ((tag), added_year, video_id)
) with clustering order by (added_year desc);

describe table videos_by_tag_year;

COPY videos_by_tag_year FROM 'videos_by_tag_year.csv' WITH HEADER=true;

select count(*) from videos_by_tag_year;

select * from videos_by_tag_year where tag = 'trailer' and added_year = 2015;
select * from videos_by_tag_year where tag = 'cql' and added_year = 2014;
select * from videos_by_tag_year where tag = 'spark' and added_year = 2014;

select * from videos_by_tag_year where tag = 'cql' and added_year < 2015;

select * from videos_by_tag_year where tag = 'cql';
