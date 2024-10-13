-- 1 Consulta
SELECT 
	Nome,
	Ano
FROM Filmes

-- 2 Consulta
SELECT 
	Nome,
	Ano
FROM Filmes
ORDER BY Ano 

-- 3 Consulta
SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4 Consulta
SELECT * FROM Filmes WHERE Ano = '1997'

-- 5 Consulta
SELECT * FROM Filmes
WHERE Ano LIKE '200%'

-- 6 Consulta
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7 Consulta
SELECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 Consulta
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9 Consulta 
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 Consulta
SELECT 
	filmes.Nome, 
	generos.Genero 
FROM filmesgenero 
INNER JOIN filmes ON filmesgenero.IdFilme = filmes.Id 
INNER JOIN generos ON filmesgenero.IdGenero = generos.Id;

-- 11 Consulta
SELECT 
	Filmes.Nome, 
	Generos.Genero 
FROM filmesgenero 
INNER JOIN Filmes ON Filmesgenero.IdFilme = Filmes.Id 
INNER JOIN Generos ON Filmesgenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- 12 Consulta
SELECT 
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM ElencoFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.ID
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.ID