/*Com base no Diagrama ER construído na ultima aula, crie uma a string de consulta SQL para: */

#mostrar todos os filmes que tenham custo 0,99R$ para alugar
SELECT titulo FROM filme WHERE preco_da_locacao = 0.99;

#uma string para todos que custam entre 2,99 e 0,99
SELECT titulo FROM filme WHERE preco_da_locacao BETWEEN 0.99 AND 2.99;

#uma string para identificar todos os filmes que tem um preço superior a 2,99
SELECT titulo FROM filme WHERE preco_da_locacao > 2.99;


/*Em caso de extravio, é preciso repor o filme no estoque, crie uma consulta que :*/

#Identifique os 10 filmes com o maior preço de substituição
SELECT titulo FROM filme ORDER BY preco_da_locacao DESC LIMIT 10;

#Agora crie uma consulta que apresente todos os filmes que tenham uma duração menor que 70 minutos,
SELECT titulo FROM filme WHERE duracao_do_filme < 70;

#uma consulta para os filmes com duração superior a 1h20m e 
SELECT titulo FROM filme WHERE duracao_do_filme > 80;

#uma consulta para filmes que tenham duração entre 80 e 115 minutos
SELECT titulo FROM filme WHERE duracao_do_filme BETWEEN 80 AND 115;

/*Precisamos identificar quais os filmes que tenham como recurso especial*/

#os filmes com os seguintes recurso especias somente Trailers, 
SELECT titulo FROM filme WHERE recursos_especiais = 'Trailers';

#os filmes que tem somente Cenas removidas
SELECT titulo FROM filme WHERE recursos_especiais = 'Deleted Cenes';

#e os filmes com comentários.
SELECT titulo FROM filme WHERE recursos_especiais = 'Commentaries';
