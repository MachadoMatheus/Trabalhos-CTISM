#aluguel

###############################################
SELECT aluguel_id FROM aluguel WHERE data_de_devolucao IS NULL
ORDER BY aluguel_id ASC
INTO OUTFILE '/var/lib/mysql-files/data_de_devolucao.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

#cliente

SELECT cliente_id, primeiro_nome FROM cliente WHERE email IS NULL
ORDER BY primeiro_nome ASC
INTO OUTFILE '/var/lib/mysql-files/email.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

#endereco

##########################################
SELECT endereco_id FROM endereco WHERE endereco2 IS NULL
ORDER BY endereco_id ASC
INTO OUTFILE '/var/lib/mysql-files/endereco2.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

SELECT endereco_id FROM endereco WHERE cep IS NULL
ORDER BY endereco_id ASC
INTO OUTFILE '/var/lib/mysql-files/cep.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

#filme

SELECT filme_id, titulo FROM filme WHERE descricao IS NULL
ORDER BY filme_id ASC
INTO OUTFILE '/var/lib/mysql-files/descricao.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

SELECT filme_id, titulo FROM filme WHERE ano_de_lancamento IS NULL
ORDER BY filme_id ASC
INTO OUTFILE '/var/lib/mysql-files/ano_de_lancamento.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

#################################
SELECT filme_id, titulo FROM filme WHERE idioma_original_id IS NULL
ORDER BY filme_id ASC
INTO OUTFILE '/var/lib/mysql-files/idioma_original_id.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

SELECT filme_id, titulo FROM filme WHERE duracao_do_filme IS NULL
ORDER BY filme_id ASC
INTO OUTFILE '/var/lib/mysql-files/duracao_do_filme.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

SELECT filme_id, titulo FROM filme WHERE classificacao IS NULL
ORDER BY filme_id ASC
INTO OUTFILE '/var/lib/mysql-files/classificacao.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

SELECT filme_id, titulo FROM filme WHERE recursos_especiais IS NULL
ORDER BY filme_id ASC
INTO OUTFILE '/var/lib/mysql-files/recursos_especiais.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

#filme_texto

SELECT filme_id, titulo FROM filme_texto WHERE descricao IS NULL
ORDER BY filme_id ASC
INTO OUTFILE '/var/lib/mysql-files/descricao.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

#funcionario

##################################
SELECT funcionario_id, primeiro_nome FROM funcionario WHERE foto IS NULL
ORDER BY funcionario_id ASC
INTO OUTFILE '/var/lib/mysql-files/foto.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

SELECT funcionario_id, primeiro_nome FROM funcionario WHERE email IS NULL
ORDER BY funcionario_id ASC
INTO OUTFILE '/var/lib/mysql-files/email.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

SELECT funcionario_id, primeiro_nome FROM funcionario WHERE senha IS NULL
ORDER BY funcionario_id ASC
INTO OUTFILE '/var/lib/mysql-files/senha.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';

#pagamento

#####################################
SELECT pagamento_id FROM pagamento WHERE aluguel_id IS NULL
ORDER BY pagamento_id ASC
INTO OUTFILE '/var/lib/mysql-files/aluguel_id.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';