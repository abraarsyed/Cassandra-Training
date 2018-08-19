use killrvideo;

create table bad_videos_by_tag_year (
  tag text,
  added_year int,
  added_date timestamp,
  title text,
  description text,
  user_id uuid,
  video_id timeuuid,
  primary key ((video_id))
);

describe table bad_videos_by_tag_year;

COPY bad_videos_by_tag_year (tag, added_year, video_id, added_date, description, title, user_id) FROM 'videos_by_tag_year.csv' WITH HEADER=true;

select count(*) from bad_videos_by_tag_year;

drop table bad_videos_by_tag_year;
