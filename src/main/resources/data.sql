delete from requirements;
delete from company;
delete from city;
delete from category;

insert into city(id, name) values (1, 'Cochabamba');
insert into city(id, name) values (2, 'Santa Cruz');
insert into city(id, name) values (3, 'La Paz');

insert into category(id, name) values (1, 'Humanidades');
insert into category(id, name) values (2, 'Tecnologia');
insert into category(id, name) values (3, 'Ciencias de la Salud');
insert into category(id, name) values (4, 'Ciencias administrativas');
insert into category(id, name) values (5, 'Ciencias puras');

insert into company(id,name) values (1,'Comteco');
insert into company(id,name) values (2,'Gobierno Autónomo Municipal');
insert into company(id,name) values (3,'Jalasoft');

insert into requirements(id, category_id,city_id,company_id,description, experience, academic_level,languages,name)
values (1,2,1,3,'Desarrolladores de Java con pasion por la programacion y tecnologia','3 años o mas','Ingeniero de Sistemas  o Licenciatura en Informatica','Ingles intermedio','Desarrolladores');
