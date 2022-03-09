select first_name || ` ` || last_name as Nome,
	hire_date
	
from employees
where fist_name like '_a%';  

-- nesse caso, ele seleciona nomes com segundo digito 'a' mais qualquer digito depois 
-- % -> significa qualquer quantidade de digitos depois
-- _digito 
-----------------------------------------------------


UNDEFINE VARIVEL
-- LIMPAR A MEMORIA 

--------------------------- // --------------------------------
--  funcao

instr('Fatec Mogi das Cruzes') -- retornA A POSICAO DA STRING
instr('Fatec Mogi das Cruzes','10') -- RETORNAR A STRING DE POSICAO 10 

--contatenar string: hello|| " " || word 
-- resultado: hello word

-- alinhar strings

RPAD(first_name || ' ' || last_name,35,' ') || LPAD(salary,7,'-' ) 
-- RPAD completar os espacos vazios ate 35 caracteres com espaco
-- LPAD completar os espacos vazios ate 7 caracteres com dash (-)

TRIM('f' from 'Fatec Mogi das Cruzes')
-- retira o 'f' do comeco e do fim da string 

-- nome completo de todos os empregados que tem mais de 3 letras z no nome
select 123456.789 n1,
ROUND (6534.000,2) n2
-- arrendonda conteudo para arrendodar + casas decimais
-- tambem e possivel arrendondar numero negativo 
ROUND (123456.789,-1) n3

TRUNC()
-- arrendonda excluido casas decimais -- parametros (conteudo para truncar, numero de casas decimais que quero cortar)

SYSDATE 
-- DATA DO SISTEMA

DATE - DATE 
-- conta os dias decorridos no periodo

data + number 
-- data mais numero de dias (24h)

data - number
-- data menos numeros de dias (24h) 

--   						CONVERSÃO
-- to_char
-- to_char(qual conteudo, 'como deve ser formatado')
-- L -> moeda do idioma local
-- . ->separador decmal
-- , -> separador milhar
-- 9 -> qualquer digito
-- 0 -> qualquer digito que aparece obrigatoriamente
to_char(sysdate, 'dd/mm/yyyy hh24:mm:ss') as "Date e Hora",

to_char(sysdate, 'dd DD DAY DY dy') as "Dia"

to_number('R$123,456.00','L999,999.00') as "Para Numero"
-- to date ('data', 'formato para converter')
-- '06/10/2017' is a string

-- CASE
CASE OPCAO
WHEN PRIMEIRO_CASO THEN ESCOLHA
WHEN SEGUNDO_CASO THEN ESCOLHA 
	ELSE TERCEIRO_CASO -- nao e obrigatorio
END RETORNO, -- retorna o valor que for escolhido

-- JUNÇÃO
-- Externa à esquerda
select * 
from emps LEFT[OUTER] JOIN ON e_d_id=d_id; 

retorna: 
e_id | e_nome | e_d_id | d_id| d_nome
10	 | na 	  | 	   |     |
20   | ne     | 3      | 3   | adm
15   | no     | 3      | 3   | adm
18   | nu     | 5      | 5   | ti

-- Externa à direita
select *
from emps RIGHT JOIN  depts ON ed_id = d_id;

retorna: 
e_id | e_nome | e.d_id | d.id| d_nome
20	 | ne 	  | 3      |  3  | adm
20   | no     | 3      |  3  | adm
18   | nu     | 5      | 5   | ti

-- UNIÃO 
união compativel: mesmo numero de colunas, mesmo tipo de dado nas colunas
select 
	employees_id,
	job_id,
	departament_id
from employees

union -- retorna todos registro da tabelaA e da tabelaB, porém não mostra se houver valores repetidos
union all -- retorna todos os registros da tabelaA e da tabelaB, incluse os dados repetidos

select 
	employees_id,
	job_id,
	departament_id

from job_history

		ALTERAR UMA TABLE DE TABLESPACE

ALTER TABLE TABELAX MOVE TABLESPACE XXX

		ALTERAR TABLESPACE DE USUARIO

alter user projeto01 default tablespace users;

		APAGAR TODOS OS REGISTROS DE UMA TABELA

DELETE FROM produtos

		APAGAR UM UNICO REGISTRO

DELETE FROM produtos
WHERE cod_prod= 1

		ALTER TABLE - MODIFICAR COLUNA

ALTER TABLE T_CLASSE_SOCIAL 
MODIFY (TESTE VARCHAR2(50)) 




