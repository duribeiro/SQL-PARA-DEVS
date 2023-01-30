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
## 💻 Hands-On-SQL básico
## 💻 Base de conhecimentos
## 💻 Clásulas e operadores
## 💻 Joins
## 💻 Transações
## 💻 T-SQL
## 💻 Backup
## 💻 Tips-Tricks
## 💻 Encerramento
