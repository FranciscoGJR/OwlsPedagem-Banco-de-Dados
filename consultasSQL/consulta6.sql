-- Gostaríamos de encontrar o contato de todos os funcionários que também são supervisores.
SELECT contato FROM trabalhoowl.funcionario WHERE trabalhoowl.funcionario.CPF_Func IN (SELECT trabalhoowl.Setor.CPF_func  FROM trabalhoowl.Setor);
