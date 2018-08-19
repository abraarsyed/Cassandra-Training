use killrvideo;

truncate videos;

alter table videos add tags set<text>;

describe table videos;

COPY videos FROM 'videos_with_tags.csv' WITH HEADER=true;

select * from videos limit 3;

create type video_encoding (
  bit_rates set<text>,
  encoding text,
  height int,
  width int
);

alter table videos add encoding frozen<video_encoding>;

describe table videos;

COPY videos (video_id, encoding) FROM 'videos_encoding.csv' WITH HEADER=true;

select * from videos limit 10;
