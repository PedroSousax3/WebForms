-- ------------------------------ CRIAÇÃO DE TABELAS ------------------------------------------

DROP TABLE IF EXISTS tb_login;
DROP TABLE IF EXISTS tb_cliente;

CREATE TABLE tb_login (
    id_login				int NOT NULL IDENTITY,
    nm_usuario				varchar(100) NOT NULL UNIQUE,
    ds_senha				varchar(128),
    dt_ultimo_login			datetime,
    PRIMARY KEY (id_login)
);

CREATE TABLE tb_cliente (
	id_cliente				INT NOT NULL IDENTITY,
	id_login				INT NOT NULL UNIQUE,
	nm_cliente				VARCHAR(100) NOT NULL,
	ds_email				VARCHAR(150) NOT NULL UNIQUE,
	ds_cpf					VARCHAR(20) NOT NULL UNIQUE,
	dt_nascimento			DATETIME NOT NULL,
	PRIMARY KEY(id_cliente),
	CONSTRAINT id_login FOREIGN KEY (id_login) REFERENCES tb_login (id_login)
);

-- ------------------------------ CRIAÇÃO DE TABELAS ------------------------------------------

-- INSERIR CLIENTE 
DROP PROCEDURE IF EXISTS sp_inserir_cliente;
CREATE PROCEDURE sp_inserir_cliente
( 
	@id_login			AS INT, 
	@nome				AS VARCHAR(100), 
	@email				AS VARCHAR(150), 
	@cpf				AS VARCHAR(20), 
	@nascimento			AS DATETIME
)
AS
INSERT INTO tb_cliente (id_login, nm_cliente, ds_email, ds_cpf, dt_nascimento)
				VALUES (@id_login, @nome, @email, @cpf, @nascimento);

--	LISTAR CLIENTES
DROP PROCEDURE IF EXISTS sp_listar_clientes;
CREATE PROCEDURE sp_listar_clientes
AS
SELECT *
  FROM tb_cliente

-- CONSULTAR CLIENTE
DROP PROCEDURE IF EXISTS sp_consultar_cpf_cliente;
CREATE PROCEDURE sp_consultar_cpf_cliente
(@cpf AS VARCHAR(20))
AS
SELECT *
  FROM tb_cliente
 WHERE ds_cpf = @cpf

-- ALTERAR CLIENTE 
DROP PROCEDURE IF EXISTS sp_alterar_cliente
CREATE PROCEDURE sp_alterar_cliente 
( 
	@idcliente			AS INT,
	@nome				AS VARCHAR(100), 
	@email				AS VARCHAR(150), 
	@cpf				AS VARCHAR(20), 
	@nascimento			AS DATETIME
)
AS
UPDATE tb_cliente 
SET 
	nm_cliente = @nome,
	ds_email = @email, 
	ds_cpf = @cpf, 
	dt_nascimento = @nascimento
WHERE id_cliente = @idcliente
	

-- REMOVER CLIENTE
DROP PROCEDURE IF EXISTS sp_remover_cliente 
CREATE PROCEDURE sp_remover_cliente 
(@idcliente AS INT)
AS
DELETE FROM tb_cliente WHERE id_cliente = @idcliente

-- INSERIR LOGIN
DROP PROCEDURE IF EXISTS sp_inserir_login
CREATE PROCEDURE sp_inserir_login
(
	@usuario			AS VARCHAR(100),
	@senha				AS VARCHAR(128),
	@ultimologin		AS DATETIME
)
AS
INSERT INTO tb_login (nm_usuario, ds_senha, dt_ultimo_login)
			  VALUES (@usuario, @senha, @ultimologin)

-- LISTAR LOGINS
DROP PROCEDURE IF EXISTS sp_listar_login
CREATE PROCEDURE sp_listar_login
AS
SELECT * 
  FROM tb_login;

-- CONSULTAR USUARIO
DROP PROCEDURE IF EXISTS sp_consular_usuario
CREATE PROCEDURE sp_consulatar_usuario
(
	@usuario			VARCHAR(100),
	@senha				VARCHAR(128)
)
AS
	SELECT id_cliente, nm_cliente, nm_usuario, ds_senha, dt_ultimo_login
	  FROM tb_cliente				c
INNER JOIN tb_login			l
		ON c.id_login	= l.id_login
	 WHERE 
		(@usuario = c.ds_email OR @usuario = l.nm_usuario) 
		AND 
		@senha = l.ds_senha