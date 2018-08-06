create table video (
  id int,
  name text,
  runtime int,
  year int,
  primary key (id)
);

insert into video(id, name, runtime, year) values (1, 'Insurgent', 119, 2015);
insert into video(id, name, runtime, year) values (2, 'Interstellar', 98, 2014);
insert into video(id, name, runtime, year) values (3, 'Mockingjay', 122, 2014);
