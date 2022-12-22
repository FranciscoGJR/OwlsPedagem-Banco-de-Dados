-- Precisamos do nome do cliente com a maior pontuação no programa de fidelidade usado pelo sistema
    SELECT nome FROM trabalhoowl.Cliente WHERE trabalhoowl.Cliente.CPF_CLiente IN (SELECT trabalhoowl.Programa_de_Fidelidade.CPF_Cliente FROM trabalhoowl.Programa_de_Fidelidade WHERE trabalhoowl.Programa_de_Fidelidade.pontos IN (SELECT MAX(pontos) FROM trabalhoowl.Programa_de_Fidelidade));
