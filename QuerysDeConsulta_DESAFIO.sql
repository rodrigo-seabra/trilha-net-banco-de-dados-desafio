SELECT nome, ano 
FROM Filmes;

SELECT nome, ano 
FROM Filmes ORDER BY ano

SELECT nome, ano, duracao
FROM Filmes
WHERE nome = 'De Volta para o Futuro';

SELECT nome, ano, duracao
FROM Filmes
WHERE ano = 1997;

SELECT nome, ano, duracao
FROM Filmes
WHERE ano > 2000;

SELECT nome, ano, duracao
FROM Filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

SELECT ano, COUNT(*) as Quantidade_Filmes
FROM Filmes
GROUP BY ano
ORDER BY Quantidade_Filmes DESC;

SELECT id, primeironome, ultimonome, genero 
FROM Atores
WHERE genero = 'M';

SELECT id, primeironome, ultimonome, genero 
FROM Atores
WHERE genero = 'F'
ORDER BY primeironome;

SELECT f.nome as NomeFilme, g.genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

SELECT f.nome as NomeFilme, g.genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE genero = 'Mistério';

SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;
