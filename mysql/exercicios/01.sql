/* O Cliente não quer nenhuma informação relativa à vendas ou estoque, desejando somente as informações primarias de Clientes. */ 

/* O nosso cliente solicitou uma tabela para armazenar os livros que são comercializandos pela empresa. A solicitação é somente 
para livros e não há a necessidade de realizar buscas em outras tabelas. Hoje há um funcionário de vendas que tem uma tabela 
do Excel para guardar esses registros, mas as buscas estão ficando complexas. Decidiu-se então criar um banco de dados separado 
para esse funcionário.

Após a criação da tabela, deveremos entregar algumas queries prontas para que sejam enviadas para o programador. A queries são as seguintes:
    1 - Trazer todos os dados.
    2 - Trazer o nome do livro e o nome da editora
    3 - Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
    4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
    5 - Trazer os valores dos livros da editoras de São Paulo.
    6 - Trazer os dados dos autores do sexo masculino que tiveram livros publicados por sSão Paulo ou Rio de Janeiro 
*/


-- BANCO
CREATE DATABASE livraria;


-- TABELA
CREATE TABLE livros(
    nome_do_livro VARCHAR(50),
    nome_do_autor VARCHAR(50),
    sexo CHAR(1),
    paginas INT,
    editora VARCHAR(30),
    valor FLOAT,
    uf_editora CHAR(2),
    ano_publicacao INT
);


-- DADOS
INSERT INTO livros
    VALUES('O Enigma da Esfinge','Ana Clara Silva','F',320,'Editora Ática', 49.90,'SP', 2022);
INSERT INTO livros   
    VALUES('A Viagem do Tempo','Pedro Henrique Santos','M',280,'Editora Saraiva', 39.90,'RJ',2021);
INSERT INTO livros
    VALUES('As Crônicas de Nárnia','C.S.Lewis', 'M',450,'Editora Martins Fontes', 59.90,'SP',1950);
INSERT INTO livros
    VALUES('O Pequeno Príncipe','Antoine de Saint-Exupéry','M',96,'Editora Sextante', 29.90,'RJ',1943);
INSERT INTO livros
    VALUES('Dom Casmurro','Machado de Assis','M',350,'Editora Companhia das Letras', 34.90,'RJ',1899);
INSERT INTO livros
    VALUES('Orgulho e Preconceito','Jane Austen','F',432,'Editora Penguin-Companhia', 42.90,'SP',1813);
INSERT INTO livros
    VALUES('O Alquimista','Paulo Coelho','M',198,'Editora Sextante', 24.90,'RJ',1988);
INSERT INTO livros
    VALUES('A Cabana','William P. Young','M',400,'Editora Sextante', 39.90,'SP',2007);
INSERT INTO livros
    VALUES('1984','George Orwell','M',328,'Editora Editora Globo', 39.90,'RJ',1949);
 INSERT INTO livros           
    VALUES('A Metamorfose','Franz Kafka','M', 212,'Editora Penguin-Companhia', 29.90,'SP',1915);


-- QUERIES
-- Trazer todos os dados.
SELECT * FROM livros;

-- Trazer o nome do livro e o nome da editora
SELECT nome_do_livro, editora FROM livros;

-- Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
SELECT nome_do_livro, uf_editora FROM livros
WHERE sexo = 'M';

-- Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
SELECT nome_do_livro, paginas FROM livros
WHERE sexo = 'F';

-- Trazer os valores dos livros da editoras de São Paulo.
SELECT nome_do_livro, valor FROM livros
WHERE uf_editora = 'SP';
    
-- Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro
SELECT nome_do_autor FROM livros
WHERE (sexo = 'M' AND uf_editora = 'SP') 
OR (sexo = 'M' AND uf_editora = 'RJ');  







