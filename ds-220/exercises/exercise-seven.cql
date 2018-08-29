use killrvideo;

create table videos_by_actor (
  actor text,
  added_date timestamp,
  video_id timeuuid,
  character_name text,
  description text,
  encoding frozen<video_encoding>,
  tags set<text>,
  title text,
  user_id uuid,
  primary key ((actor), added_date, video_id, character_name)
) with clustering order by (added_date desc, video_id asc, character_name asc);;

COPY videos_by_actor FROM 'videos_by_actor.csv' WITH HEADER = true;

select * from videos_by_actor where actor = 'Tom Hanks';
select actor, added_date from videos_by_actor where actor = 'Tom Hanks';

create table videos_by_genre (
  genre text,
  added_date timestamp,
  video_id timeuuid,
  description text,
  encoding frozen<video_encoding>,
  tags set<text>,
  title text,
  user_id uuid,
  primary key ((genre), added_date, video_id)
) with clustering order by (added_date desc, video_id asc);

COPY videos_by_genre FROM 'videos_by_genre.csv' WITH HEADER = true;

select * from videos_by_genre where genre = 'Future noir';
select * from videos_by_genre where genre = 'Time travel';
