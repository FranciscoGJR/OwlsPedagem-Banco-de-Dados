-- *********************************************
-- * SQL PostgreSQL generation                 
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.2              
-- * Generator date: Sep 20 2021              
-- * Generation date: Thu Dec 15 18:02:26 2022 
-- * LUN file: /home/notezandro/Desktop/BD-HOTEL-CARDINALIDADECERTA.lun 
-- * Schema: Certo/1-1 
-- ********************************************* 


-- Database Schema
-- ________________ 
create schema trabalhoowl;

-- Tables Section
-- _____________ 

create table trabalhoowl.Bike (
     id_bike serial not null,
     aro numeric(5,2) not null,
     cor varchar(50) not null,
     tem_rodinhas char not null,
     em_uso char(1) not null,
     id_hotel int not null,
     constraint ID_Bike primary key (id_bike, id_hotel));

create table trabalhoowl.Chatbot (
     nome_empresa varchar(255) not null,
     data_inico date not null,
     valor_pago numeric(7,2) not null,
     duracao date not null,
     constraint ID_Chatbot primary key (nome_empresa),
     constraint SID_Chatbot unique (data_inico));

create table trabalhoowl.Cliente (
     CPF_Cliente char(11) not null,
     RG char(9) not null,
     nome char(255) not null,
     telefone char(255) not null,
     email char(255) not null,
     data_de_cadastro date not null,
     data_nasc date not null,
     endereco varchar(255) not null,
     loc_numero varchar(30) not null,
     loc_cidade varchar(30) not null,
     loc_estado varchar(30) not null,
     loc_pais varchar(30) not null,
     constraint ID_Cliente_ID primary key (CPF_Cliente));

create table trabalhoowl.Cozinha (
     id_cozinha serial not null,
     valor_estoque numeric(7, 2) not null,
     funcionando char(1) not null,
     id_hotel int not null,
     constraint ID_Cozinha_ID primary key (id_cozinha));

create table trabalhoowl.Dependente (
     CPF_Dep varchar(11) not null,
     nome varchar(255) not null,
     relacao varchar(255) not null,
     CPF_Func varchar(11) not null,
     constraint ID_Dependente primary key (CPF_Dep));

create table trabalhoowl.Despesas (
     data_vencimento date not null,
     id_despesa numeric(3) not null,
     status varchar(30) not null,
     valor numeric(4,2) not null,
     pago_a varchar(15) not null,
     id_hotel int not null);

create table trabalhoowl.Teatro (
     nome varchar(20) not null,
     Atracao varchar(30) not null,
     Capacidade numeric(3) not null,
     data_evento date not null,
     Hora_evento varchar(6) not null,
     ingressos_disponiveis numeric(1) not null,
     conteudo_adulto char not null,
     constraint FKIns_Tea_ID primary key (nome));

create table trabalhoowl.Restaurante (
     nome varchar(20) not null,
     Especialidade varchar(30) not null,
     ticket_medio numeric(3,2) not null,
     tipo_servico varchar(20) not null,
     constraint FKIns_Res_ID primary key (nome));

create table trabalhoowl.Banco (
     nome varchar(20) not null,
     vinte_quatro_horas char not null,
     caixa_deposito char not null,
     retaguarda char not null,
     nmro_agencia varchar(20) not null,
     constraint FKIns_Ban_ID primary key (nome));

create table trabalhoowl.Espaco_de_Eventos (
     id_hotel int not null,
     capacidade numeric(5) not null,
     tipo varchar(30) not null,
     num_salas numeric(4) not null,
     constraint FKFornece_ID primary key (id_hotel));

create table trabalhoowl.Estacionamento (
     id_hotel int not null,
     vagas_disponiveis numeric(5) not null,
     vagas_totais numeric(5) not null,
     constraint FKEstaciona_ID primary key (id_hotel));

create table trabalhoowl.Eventos (
     evento_nome varchar(255) not null,
     data date not null,
     hora_inicio varchar(50) not null,
     hora_fim varchar(50) not null,
     descricao varchar(255) not null,
     convidados numeric(5) not null,
     id_hotel int not null,
     constraint ID_Eventos primary key (evento_nome),
     constraint SID_Eventos_1 unique (data),
     constraint SID_Eventos unique (hora_inicio));

create table trabalhoowl.Funcionario (
     CPF_Func varchar(11) not null,
     cargo varchar(50) not null,
     nome varchar(30) not null,
     data_nascimento date not null,
     contato varchar(255) not null,
     salario numeric(8,2) not null,
     sexo varchar(10) not null,
     tipo_contrato varchar(10) not null,
     endereco varchar(30) not null,
     setor_nome varchar(255),
     constraint ID_Funcionario primary key (CPF_Func));

