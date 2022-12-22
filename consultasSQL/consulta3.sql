-- Queremos o nome de todos os  clientes e, caso tenha, o nome dos eventos que ocorrem no dia de entrada do check-in daquele cliente.
SELECT trabalho.funcionario.nome, trabalho.funcionario.CPF, trabalho.dependente.nome, trabalho.dependente.CPF
FROM trabalho.funcionario LEFT JOIN trabalho.dependente ON funcionario.nome = dependente.nome
