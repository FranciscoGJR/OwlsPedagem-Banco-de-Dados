-- Queremos uma forma de obter o nome dos clientes com mais de 10 pontos no programa de fidelidade que possuem uma reserva com direito ao café da manhã  e que possuam  vaga no estacionamento no setor C.
SELECT nome 
FROM trabalho.cliente
WHERE Programa_de_Fidelidade.pontos < all (SELECT pontos
										  FROM trabalho.Programa_de_Fidelidade);
