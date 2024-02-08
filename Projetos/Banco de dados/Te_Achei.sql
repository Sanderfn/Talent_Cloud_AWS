create database Te_Achei;
-- drop database Te_Achei;
use Te_Achei;

create table Cliente(
	idCliente int auto_increment primary key,
    Nome varchar(10),
    Sobrenome varchar(20),
    CPF char(11) not null,
    logradouro varchar(45),
    Número int not null,
    Bairro varchar(45),
    Cidade varchar(15),
    Estado Varchar(10),
    País Varchar(10),
    constraint unique_cpf_client unique (CPF)
    );

create table Prestadores_serviço(
	idPrestador int auto_increment primary key,
    Nome_do_Prestador varchar(45),
    Sobrenome_do_Prestador varchar(20),
    CPF VARCHAR(11) not null,
    Área_de_Atuação varchar(45),
    Data_de_vinculação date,
    Data_de_aniversário date,
    logradouro varchar(30),
    Número char(4),
    Bairro varchar(45),
    Cidade varchar(45),
    Estado char(2),
    País Varchar(45),
    constraint unique_cpf_prestadores_servico unique (CPF)
    );
   
    create table Serviços(
	IdServiço int auto_increment primary key,
    NomeServiço varchar(45) not null,
    ValorServiço float,
	Tiposerviço enum('Carpintaria','Construção Cívil','Cozinheira','Eletricista','Encanador','Jardinagem','limpeza de piscinas')
    );
      
create table ordemServiço(
	idOServiço int auto_increment primary key,
    statusServiço enum('Em agendamento', 'Em execução', 'Concluído') default 'Em agendamento',
	data_da_solicitação date,
    data_da_Entrega date,   
    idOSPrestador int,
    idOSCliente int,
    constraint fk_ordemServiço_Prestador foreign key (idOSPrestador) references Prestadores_serviço(idPrestador),
    constraint fk_ordemServiço_Cliente foreign key (idOSCliente) references Cliente(idCliente)
);
      
    create table OSPrestador(
	idOSPrestador int,
	idOSfServiços int,
    primary key(idOSPrestador,idOSfServiços),
    constraint fk_idOSPrestador_Prestadores_serviço foreign key (idOSPrestador) references Prestadores_serviço(idPrestador),
    constraint fk_idOSPrestador_Serviços foreign key (idOSfServiços) references Serviços(idServiço) 
); 
         
create table OSCliente(
	idOSCServiço int,
	idOSCCliente int,
    primary key(idOSCServiço,idOSCCliente),
    constraint fk_OSCliente_OSCServiço foreign key (idOSCServiço) references ordemServiço(idOServiço),
    constraint fk_OSCliente_OSCCliente foreign key (idOSCCliente ) references Cliente(idCliente)
   );  

create table OSServiços(
	idOSSServiços int,
    idSServiços int,
    primary key(idOSSServiços,idSServiços),
	constraint fk_OSServiços_OrdemServiço foreign key (idOSSServiços) references ordemServiço(idOServiço),
	constraint fk_OSServiços_Serviços foreign key (idSServiços) references Serviços(IdServiço)
);