create table trabalhoowl.Hotel (
     id_hotel serial not null,
     CNPJ varchar(20) not null,
     nome_fantasia char(255) not null,
     area numeric(7,2) not null,
     caixa_total numeric(10,2) not null,
     data_abertura date not null,
     loc_cidade char(255) not null,
     loc_estado char(255) not null,
     loc_pais char(255) not null,
     loc_numero numeric(6) not null,
     loc_complemento char(255) not null,
     ticket_medio numeric(10,2) not null,
     num_funcionarios numeric(5) not null,
     num_hospedes numeric(5) not null,
     ocupacao_maxima numeric(5) not null,
     possui_cafe char not null,
     possui_wifi char not null,
	 tipo varchar(30) not null,
     categoria varchar(255) not null,
     constraint ID_Hotel_ID primary key (id_hotel));

create table trabalhoowl.Instalacoes (
     nome varchar(20) not null,
     valor_aluguel numeric(5,2) not null,
     Horario_Funcionamento varchar(40) not null,
     Teatro varchar(20),
     Restaurante varchar(20),
     Banco varchar(20),
     id_hotel int not null,
     constraint ID_Instalacoes primary key (nome));

create table trabalhoowl.Lava_Jato (
     id_hotel int not null,
     placa_carro varchar(50) not null,
     categoria_lavagem varchar(10) not null,
     constraint FKOferta_ID primary key (id_hotel));

create table trabalhoowl.Lobby (
     id_hotel int not null,
     area_m numeric(3,2) not null,
     areas_disponiveis numeric(2,0) not null,
     areas_totais numeric(2,0) not null,
     valor_em_aluguel numeric(5,2) not null,
     constraint FKDispoe_ID primary key (id_hotel));

create table trabalhoowl.Nota_Fiscal (
     id_nota serial not null,
     id_reserva int not null,
     valor numeric(8,2) not null,
     metodo_de_pagamento varchar(15) not null,
     id_hotel int not null,
     constraint ID_Nota_Fiscal primary key (id_nota),
     constraint FKGera_ID unique (id_reserva));

create table trabalhoowl.Oferece (
     id_cozinha int not null,
     id_servico int not null,
     constraint ID_Oferece primary key (id_cozinha, id_servico));

create table trabalhoowl.Piscinas (
     id_hotel int not null,
     manutencao char not null,
     capacidade numeric(4) not null,
     status_limpeza varchar(30) not null,
     constraint FKTem_ID primary key (id_hotel));

create table trabalhoowl.Prod_Entrada (
     cod_entrada serial not null,
     qtd numeric(7,2) not null,
     cod_produto int not null,
     constraint ID_Prod_Entrada primary key (cod_entrada));

create table trabalhoowl.Prod_Saida (
     cod_saida serial not null,
     qtd numeric(7,2) not null,
     cod_produto int not null,
     constraint ID_Prod_Saida primary key (cod_saida));

create table trabalhoowl.Produto (
     cod_produto serial not null,
     qtd_atual numeric(7,2) not null,
     qtd_min numeric(7,2) not null,
     descricao char(255) not null,
     id_cozinha int not null,
     constraint ID_Produto_ID primary key (cod_produto));

create table trabalhoowl.Programa_de_Fidelidade (
     CPF_Cliente char(11) not null,
     qtd_reservas numeric(4) not null,
     pontos numeric(6) not null,
     constraint FKFideliza_ID primary key (CPF_Cliente));

create table trabalhoowl.Quarto (
     numero_quarto numeric(4) not null,
     tipo char(255) not null,
     status varchar(30) not null,
     manutencao char not null,
     ultima_limpeza date not null,
     num_cama_casal numeric(1) not null,
     num_cama_solteiro numeric(1) not null,
     id_hotel int not null,
     constraint ID_Quarto_ID primary key (numero_quarto, id_hotel));

create table trabalhoowl.Requisicoes (
     id_req numeric(3) not null,
     Classificacao varchar(255) not null,
     Campo_livre varchar(255) not null,
     status varchar(30) not null,
     data_abertura date not null,
     data_fim date not null,
     CPF_Cliente char(11) not null,
     CPF_Func varchar(11) not null,
     constraint ID_Requisicoes primary key (id_req));

create table trabalhoowl.Reserva (
     id_reserva serial not null,
     data_entrada date not null,
     data_saida date not null,
     valor numeric(7,2) not null,
     cafe_da_manha char not null,
     id_hotel int not null,
     numero_quarto numeric(4) not null,
     CPF_Cliente char(11) not null,
     constraint ID_Reserva_ID primary key (id_reserva));

create table trabalhoowl.Servico_de_Quarto (
     id_servico serial not null,
     valor numeric(7,2) not null,
     pedido char(255) not null,
     quarto numeric(4) not null,
     id_reserva int not null,
     constraint ID_Servico_de_Quarto_ID primary key (id_servico));

