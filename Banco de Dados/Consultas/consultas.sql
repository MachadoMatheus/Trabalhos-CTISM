/*Com base no Diagrama ER construído na ultima aula, crie uma a string de consulta SQL para: */

#mostrar todos os filmes que tenham custo 0,99R$ para alugar
#mostrar todos os filmes que tenham custo 0,99R$ para alugar
#mostrar todos os filmes que tenham custo 0,99R$ para alugar
#mostrar todos os filmes que tenham custo 0,99R$ para alugar
#mostrar todos os filmes que tenham custo 0,99R$ para alugar
#mostrar todos os filmes que tenham custo 0,99R$ para alugar
SELECT titulo Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao = 0.99 LIMIT 10;
SELECT UPPER(titulo) Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao = 0.99 LIMIT 10;
SELECT LOWER(titulo) Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao = 0.99 LIMIT 10;
SELECT LPAD(titulo, 27, '*') Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao = 0.99 LIMIT 10;
SELECT RPAD(titulo, 27, '*') Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao = 0.99 LIMIT 10;

#uma string para todos que custam entre 2,99 e 0,99
SELECT titulo Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao BETWEEN 0.99 AND 2.99 LIMIT 10;
SELECT UPPER(titulo) Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao BETWEEN 0.99 AND 2.99 LIMIT 10;
SELECT LOWER(titulo) Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao BETWEEN 0.99 AND 2.99 LIMIT 10;
SELECT LPAD(titulo, 27, '*') Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao BETWEEN 0.99 AND 2.99 LIMIT 10;
SELECT RPAD(titulo, 27, '*') Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao BETWEEN 0.99 AND 2.99 LIMIT 10;

#uma string para identificar todos os filmes que tem um preço superior a 2,99
SELECT titulo Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao > 2.99 LIMIT 10;
SELECT UPPER(titulo) Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao > 2.99 LIMIT 10;
SELECT LOWER(titulo) Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao > 2.99 LIMIT 10;
SELECT LPAD(titulo, 27, '*') Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao > 2.99 LIMIT 10;
SELECT RPAD(titulo, 27, '*') Nome, preco_da_locacao Preco FROM filme FLM WHERE preco_da_locacao > 2.99 LIMIT 10;


/*Em caso de extravio, é preciso repor o filme no estoque, crie uma consulta que :*/

#Identifique os 10 filmes com o maior preço de substituição
SELECT titulo Nome, custo_de_substituicao Preco FROM filme FLM ORDER BY custo_de_substituicao DESC LIMIT 10;

#Agora crie uma consulta que apresente todos os filmes que tenham uma duração menor que 70 minutos,
SELECT titulo Nome, duracao_do_filme Duracao FROM filme FLM WHERE duracao_do_filme < 70;

#uma consulta para os filmes com duração superior a 1h20m e 
SELECT titulo Nome, duracao_do_filme Duracao FROM filme FLM WHERE duracao_do_filme > 80;

#uma consulta para filmes que tenham duração entre 80 e 115 minutos
SELECT titulo Nome, duracao_do_filme Duracao FROM filme FLM WHERE duracao_do_filme BETWEEN 80 AND 115;

/*Precisamos identificar quais os filmes que tenham como recurso especial*/

#os filmes com os seguintes recurso especias somente Trailers, 
SELECT titulo Nome, recursos_especiais Recurso  FROM filme FLM WHERE recursos_especiais = 'Trailers';

#os filmes que tem somente Cenas removidas
SELECT titulo Nome, recursos_especiais Recurso FROM filme FLM WHERE recursos_especiais = 'Deleted Scenes';

#e os filmes com comentários.
SELECT titulo Nome, recursos_especiais Recurso FROM filme FLM WHERE recursos_especiais = 'Commentaries';


#Contar
SELECT CONCAT(funcionario.primeiro_nome, " ", funcionario.ultimo_nome) AS Nome, COUNT(valor) Total FROM pagamento INNER JOIN funcionario ON pagamento.funcionario_id = funcionario.funcionario_id GROUP BY pagamento.funcionario_id;

#Soma
SELECT CONCAT(funcionario.primeiro_nome, " ", funcionario.ultimo_nome) AS Nome, SUM(valor) Soma FROM pagamento INNER JOIN funcionario ON pagamento.funcionario_id = funcionario.funcionario_id GROUP BY pagamento.funcionario_id;

#Máximo
SELECT CONCAT(funcionario.primeiro_nome, " ", funcionario.ultimo_nome) AS Nome, MAX(valor) Máximo FROM pagamento INNER JOIN funcionario ON pagamento.funcionario_id = funcionario.funcionario_id GROUP BY pagamento.funcionario_id;

#Mínimo
SELECT CONCAT(funcionario.primeiro_nome, " ", funcionario.ultimo_nome) AS Nome, MIN(valor) Mínimo FROM pagamento INNER JOIN funcionario ON pagamento.funcionario_id = funcionario.funcionario_id GROUP BY pagamento.funcionario_id;

#Média
SELECT CONCAT(funcionario.primeiro_nome, " ", funcionario.ultimo_nome) AS Nome, AVG(valor) Média FROM pagamento INNER JOIN funcionario ON pagamento.funcionario_id = funcionario.funcionario_id GROUP BY pagamento.funcionario_id;



/*SUBSTR,TRANSLATE,CONCAT, LTRIM,
RTRIM, TRIM, LENGTH
● Crie 1 exemplos para :
– Subconsultas de uma linha
– Subconsultas de varias linha IN
– Subconsultas de varias linha ANY
– Subconsultas de varias linha ALL
– Subconsultas de varias linha FROM*/

SELECT cidade FROM cidade WHERE pais_id IN (SELECT pais_id FROM pais WHERE SUBSTR(UPPER(pais), 1, 1) = 'N') ORDER BY cidade;
SELECT CONCAT(primeiro_nome, " ", ultimo_nome) AS Nome, LENGTH(primeiro_nome) AS Tamanho_Nome FROM ator WHERE LENGTH(primeiro_nome) < ANY (SELECT LENGTH(titulo) FROM filme GROUP BY preco_da_locacao) ORDER BY Tamanho_Nome;
SELECT cidade FROM cidade WHERE pais_id < ALL (SELECT pais_id)