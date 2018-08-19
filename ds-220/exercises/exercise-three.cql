use killrvideo;

create table videos_by_title_year (
  title text,
  added_year int,
  added_date timestamp,
  description text,
  user_id uuid,
  video_id timeuuid,
  primary key ((title, added_year))
);

describe table videos_by_title_year;

COPY videos_by_title_year FROM 'videos_by_title_year.csv' WITH HEADER=true;

select * from videos_by_title_year where title = 'Sleepy Grumpy Cat' and added_year = 2015;
select * from videos_by_title_year where title = 'Introduction To Apache Cassandra' and added_year = 2014;
select * from videos_by_title_year where title = 'AzureDev' and added_year = 2015;
