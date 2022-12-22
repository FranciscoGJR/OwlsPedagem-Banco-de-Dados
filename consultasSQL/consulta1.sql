-- Queremos o nome de todos os clientes que se cadastraram com um email do tipo gmail.
SELECT nome
FROM trabalho.Cliente
WHERE email LIKE '%@gmail%'
