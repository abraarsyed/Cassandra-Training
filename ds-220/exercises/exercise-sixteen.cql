source 'killrvideo.cql';

describe keyspace killr_video;

use killr_video;

COPY videos FROM 'video.csv' WITH HEADER=true;

COPY latest_videos FROM 'latest_videos.csv' WITH HEADER=true;

COPY trailers_by_video FROM 'trailers_by_video.csv' WITH HEADER=true;

COPY actors_by_video FROM 'actors_by_video.csv' WITH HEADER=true;

select * from latest_videos limit 50;

select * from videos where video_id = 8a657435-0ef2-11e5-91b1-8438355b7e3a;

select * from actors_by_video where video_id = 8a657435-0ef2-11e5-91b1-8438355b7e3a;

select * from trailers_by_video where video_id = 8a657435-0ef2-11e5-91b1-8438355b7e3a;

select * from videos where video_id = 8a65751c-0ef2-11e5-9cac-8438355b7e3a;

