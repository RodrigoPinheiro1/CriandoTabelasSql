

create database cadastro 
default character set utf8  
default collate utf8_general_ci;


use  cadastro;

CREATE TABLE pessoas (
    idPessoas INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M', 'F'),
    peso DECIMAL(5 , 2 ),
    altura DECIMAL(3 , 2 ),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (idPessoas)
)  DEFAULT CHARSET=UTF8;
 
 
 
 
insert  into pessoas (nome,nascimento,sexo,peso,altura,nacionalidade) 
values  ('saci','1999-02-02','M','100.75','1.25','Brasil' );

select * from pessoas; 

SELECT 
    *
FROM
    pessoas
WHERE
    idPessoas = '1';

SELECT 
    nome, nascimento
FROM
    pessoas
WHERE
    idPessoas = '1';

desc pessoas; /* descreve os campos*/

alter table pessoas
add column profissao varchar (10) after nome; /*adiciona uma coluna em uma tabela*/

alter table pessoas
drop column profissao;  /*Apaga uma coluna especifica */

alter table pessoas
add  codigo varchar (10) first ; /*campo vai para a primeiro*/

alter table pessoas
modify profissao varchar (20) not null default ''; /* modifica o tipo a coluna */

alter table pessoas
change  profissao prof varchar(20);  /* change troca o nome da coluna e o tipo */

alter table pessoas
rename to gafanhotos;  /*troca o nome da tabela */

desc gafanhotos;

 /* configura caracteres */













);