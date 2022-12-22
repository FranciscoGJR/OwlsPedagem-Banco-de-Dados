-- Precisamos armazenar o tipo dos serviços solicitados que, somados, superam 200 reais.
SELECT pedido, SUM(valor) AS 'Valor Somado'
FROM trabalho.Servico_de_Quarto
GROUP BY pedido
HAVING SUM(valor)>200;
