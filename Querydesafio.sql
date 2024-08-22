--1
select nome, ano from Filmes

--2
select nome, ano from Filmes order by Ano asc

--3
select nome, ano, duracao from Filmes where nome ='de volta para o futuro'

--4
select * from Filmes where ano = 1997

--5
select * from Filmes where ano > 2000

--6 
select * from filmes where duracao > 100 and Duracao < 150 order by Duracao

--7
select Ano, count(*) AS QuantidadeFilmes from Filmes group by Ano order by MAX(Duracao) desc;

--8
select primeironome, ultimonome from Atores where genero ='m';

--9 
select primeironome, ultimonome from atores where genero = 'f' order by PrimeiroNome

--10
select Filmes.nome, Generos.genero from Filmes join generos on filmes.id = generos.id

--11 
select Filmes.nome, Generos.genero from Filmes join FilmesGenero on filmes.id = FilmesGenero.IdFilme join Generos on FilmesGenero.IdGenero = Generos.id

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select filmes.nome, atores.PrimeiroNome, atores.UltimoNome, ElencoFilme.papel from filmes join elencofilme on filmes.id = elencofilme.idfilme join atores on ElencoFilme.idator = atores.id