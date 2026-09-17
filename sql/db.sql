create database AdocaoDB;
use AdocaoDB;

create table animal(
animalID int auto_increment primary key not null,
animalNome varchar(100) not null,
animalEspecie varchar(100) not null,
animalDescricao varchar(100) not null,
animalIdade int not null,
animalDataEntrada date not null,
animalSexo enum('Masculino', 'Feminino')
);

create table adotante(
adotanteID int auto_increment primary key not null,
adotanteNome varchar(200) not null,
adotanteCpf varchar(20) unique not null,
adotanteEndereco varchar(200) not null,
adotanteEmail varchar(50) not null,
adotanteTelefone varchar(40) not null,
adotantePossuiPets boolean not null
);

create table pedido(
pedidoID int auto_increment primary key not null,
pedidoData date not null,
pedidoStatus enum('Analise','Aprovado', 'Rejeitado', 'Cancelado'),
pedidoAnimalIDFK int not null,
pedidoAdotanteIDFK int not null,
foreign key (pedidoAnimalIDFK) references animal(animalID),
foreign key (pedidoAdotanteIDFK) references adotante(adotanteID)
);

create table usuario(
usuarioID int auto_increment primary key not null,
usuarioNome varchar(100) not null,
usuarioEmail varchar(100) not null,
usuarioSenha varchar(100) not null,
usuarioAcesso varchar(300) not null
);
create table historicoMedico(
historicoMedicoID int auto_increment primary key not null,
historicoMedicoAnimalIDFK int not null,
historicoMedicoData date not null,
historicoMedicoRealizacao enum('Consulta','Vacinação','Castração'),
foreign key (historicoMedicoAnimalIDFK) references animal(animalID)
);