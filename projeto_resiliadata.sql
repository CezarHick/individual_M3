CREATE DATABASE RESILIADATA;
USE RESILIADATA;

CREATE TABLE empresa 
( 
    id_empresa INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,  
    nome_empresa VARCHAR(100) NOT NULL,  
    endereco VARCHAR(100) NOT NULL,  
    telefone VARCHAR(15) NOT NULL
); 

CREATE TABLE colaborador
( 
    id_colaborador INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,  
    nome VARCHAR(100) NOT NULL,  
    cargo VARCHAR(100) NOT NULL,  
    id_empresa INT NOT NULL 
); 

CREATE TABLE tecnologias
( 
    id_tecnologias INT NOT NULL PRIMARY KEY AUTO_INCREMENT,  
    area VARCHAR(100) NOT NULL,  
    nome_tecnologia VARCHAR(100) NOT NULL
); 

CREATE TABLE tecnologia_empresa 
( 
    id_emp_tecnologia INT NOT NULL PRIMARY KEY AUTO_INCREMENT,  
    id_empresa INT NOT NULL,  
    id_tecnologias INT NOT NULL,  
    nivel_utilizacao INT NOT NULL  
); 


ALTER TABLE tecnologia_empresa ADD FOREIGN KEY(id_empresa) REFERENCES empresa (id_empresa);
ALTER TABLE tecnologia_empresa ADD FOREIGN KEY(id_tecnologias) REFERENCES tecnologias (id_tecnologias);
ALTER TABLE colaborador ADD FOREIGN KEY(id_empresa) REFERENCES empresa (id_empresa);


INSERT INTO empresa(nome_empresa, endereco, telefone) 
VALUES 
('Umbrella', '71 Casa da Bruxa', '2289-6765'),
('Xurraskin', '371 Lalaland', '3245-4324');

INSERT INTO tecnologias(area, nome_tecnologia) 
VALUES 
('Web Development', 'HTML/CSS'),
('Data Science', 'Python');

INSERT INTO colaborador(nome, cargo, id_empresa) 
VALUES 
('Will Smith', 'Developer', 1),
('Taylor Swift', 'Data Scientist', 2);

INSERT INTO tecnologia_empresa(id_empresa, id_tecnologias, nivel_utilizacao, id_emp_tecnologia) 
VALUES 
(1, 1, 1, 4),
(2, 1, 2, 3),
(3, 2, 1, 5),
(4, 2, 2, 2);
