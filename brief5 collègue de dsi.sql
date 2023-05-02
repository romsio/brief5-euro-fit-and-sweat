-- USE todolist;
-- on commence par les feuilles tel que les tables les plus éloignéesCREATE TABLE IF NOT EXISTS liste

/*
create table listee(-- id_coach est non nulle c'est un text de 25 caractères
id INT NOT NULL AUTO_INCREMENT,
title  VARCHAR(40) NOT NULL,
description  VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);
*/
insert into listee (id, title, description)
values (1, "Titre 1", "description 1"),
       (2, "Titre 2", "description 2");