create table trabalhoowl.Servicos_Medicos (
     id_hotel int not null,
     horario_de_func varchar(50) not null,
     qtd_band_aid numeric(5) not null,
     qtd_dipirona numeric(5) not null,
     qtd_medicos numeric(5) not null,
     constraint FKOferece__ID primary key (id_hotel));

create table trabalhoowl.Setor (
     setor_nome varchar(255) not null,
     CPF_Func varchar(11) not null,
     numero numeric(4) not null,
     localizacao varchar(255) not null,
     id_hotel int not null,
     constraint ID_Setor_ID primary key (setor_nome),
     constraint FKGerencia_ID unique (CPF_Func, id_hotel));

create table trabalhoowl.Uso_Da_Bike (
     id_bike int not null,
	 id_hotel int not null,
     CPF_Cliente char(11) not null,
     data_retirada timestamp not null,
     data_devolucao timestamp,
     constraint ID_Uso_Da_Bike primary key (id_bike, CPF_Cliente));

create table trabalhoowl.Vaga (
     num_vaga serial not null,
     setor varchar(255) not null,
     status varchar(30) not null,
     veiculo varchar(255) not null,
     id_hotel int not null,
     CPF_Cliente char(11) not null,
     Per_id_hotel int not null,
     constraint ID_Vaga primary key (num_vaga),
     constraint SID_Vaga unique (setor, num_vaga));


-- Constraints Section
-- ___________________ 

alter table trabalhoowl.Bike add constraint FKAluga__FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel ON DELETE CASCADE;

alter table  trabalhoowl.Cozinha add constraint FKHC_Possui_FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel ON DELETE CASCADE;

alter table  trabalhoowl.Dependente add constraint FKDepende_FK
     foreign key (CPF_Func)
     references trabalhoowl.Funcionario;

alter table  trabalhoowl.Despesas add constraint FKPaga_FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel;

alter table  trabalhoowl.Teatro add constraint FKIns_Tea_FK
     foreign key (nome)
     references trabalhoowl.Instalacoes;

alter table  trabalhoowl.Restaurante add constraint FKIns_Res_FK
     foreign key (nome)
     references trabalhoowl.Instalacoes;

alter table  trabalhoowl.Banco add constraint FKIns_Ban_FK
     foreign key (nome)
     references trabalhoowl.Instalacoes;

alter table  trabalhoowl.Espaco_de_Eventos add constraint FKFornece_FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel ON DELETE CASCADE;

alter table  trabalhoowl.Estacionamento add constraint FKEstaciona_FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel ON DELETE CASCADE;

alter table  trabalhoowl.Eventos add constraint FKSedia_FK
     foreign key (id_hotel)
     references trabalhoowl.Espaco_de_Eventos ON DELETE CASCADE;

alter table  trabalhoowl.Funcionario add constraint FKTrabalha_FK
     foreign key (setor_nome)
     references trabalhoowl.Setor;

alter table  trabalhoowl.Instalacoes add constraint EXCL_Instalacoes
     check((Banco is not null and Restaurante is null and Teatro is null)
           or (Banco is null and Restaurante is not null and Teatro is null)
           or (Banco is null and Restaurante is null and Teatro is not null)
           or (Banco is null and Restaurante is null and Teatro is null)); 

alter table  trabalhoowl.Instalacoes add constraint FKhabita_FK
     foreign key (id_hotel)
     references trabalhoowl.Lobby ON DELETE CASCADE;

alter table  trabalhoowl.Lava_Jato add constraint FKOferta_FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel ON DELETE CASCADE;

alter table  trabalhoowl.Lobby add constraint FKDispoe_FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel ON DELETE CASCADE;

alter table  trabalhoowl.Nota_Fiscal add constraint FKGera_FK
     foreign key (id_reserva)
     references trabalhoowl.Reserva;

alter table  trabalhoowl.Nota_Fiscal add constraint FKEmite_FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel ON DELETE CASCADE;

alter table  trabalhoowl.Oferece add constraint FKOfe_Ser_FK
     foreign key (id_servico)
     references trabalhoowl.Servico_de_Quarto;

alter table  trabalhoowl.Oferece add constraint FKOfe_Coz
     foreign key (id_cozinha)
     references trabalhoowl.Cozinha;

alter table  trabalhoowl.Piscinas add constraint FKTem_FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel ON DELETE CASCADE;

alter table  trabalhoowl.Prod_Entrada add constraint FKEntrada_FK
     foreign key (cod_produto)
     references trabalhoowl.Produto;

alter table  trabalhoowl.Prod_Saida add constraint FKSaida_FK
     foreign key (cod_produto)
     references trabalhoowl.Produto;

