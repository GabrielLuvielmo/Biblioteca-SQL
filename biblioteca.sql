create table autores (
  IdAutor int PRIMARY KEY not null,
  Nome_Autor varchar(50)
);

create table categoria(
  IdCategoria int PRIMARY KEY not null,
  Nome_Categoria varchar(50) not null,
  Descrição_Categoria varchar(50) not null
);

create table livros (
 ISBN int PRIMARY KEY not null,
 Nome_Livro varchar(60) not null,
 IdAutor int REFERENCES autores(IdAutor),
 IdCategoria int REFERENCES categoria(IdCategoria)
);

Insert INTO autores (IdAutor, Nome_Autor) Values
(001, 'Javoir Jahn-Tarr'),
(002, 'Jahpohdi Aomossar'),
(003, 'Mario Sergio Cortella'),
(004, 'Rafael Dondé'),
(005, 'Neymar Jr');

Insert INTO categoria (IdCategoria, Nome_Categoria, Descrição_Categoria) Values
(001, 'Ficção', 'Livros de Ficção Cientifica'),
(002, 'Romance', 'Livros com tema de Romance'),
(003, 'Aventura', 'Livros que contam aventuras epicas'),
(004, 'Terror', 'Livros com histórias assustadoras'),
(005, 'Política', 'Livros sobre a realidade política'),
(006, 'Culinaria', 'Livros de receitas');

Insert INTO livros (ISBN, Nome_Livro, IdAutor, IdCategoria) Values
(001, 'Aventuras Sinistras do Dondé', 004, 003),
(002, 'Como a Ditadura Acabou', 001, 005),
(003, 'As 10 Piores Receitas do Mundo', 002, 006),
(004, 'O Hexa é Nosso!', 005, 001),
(005, 'O Aomosso e o Jahn-Tarr', 002, 002);

SELECT * FROM autores;
SELECT * FROM categoria;

UPDATE livros 
SET Nome_Livro = 'O Hexa Não é Nosso!'
WHERE ISBN = 4;

DELETE FROM livros WHERE ISBN = 4;

SELECT 
  l.ISBN,
  l.Nome_Livro,
  a.Nome_Autor,
  c.Nome_Categoria
FROM 
  livros l
  JOIN autores a ON l.IdAutor = a.IdAutor
  JOIN categoria c ON l.IdCategoria = c.IdCategoria;
  
  







