# Sistema de Gerenciamento de Livros (CRUD Java Web)

> Um sistema completo de gerenciamento de biblioteca desenvolvido com Java, JSP e SQL Server, focado em **Clean Code** e **Arquitetura MVC**.

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)

## Sobre o Projeto

Este projeto é uma aplicação Web Fullstack desenvolvida para consolidar conhecimentos em desenvolvimento web com Java. 

O principal diferencial deste projeto é a **ausência de frameworks ORM (como Hibernate)**. Optei por desenvolver um **Framework de Persistência Próprio** (`packFramework`), utilizando JDBC puro e `PreparedStatement`. Isso foi feito intencionalmente para compreender a fundo como funciona a comunicação entre a aplicação e o banco de dados, garantindo performance e segurança contra SQL Injection.

### Funcionalidades

* **Cadastrar:** Adiciona novos livros ao acervo com validação de campos.
* **Consultar:** Busca livros pelo código, exibindo todos os detalhes.
* **Editar:** Atualiza informações do livro (Título, Autor, Localização, etc.).
* **Excluir:** Remove registros do banco de dados de forma segura.
* **Interface Moderna:** UI desenvolvida com CSS3 (Flexbox, Grid, Variáveis e Gradients), totalmente responsiva e sem uso de Bootstrap.

---

## Screenshots

*(Adicione aqui os prints das suas telas. Sugestão: Tire print da tela de cadastro e da tela de consulta e cole aqui)*

<div align="center">
  <img src="https://github.com/user-attachments/assets/1f974cfd-ce33-48b5-83a1-bb5153c75733" alt="Tela de Cadastro" width="45%">
  <img src="https://github.com/user-attachments/assets/f976f6be-9873-4387-8e82-0e2da8cd7a15" alt="Tela de Consulta" width="45%">
</div>



---

## Tecnologias Utilizadas

* **Backend:** Java (JDK 24), JSP (JavaServer Pages), Servlets.
* **Frontend:** HTML5, CSS3 (Customizado).
* **Banco de Dados:** SQL Server.
* **Driver:** Microsoft JDBC Driver for SQL Server.
* **IDE:** NetBeans.
* **Servidor de Aplicação:** GlassFish 

---

## Como Rodar o Projeto

### 1. Configuração do Banco de Dados
Certifique-se de ter o **SQL Server** instalado. Execute o script abaixo para criar o banco e a tabela necessária:

```sql
CREATE DATABASE DBLivros;
GO

USE DBLivros;
GO

CREATE TABLE TabLivros (
    codigoLivro INT PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    editora VARCHAR(50),
    ano INT,
    localizacao VARCHAR(50)
);
