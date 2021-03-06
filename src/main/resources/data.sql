delete from link;
delete from requirements;
delete from company;
delete from city;
delete from category;




insert into city(id,name) values (1, 'Cochabamba');
insert into city(id,name) values (2, 'Santa Cruz');
insert into city(id,name) values (3, 'La Paz');
insert into city(id,name) values (4, 'Tarija');
insert into city(id,name) values (5, 'Chuquisaca');

insert into category(id,name) values (1, 'Humanidades');
insert into category(id,name) values (2, 'Tecnologia');
insert into category(id,name) values (3, 'Ciencias de la Salud');
insert into category(id,name) values (4, 'Ciencias administrativas');
insert into category(id,name) values (5, 'Ciencias puras');

insert into company(id,name) values (1,'Comteco');
insert into company(id,name) values (2,'Gobierno Autónomo Municipal de Cochabamba');
insert into company(id,name) values (3,'Jalasoft');
insert into company(id,name) values (4,'Alcaldia Municipal de Cochabamaba');
insert into company(id,name) values (5,'Instituto Boliviano De Metrologia - IBMETRO');

insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (1,2,1,3,'Desarrolladores de Java con pasion por la programacion y tecnologia','3 años o mas','Ingenieria de Sistemas  o Licenciatura en Informatica','Ingles intermedio','Desarrolladores Java','Experiencia trabajando con programación orientada a objetos, experiencia con modelo de objeto relacional,conocimiento de MySQL,trabajar en equipo eficientemente');




insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (13,1,1,4,'Establecer políticas y el Plan Municipal de Seguridad Ciudadana','3 años','Ámbito Policial, Ciencias Jurídicas, Políticas, Sociales o ramas afines','Castellano ','Director (a)','Conocimientos de la Constitución Política del Estado, Conocimientos sobre la Ley Nº 482 de Gobiernos Autónomos Municipales,Conocimientos sobre la Ley Nº 1178 de Administración y Control Gubernamentales-SAFCO y sus Decretos Reglamentarios');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (14,1,1,4,'Operativizar los planes, programas, proyectos, campañas y actividades de prevención del delito','2 años en trabajos similares','Estudiante Universitario o de carrera de técnica en Ciencias Sociales o ramas afines','Castellano ','Encargado de Funciones 4','Conocimientos de la Constitución Política del Estado, Conocimientos sobre la Ley Nº 482 de Gobiernos Autónomos Municipales,Conocimientos sobre la Ley Nº 1178 de Administración y Control Gubernamentales-SAFCO y sus Decretos Reglamentarios');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (15,1,1,4,'Proponer y ejecutar políticas, programas, proyectos, actividades y campañas en seguridad ciudadana','2 años','Licenciatura en Ciencias Económicas, Ciencias Jurídicas,  Políticas, Sociales, Policiales o ramas afines','Castellano ','Jefe (a) de Departamento 2',' Conocimientos de la Constitución Política del Estado, Conocimientos sobre la Ley Nº 482 de Gobiernos Autónomos Municipales,Conocimientos sobre la Ley Nº 1178 de Administración y Control Gubernamentales-SAFCO y sus Decretos Reglamentarios');



insert into link(id,name,description,link,category_id) values (1, 'Codecademy','Un portal donde puedes aprender diversos lenguajes de programacion.','https://www.codecademy.com/es',2);
insert into link(id,name,description,link,category_id) values (2, 'Fao','El aprendizaje en línea para satisfacer las necesidades de los profesionales de la agricultura y la seguridad alimentaria','http://www.fao.org',3);
insert into link(id,name,description,link,category_id) values (3, 'edX','Es una plataforma de cursos abiertos masivos en línea,','https://www.edx.org/es',1);
insert into link(id,name,description,link,category_id) values (4, 'Datacamp','Es una web orientada al aprendizaje de dos lenguajes de programación orientados al análisis de datos','www.datacamp.com/',2);
insert into link(id,name,description,link,category_id) values (5, 'Udemy','Es mejorar la vida de las personas mediante el aprendizaje. ','www.udemy.com',2);
insert into link(id,name,description,link,category_id) values (6, 'Coursera','Desarrolla habilidades solicitadas.','https://www.coursera.org/',4);
insert into link(id,name,description,link,category_id) values (7, 'Goodwall','Es una plataforma creada para ayudar a cada estudiante para que se conviertan en la mejor versión de sí mismos.','https://www.goodwall.org/',2);



insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (16,5,1,5,'Representar y dirigir el proceso de gestión, planificación, organización, integración, control y evaluación del proceso administrativo, operativo, financiero, técnico e institucional de los servicios que ofrece la Regional Cochabamba','3 años','Profesional con Título en Provisión Nacional en Ingeniería, Licenciatura en Física o ramas afines.','Inglés ','JEFE REGIONAL COCHABAMBA ','Capacidad Analítica,Capacidad de síntesis,Sistema Internacional de Unidades (SI), Vocabulario Internacional de Metrología (VIM),Principios fundamentales de gestión de calidad en Organismo de inspección.');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (17,1,1,5,'Coadyuvar, asistir y apoyar a jefatura regional y personal dependiente, en las labores de secretariado, ejecutándolas dentro de un marco de alta confiabilidad, responsabilidad, discreción y eficiencia. ','2 años','Secretaria(o) Ejecutiva (deseable), Comercial o Administrativa','Ingles ','SECRETARIA (O) JEFATURA','Sistema Internacional de Unidades (SI),Vocabulario Internacional de Metrología (VIM).');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (18,1,1,5,'Ejecutar y controlar las operaciones contables y administrativas específicas a nivel Institucional rigiéndose en las normas de contabilidad gubernamental y las leyes vigentes.','1 año','Licenciado en Auditoria, Administración de empresas, Contaduría Pública, Ing. Comercial y/o Industrial o ramas afines','Ingles ','RESPONSABLE ADMINISTRATIVO','Sistema Internacional de Unidades (SI),Vocabulario Internacional de Metrología (VIM),Saber conducir vehículos, contar con licencia de conducir (deseable).');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (19,5,1,5,'Ejercer control de la calidad del servicio que prestan los técnicos de la oficina regional, controlar el buen uso de los equipos y verificar la calibración y verificación de los instrumentos de medición','2 años','Ingeniero Mecánico, Electrónico, Industrial, Petrolero, Químico, Licenciatura en Física o ramas afines.','Dos idiomas oficiales del Estado Plurinacional de Bolivia,Ingles','SUPERVISOR ','Sistema Internacional de Unidades (SI),Vocabulario Internacional de Metrología (VIM),Principios fundamentales de Sistema de Gestión en Organismos de inspección (ISO/IEC17020:2012),Saber conducir vehículos, contar con licencia de conducir (deseable)');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (20,5,1,5,'Realizar óptimamente el control metrológico de instrumentos de medición involucrados en transacciones comerciales, salud y medio ambiente de acuerdo a procedimientos y reglamentos técnicos de Metrología Legal.','1 año','Mínimamente técnico Superior o Medio en Mecánica, Electrónica, Industrial, Petrolero, Química.','Dos idiomas oficiales del Estado Plurinacional de Bolivia.','TÉCNICO METROLOGO - REGIONAL COCHABAMBA','Sistema Internacional de Unidades (SI),Vocabulario Internacional de Metrología (VIM), Principios fundamentales de gestión de calidad en organismos de inspección,Saber conducir vehículos, contar con licencia de conducir.');

insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (21,1,2,5,'Representar y dirigir el proceso de gestión, planificación, organización, integración, control y evaluación del proceso administrativo, operativo, financiero, técnico e institucional de los servicios que ofrece la Regional','5 años','Profesional con Título en Provisión Nacional en Ciencias Económicas, Administrativa, Financiera o Ingeniería, Licenciatura en Física o ramas afines,Maestría en temas afines al cargo (deseable)','Dos idiomas oficiales del Estado Plurinacional de Bolivia,Ingles(Deseable)','JEFE REGIONAL - SANTA CRUZ','Capacidad Analítica,Capacidad de síntesis,Sistema Internacional de Unidades (SI), Vocabulario Internacional de Metrología (VIM),Principios fundamentales de gestión de calidad en Organismo de inspección.');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (22,1,2,5,'Coadyuvar, asistir y apoyar a Jefatura Regional y personal dependiente, en las labores de secretariado, ejecutándolas dentro de un marco de alta confiabilidad, responsabilidad, discreción y eficiencia.','2 años','Secretaria(o) Ejecutiva (deseable), Comercial o Administrativa.','Dos idiomas oficiales del Estado Plurinacional de Bolivia,Idioma Ingles (deseable).','SECRETARIA (O) JEFATURA REGIONAL - SANTA CRUZ','Sistema Internacional de Unidades (SI),Vocabulario Internacional de Metrología (VIM).S');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (23,5,2,5,'Ejercer control de la calidad del servicio que prestan los técnicos de la oficina regional, controlar el buen uso de los equipos y verificar la calibración y verificación de los instrumentos de medición involucrados',' 2 años','Ingeniero Mecánico, Electrónico, Industrial, Petrolero, Químico, Licenciatura en Física o ramas afines',' Dos idiomas oficiales del Estado Plurinacional de Bolivia.,Idioma Ingles (Deseable).','SUPERVISOR ','Sistema Internacional de Unidades (SI),Vocabulario Internacional de Metrología (VIM),Principios fundamentales de Sistema de Gestión en Organismos de inspección (ISO/IEC17020:2012),Saber conducir vehículos, contar con licencia de conducir (deseable) ');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (24,4,2,5,'Administrar y optimizar el uso de los Recursos Humanos, Materiales, Económicos y Financieros asignados a la Regional y coadyuvar la labor del Jefe Regional en el cumplimiento de objetivos','5 años','Egresado o Titulado en Administración de Empresas, Economía, Auditoría, Contaduría Pública, Ingeniero Industrial y/o Comercial.','Dos idiomas oficiales del Estado Plurinacional de Bolivia.','RESPONSABLE ADMINISTRATIVO','Sistema Internacional de Unidades (SI),Vocabulario Internacional de Metrología (VIM),Saber conducir vehículos, contar con licencia de conducir (deseable).');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (25,5,2,5,'Realizar óptimamente el control metrológico de instrumentos de medición involucrados en transacciones comerciales, salud y medio ambiente.','1 año','Técnico Superior o Medio en Mecánica, Electrónica, Industrial, Petrolero, Química','Dos idiomas oficiales del estado Plurinacional de Bolivia,Idioma Ingles (deseable).','TÉCNICO METROLOGO - REGIONAL SANTA CRUZ','Sistema Internacional de Unidades (SI),Vocabulario Internacional de Metrología (VIM), Principios fundamentales de gestión de calidad en organismos de inspección,Saber conducir vehículos, contar con licencia de conducir.');

insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (26,4,4,5,'Administrar y optimizar el uso de los Recursos Humanos, Materiales, Económicos y Financieros asignados a la Regional ','2 años','Egresado o Titulado en Administración de Empresas, Economía, Auditoría, Contaduría Pública,','Dos idiomas oficiales del Estado Plurinacional de Bolivia.,Idioma Ingles (Deseable).','TECNICO METROLOGO (ADMINISTRATIVO)','Sistema Internacional de Unidades (SI),Vocabulario Internacional de Metrología (VIM),Conocimiento del manejo del SIGMA.');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (27,5,4,5,'Realizar óptimamente el control metrológico de instrumentos de medición involucrados en transacciones comerciales, salud y medio ambiente.','1 año','Técnico Superior o Medio en Mecánica, Electrónica, Industrial, Petrolero, Química','Dos idiomas oficiales del estado Plurinacional de Bolivia,Idioma Ingles (deseable).','TÉCNICO METROLOGO - REGIONAL TARIJA','Sistema Internacional de Unidades (SI),Vocabulario Internacional de Metrología (VIM)');
insert into requirements(id, category_id,city_id,company_id,description, experience, academic,languages,name,knowledge)
values (28,5,5,5,'Realizar óptimamente el control metrológico de instrumentos de medición involucrados en transacciones comerciales, salud y medio ambiente.','1 año','Técnico Superior o Medio en Mecánica, Electrónica, Industrial, Petrolero, Química','Dos idiomas oficiales del estado Plurinacional de Bolivia,Idioma Ingles (deseable).','TÉCNICO METROLOGO - REGIONAL CHUQUISACA','Sistema Internacional de Unidades (SI),Vocabulario Internacional de Metrología (VIM)');

