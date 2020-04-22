-- ## RELATÓRIOS DO BANCO DE DADOS FARMACIA

-- ## Testes 
-- 10- Quantidade de clientes por convenio (vanessa)

select CLIENTES.CON_ID ,CONVENIOS.CON_ID,CONVENIOS.CON_NOME

from CLIENTES,CONVENIOS

where 
CLIENTES.CON_ID=CONVENIOS.CON_ID;

--- ##########################################
select CLIENTES.CON_ID,CONVENIOS.CON_NOME
  from clientes,convenios
  
  where CLIENTES.CON_ID > 1 
  order by  convenios.CON_NOME


select job, count(*)
from emp
group by job;

--- ##########################################

select  convenios.con_nome as "Nome",
      convenios.con_nome as "Nome",
		count(*) as "Quantidade"		
from clientes join convenios
on convenios.CON_ID = clientes.CON_ID
group by clientes.con_id,convenios.CON_NOME
order by 1,2,3


--- #############################################
-- CONSULTAS
--- ##########################################


----------------------------------------------------------------------------
-- CONSULTA: Lista de produtos que vencem em 10 dias ou mais

select PRO_NOME,PRO_DT_FABRI,PROD_DT_VALID
from PRODUTOS
where  PROD_DT_VALID 
between to_date(sysdate,'dd-mm-yy') and to_date(sysdate,'dd-mm-yy')+20
-- produtos entre data de hoje e a data de hoje + 20 dias 

-- CONSULTA: Quantidade de clientes por convenio

select convenios.con_nome as convenio, count(*) as quantidade
-- count(*) usado para contar a quantidade de linhas que cada grupo contem
from clientes join convenios
-- junção das tabelas clientes e convenios por meio da chave estrangeira referenciada na chave primaria 
on convenios.CON_ID = clientes.CON_ID
group by clientes.con_id,convenios.CON_NOME;  
-- agrupando as linhas retornadas de Id do convenio (na tabela cliente) com o nome dos convenios(na tabela convenios)

-- Testes
select  convenios.con_nome as "Nome",
		convenios.con_nome as "Nome",
		count(*) as "Quantidade"
		
from clientes join convenios
on convenios.CON_ID = clientes.CON_ID
group by clientes.con_id,convenios.CON_NOME
order by 1,2,3


-- CONSULTA: Valor total gasto por fornecedor

select PESSOAS.PES_NOME AS "FORNECEDOR", 
      SUM(FORNECE.FNC_VALOR) AS "VALOR TOTAL"
FROM PESSOAS JOIN FORNECEDOR ON PESSOAS.PES_ID = FORNECEDOR.FOR_PES_ID
JOIN FORNECE ON FORNECEDOR.FOR_PES_ID = FORNECE.FNC_FOR_PES_ID
GROUP BY PESSOAS.PES_NOME 

-- CONSULTA: ? Possivel: Compras por categoria de cada cliente

select PRODUTOS.PRO_NOME AS REMEDIO,
      PRODUTOS.PRO_TIPO AS TIPO,
      COUNT(PESSOAS.PES_ID) AS QTD
      FROM PESSOAS JOIN CLIENTES ON PESSOAS.PES_ID = CLIENTES.CLI_PES_ID
      JOIN ATENDIMENTO ON CLIENTES.CLI_PES_ID = ATENDIMENTO.ATE_CLI_PES_ID
      JOIN COMPRAS ON ATENDIMENTO.ATE_COM_ID = COMPRAS.COM_ID
      JOIN POSSUI ON COMPRAS.COM_ID = POSSUI.COM_ID
      JOIN PRODUTOS ON POSSUI.PRO_ID = PRODUTOS.PRO_ID
      GROUP BY PRODUTOS.PRO_TIPO, PRODUTOS.PRO_NOME
      