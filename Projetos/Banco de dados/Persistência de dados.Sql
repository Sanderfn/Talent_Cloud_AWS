-- inserção de dados e queries
use Te_Achei;

desc cliente;

insert into cliente ( Nome, Sobrenome, CPF, logradouro, Número, Bairro, Cidade, Estado ,País)
	values('Maria','Neves',12345678901,'Rua Santa Rita',29,'Jacuí','João Monlevade','MG','Brasil'),
		  ('Antônio','Souza',45678912345,'Rua Juazeiro',100,'Satelite','João Monlevade','MG','Brasil'),
		  ('Joaquim','Cruz',78912345678,'Rua Parauna',78,'Castelo','João Monlevade','MG','Brasil'),
		  ('José','Silva',78456952135,'Rua Jequitibá',62,'Santa Barbara','João Monlevade','MG','Brasil');

select * from cliente;

desc Prestadores_serviço;

select * from Prestadores_serviço;

insert into Prestadores_serviço( Nome_do_Prestador, Sobrenome_do_Prestador, CPF, Área_de_Atuação,Data_de_vinculação,Data_de_aniversário, logradouro, Número, Bairro, Cidade, Estado ,País)
	values('Maria','Souza',75486214598,'Cozinheira','2010-05-03','1976-05-12','Rua Ponte Nova',1001,'Belvedere','João Monlevade','MG','Brasil'),
		  ('Antônio','Barbosa',25478134896,'Eletricista','2012-01-09','1982-03-29','Rua Belém',356,'Praia','João Monlevade','MG','Brasil'),
		  ('Joaquim','Melo',74521547896,'Encanador','2013-07-21','1983-08-29','Rua Contagem',29,'Pará','João Monlevade','MG','Brasil'),
		  ('José','Florisval',24563217894,'Jardinagem','2014-09-15','1993-04-20','Rua Betim',47,'Ipiranga','João Monlevade','MG','Brasil');
          
desc serviços;

select * from serviços; 

insert into serviços (NomeServiço,ValorServiço,Tiposerviço) 
		values('Refeição para 100 pessoas',150.00,'Cozinheira'),
			  ('Troca de chuveiro 127 volts 5.500Wats',60.00,'Eletricista'),
              ('Troca de torneira',20.00,'Encanador'),
              ('Troca de boía de reservatório',80.00,'Encanador'),
              ('Limpeza de piscina de 20.000 litros',120.00,'limpeza de piscinas'),
              ('Aparar grama diária',100.00,'Jardinagem');
              
desc ordemServiço;
select * from ordemServiço;
insert into ordemServiço(statusServiço,data_da_solicitação,data_da_Entrega,idOSPrestador,idOSCliente) 
		value('Concluído','2023-02-06','2023-03-16','1','1'),
			 ('Concluído','2023-02-24','2023-03-01','2','2'),
			 ('Em execução','2023-02-28','2023-03-01','4','3'),
		     ('Concluído','2023-03-01','2023-03-05','3','1'),
			 ('Em agendamento','2023-03-01','2023-03-16','3','4');    
             
desc OSPrestador;
select * from OSPrestador;  
insert into OSPrestador(idOSPrestador,idOSfServiços) 
		value(1,1),
			 (2,2),
			 (4,3),
             (3,4),
             (3,5);
             
desc OSServiços;
select * from OSServiços;     
insert into OSServiços(idOSSServiços,idSServiços) 
		value(1,7),
			 (2,8),
			 (3,12),
             (4,10),
             (5,9);             
             
desc OScliente;
select * from OScliente;
insert into OScliente(idOSCServiço,idOSCCliente) 
		value(1,1),
			 (2,2),
			 (3,3),
             (5,1),
             (4,4);
             
Show Databases;
desc Te_Achei;
             
-- Quantos clientes existem na base de dados?
select count(*) from Cliente;

-- Quantos prestadores de serviço existem na base de dados?
select count(*) from Prestadores_serviço;

-- Quantas ordens de serviço estão cadastradas?
select count(*) from ordemServiço;

-- Quantas ordens de serviços estão relacionadas a revisão e a manutenção?
select count(*) Tiposerviço from serviços where Tiposerviço = 'Manutenção';

-- Quantas ordens de serviços estão relacionadas a revisão?
select count(*) Tiposerviço from serviços where Tiposerviço = 'revisão';

-- Retorne quantas ordens de serviços estão em análise e em execução na tabela ordem de serviço?
select statusServiço, count(*)As record_count from ordemServiço where statusServiço GROUP BY statusServiço;

-- Retorne quantas ordens de serviços estão em análise e em execução na tabela ordem de serviço?
select statusServiço, count(*)As record_count from ordemServiço where statusServiço GROUP BY statusServiço;

-- Reajuste o valor dos produtos Pneu Pirelli em R$ 20.00, Pneu Goodyear em R$ 10.00 e da Lãmpada de Farol em R$ 5.00
update estoque set valorProduto =
	case
		when idEProduto = 1 then valorProduto + 20
		when idEProduto = 2 then valorProduto + 10
		when idEProduto = 5 then valorProduto + 5
        else valorProduto + 0
        end;