alter table  trabalhoowl.Produto add constraint FKGuarda_FK
     foreign key (id_cozinha)
     references trabalhoowl.Cozinha;

alter table  trabalhoowl.Programa_de_Fidelidade add constraint FKFideliza_FK
     foreign key (CPF_Cliente)
     references trabalhoowl.Cliente;

alter table  trabalhoowl.Quarto add constraint FKPossui_FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel ON DELETE CASCADE;

alter table  trabalhoowl.Requisicoes add constraint FKGera__FK
     foreign key (CPF_Cliente)
     references trabalhoowl.Cliente;

alter table  trabalhoowl.Requisicoes add constraint FKAtende_FK
     foreign key (CPF_Func)
     references trabalhoowl.Funcionario;

alter table  trabalhoowl.Reserva add constraint FKReserva_H_FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel ON DELETE CASCADE;

alter table  trabalhoowl.Reserva add constraint FKReserva_FK
     foreign key (numero_quarto, id_hotel)
     references trabalhoowl.Quarto;

alter table  trabalhoowl.Reserva add constraint FKFaz_FK
     foreign key (CPF_Cliente)
     references trabalhoowl.Cliente;

alter table  trabalhoowl.Servico_de_Quarto add constraint FKAgrega_preco_FK
     foreign key (id_reserva)
     references trabalhoowl.Reserva;

alter table  trabalhoowl.Servicos_Medicos add constraint FKOferece__FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel ON DELETE CASCADE;

alter table  trabalhoowl.Setor add constraint FKGerencia_FK
     foreign key (CPF_Func)
     references trabalhoowl.Funcionario;

alter table  trabalhoowl.Setor add constraint FKFunciona_FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel ON DELETE CASCADE;

alter table  trabalhoowl.Uso_Da_Bike add constraint FKUso_Cli_FK
     foreign key (CPF_Cliente)
     references trabalhoowl.Cliente;

alter table  trabalhoowl.Uso_Da_Bike add constraint FKUso_Bik
     foreign key (id_hotel, id_bike)
     references trabalhoowl.Bike;

alter table  trabalhoowl.Vaga add constraint FKMantem_FK
     foreign key (id_hotel)
     references trabalhoowl.Hotel ON DELETE CASCADE;

alter table  trabalhoowl.Vaga add constraint FKAluga_FK
     foreign key (CPF_Cliente)
     references trabalhoowl.Cliente;

alter table  trabalhoowl.Vaga add constraint FKPertence_FK
     foreign key (Per_id_hotel)
     references trabalhoowl.Estacionamento;


-- Index Section
-- _____________ 

create index FKAluga__IND
     on trabalhoowl.Bike (id_hotel);

create index FKHC_Possui_IND
     on trabalhoowl.Cozinha (id_hotel);

create index FKDepende_IND
     on trabalhoowl.Dependente (CPF_Func);

create index FKPaga_IND
     on trabalhoowl.Despesas (id_hotel);

create index FKSedia_IND
     on trabalhoowl.Eventos (id_hotel);

create index FKTrabalha_IND
     on trabalhoowl.Funcionario (setor_nome);

create index FKhabita_IND
     on trabalhoowl.Instalacoes (id_hotel);

create index FKEmite_IND
     on trabalhoowl.Nota_Fiscal (id_hotel);

create index FKOfe_Ser_IND
     on trabalhoowl.Oferece (id_servico);

create index FKEntrada_IND
     on trabalhoowl.Prod_Entrada (cod_produto);

create index FKSaida_IND
     on trabalhoowl.Prod_Saida (cod_produto);

create index FKGuarda_IND
     on trabalhoowl.Produto (id_cozinha);

create index FKPossui_IND
     on trabalhoowl.Quarto (id_hotel);

create index FKGera__IND
     on trabalhoowl.Requisicoes (CPF_Cliente);

create index FKAtende_IND
     on trabalhoowl.Requisicoes (CPF_Func);

create index FKReserva_H_IND
     on trabalhoowl.Reserva (id_hotel);

create index FKReserva_IND
     on trabalhoowl.Reserva (numero_quarto);

create index FKFaz_IND
     on trabalhoowl.Reserva (CPF_Cliente);

create index FKAgrega_preco_IND
     on trabalhoowl.Servico_de_Quarto (id_reserva);

create index FKFunciona_IND
     on trabalhoowl.Setor (id_hotel);

create index FKUso_Cli_IND
     on trabalhoowl.Uso_Da_Bike (CPF_Cliente);

create index FKMantem_IND
     on trabalhoowl.Vaga (id_hotel);

create index FKAluga_IND
     on trabalhoowl.Vaga (CPF_Cliente);

create index FKPertence_IND
     on trabalhoowl.Vaga (Per_id_hotel);
