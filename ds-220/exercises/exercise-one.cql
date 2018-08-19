CREATE KEYSPACE killrvideo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1 };

use killrvideo;

create table videos (
  video_id timeuuid,
  added_date timestamp,
  description text,
  title text,
  user_id uuid,
  primary key (video_id));

describe table videos;

COPY videos FROM 'videos.csv' WITH HEADER=true;

select * from videos;

select * from videos limit 10;

select count(*) from videos; 
