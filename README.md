<h1 align="center"> SQL para Desenvolvedores</h1>

<p align="center">Conteúdo completo sobre SQL</p>

<p align="center">
  <a href="#-iniciando-no-mundo-sql">Iniciando no mundo SQL</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-ambiente">Ambiente</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-hands-on-sql-básico">Hands-On-SQL</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-base-de-conhecimentos">Base de conhecimentos</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-clásulas-e-operadores">Clásulas e operadores</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-joins">Joins</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-transações">Transações</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-t-sql">T-SQL</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-backup">Backup</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-tips-tricks">Tips-Tricks</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-encerramento">Encerramento</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
</p>

<p align="center">
  <img alt="License" src="https://img.shields.io/static/v1?label=license&message=MIT&color=49AA26&labelColor=000000">
</p>

## 🚀 Iniciando no mundo SQL

Para iniciar vamos aprender o conteúdo abaixo:

### O que é SQL

SQL (Structure Query Language), significa Linguagem de Consulta Estruturada.\
A linguagem SQL é usada para gerenciar banco de dados e execultar operações nele.\
As instruções SQL são usadas para executar tarefas como _inserir, atualizar, remover_ e _recuperar_ dados de um banco de dados.

### O que é SQL Server

SQL Server é um Sistem Gerenciador de Banco de Dados Relacionais, é de propriedade da Microsoft e é disponibilizado em versões.

- SQL Server Express\
É gratiuiro para usar, ideal para aplicações de pequeno porte, pode ser usada na arquitetura cliente-servidor, tem um limite de 10Gb/banco, tem uma versão mais leve do banco de dados.

- SQL Server Developer\
É uma versão completa,tem licença, só pode ser usado em ambiente de desenvolvimento (ou seja, não dá para usar em ambiente de produção).

- SQL Server Web\
Versão focada na internet, é mais performática do que a versão express tem limite de 64Gb/banco.

- SQL Server Standard\
2x melhor que a versão web, oferece backup criptografado 128Gb/banco.

- SQL Server Enterprise\
Versão mais completa

- SQL Server Cloud\
Serviço do SQL Server em nuvem, ex: Microsoft Azure, Amazon Web Services, Google Cloud Plataform

### Modelo Relacional

É uma forma de representar os dados e informações em tabelas que se relacionam entre si.\
Nessa tabelas cada coluna só pode receber um tipo de dado, por exemplo se a primeira coluna for do tipo inteiro, essa coluna não pode receber outro tipo de dados como string ou datetime, apenas inteiro.\
Ex:

![image](https://user-images.githubusercontent.com/80548321/215465980-f00157a7-c824-4f11-808e-935c61760ac9.png)

Essas várias tabelas ficam savas em um banco de dados e podem se relacionar de 3 maneiras: Um pra um (1..1), um pra muitos (1..N), e muitos pra muitos (N..N).

Exemplo de relacionamentos:

- 1..1\
Um governador só pode governar um estado, assim como um estado só pode ter um governador.
![image](https://user-images.githubusercontent.com/80548321/215466554-8a4c1b32-5968-47e2-87c3-d9190e8c6d13.png)

- 1..N\
Em um estado pode ter muitas cidades, mas uma cidade só pode pertecer a um estado.
![image](https://user-images.githubusercontent.com/80548321/215467016-51fa6fa5-dd2f-46d7-8be8-28b99ee4b3e0.png)

- N..N\
Um aluno pode se matricular em vários cursos e um curso pode ter vários alunos matriculados nele.
![image](https://user-images.githubusercontent.com/80548321/215467374-7e143469-b991-46e2-a160-8c51acd8f007.png)

- O que é um banco de dados
- O que é uma tabela
- O que é uma chave primária
- O que é uma chave estrangeira
- O que é T-SQL

## 💻 Ambiente

### SQL Server e Azure Data Studio

- [SQL Server](https://www.microsoft.com/pt-br/sql-server/sql-server-downloads)
- [Azure](https://learn.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver16&culture=pt-br&country=br&tabs=redhat-install%2Credhat-uninstall)

## 💻 Hands-On-SQL básico

### Criando um banco de dados

```SQL
--Criar um banco de dados
CREATE DATABASE DesenvolvedorIO;

--Deletar um banco de dados
DROP DATABASE DesenvolvedorIO;

--Força o banco de dados a ser acessado por apenas um usuário simples, isso permite que o banco
--seja dropado depois que um ou mais usuários já logaram nele.
ALTER DATABASE DesenvolvedorIO SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

--Cria um banco de dados e seu respectivo banco de logo em um caminho específico no sistema
CREATE DATABASE DesenvolvedorIO
ON (name = 'Dev_msf', FILENAME = 'C:\Projects\repos\CursoSQL\DB\Dev.mdf')
LOG ON (name = 'Dev_log', FILENAME = 'C:\Projects\repos\CursoSQL\DB\Dev.ldf');
```

### Criando uma tabela

```SQL
--Cria uma tabela chamada alunos
    --Cria a coluna id do tipo int, seta como chave primária, incrementa de forma automática o próximo id
    --Cria coluna nome do tipo varchar limitado a 80 caractéries, impede de o campo ser nulo
    --Cria coluna cpf tipo char, 11 caractéries, não pode ser nulo
    --Cria coluna data_nascimento do tipo date
    --Cria coluna ativo do tipo bit (é como se fosse o booleano), valor padrão 1

CREATE TABLE alunos
(
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(80) NOT NULL,
    cpf CHAR(11) NOT NULL,
    data_nascimento DATE,
    ativo bit DEFAULT 1
)
```

### Inserindo Registros

```SQL
--Insere um novo registro na tabela alunos tendo cada coluna preenchida com os respectivos valores.
    --OBS a função GETDATE() preenche o campo com a data atual do sistema no formato yyyy-mm-dd.
INSERT INTO alunos(nome, cpf, data_nascimento, ativo) VALUES ('Rafael', '00000000001', GETDATE(), 0);

--Insere vários registro de uma vez
INSERT INTO alunos(nome, cpf, data_nascimento, ativo) 
VALUES 
('Eduardo', '00000000002', GETDATE(), 0),
('Bruno', '00000000003', GETDATE(), 0);
```

### Consultando Registros

```SQL
--Busca e retorna todos os registro de todas as colulas da tabela alunos
SELECT * FROM alunos;
```
![image](https://user-images.githubusercontent.com/80548321/215845610-f56c2c70-7107-407c-91cb-1618505dede9.png)

```SQL
--Busca e retorna todos os registro das colunas nome e cpf
SELECT nome, cpf FROM alunos;
```
![image](https://user-images.githubusercontent.com/80548321/215845849-24e3a61a-d155-4acc-9230-e5260846c673.png)

```SQL
--Busca e retorna todos os registro das colunas nome e cpf
--Exibe a coluna nome com o alias nome_aluno
SELECT nome as nome_aluno, cpf FROM alunos;
```
![image](https://user-images.githubusercontent.com/80548321/215846017-998a3827-2906-4ac3-958e-238945a32e14.png)


## 💻 Base de conhecimentos
## 💻 Clásulas e operadores
## 💻 Joins
## 💻 Transações
## 💻 T-SQL
## 💻 Backup
## 💻 Tips-Tricks
## 💻 Encerramento
