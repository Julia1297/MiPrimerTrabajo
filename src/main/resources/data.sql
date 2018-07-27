delete from link;
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
insert into company(id,name) values (4,'Alcaldia Municipal de Cochabamaba');

insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (1,2,1,3,'Desarrolladores de Java con pasion por la programacion y tecnologia','3 años o mas','Ingenieria de Sistemas  o Licenciatura en Informatica','Ingles intermedio','Desarrolladores');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic_level,languages,name)
values (2,2,1,3,'Adoren la tecnologia','5 años o mas','Ingeniero Mecatronico','Ninguno','constructor mecanico');

insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (3,4,1,2,'Administrar recursos','3 años','Licenciatura en administracion de empresas','Ninguno','Empleado 3');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (4,4,1,2,'Financiamientos de proyecto','5 años','Licenciatura en Finanazas','Nivel basico','Economista internos');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (5,1,1,4,'Planificar, organizar, dirigir, coordinar y controlar la ejecución del desarrollo de las actividades relacionadas con las políticas','5 años de experiencia en trabajos similares y/o en el ejercicio de su profesión',' Licenciatura con Título en provisión Nacional en Ciencias Sociales,','Ninguno','Secretario (a) Municipal');

insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (6,4,1,4,'Apoyar al (la) Secretario (a) Municipal, en la administración integral y coordinación','2 años','Licenciatura en Ciencias Económicas o Ramas Afines.','Castellano','Profesional 2');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (7,4,1,4,'Apoyar al (la) Secretario (a) Municipal, en la administración integral y coordinación','1 año','Licenciatura en Ciencias Económicas o Ramas Afines','Castellano','Profesional 1');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (8,4,1,4,'Prestar apoyo en la recepción, canalización, registro, despacho y elaboración de documentos','2 años','Título De Secretaria Ejecutiva o administrativa','Castellano','Secretaria 7');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (9,1,1,4,'Brindar apoyo administrativo y operativo a la Secretaría de Desarrollo Humano e Igualdad de Oportunidades','1 año','Estudiante Universitario de Ciencias Económicas, Ciencias Jurídicas o ramas afines','Castellano','Encargado de Tarea 3');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (10,1,1,4,'Brindar apoyo administrativo y operativo a la Secretaría de Desarrollo Humano e Igualdad de Oportunidades','1 año','Estudiante Universitario de Ciencias Económicas, Ciencias Jurídicas o ramas afines','Castellano','Encargado de Tarea 2');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (11,1,1,4,'Apoyar en la recepción, registro, despacho y elaboración de documentos','1 año','Bachiller en Humanidades','Castellano','Auxiliar 6');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (12,1,1,4,'Coadyuvar en las actividades programadas por la Secretaría Municipal','No requiere experiencia','Bachiller en Humanidades','Castellano','Auxiliar 2');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (13,1,1,4,'Establecer políticas y el Plan Municipal de Seguridad Ciudadana','3 años','ámbito Policial, Ciencias Jurídicas, Políticas, Sociales o ramas afines','Castellano','Director (a)');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (14,1,1,4,'Operativizar los planes, programas, proyectos, campañas y actividades de prevención del delito','2 años en trabajos similares','Estudiante Universitario o de carrera de técnica en Ciencias Sociales o ramas afines','Castellano','Encargado de Funciones 4');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name)
values (15,1,1,4,'Proponer y ejecutar políticas, programas, proyectos, actividades y campañas en seguridad ciudadana','2 años','Licenciatura en Ciencias Económicas, Ciencias Jurídicas,  Políticas, Sociales, Policiales o ramas afines','Castellano','Jefe (a) de Departamento 2');


insert into link(id,name,description,link,category_id) values (1, 'Codecademy','Un portal donde puedes aprender diversos lenguajes de programacion.','https://www.codecademy.com/es',2);
insert into link(id,name,description,link,category_id) values (2, 'Fao','El aprendizaje en línea para satisfacer las necesidades de los profesionales de la agricultura y la seguridad alimentaria','http://www.fao.org',3);
