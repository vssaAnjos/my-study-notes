# Shell Script

Esta página contém meus comandos úteis em shells script para criação de rotinas batch linux ou realizar tarefas simples no terminal.

:construction: Em construção

## Referências Úteis
- [Github Shell Scripting Tutorial](https://github.com/techarkit/shell-scripting-tutorial)
- [Github Linux4noobs](https://github.com/LucasHe4rt/linux4noobs)
- [Curso Alura - Linux I: Conhecendo e utilizando o terminal](https://www.alura.com.br/curso-online-linux-ubuntu)
- [Curso Alura - Linux II: Programas, processos e pacotes](https://www.alura.com.br/curso-online-linux-ubuntu-processos)
- [Curso 4Linux - Linux Essentials](https://4linux.com.br/cursos/treinamento/linux-essentials/)

## Comandos
```shell
# Comando echo : para exibir no terminal
$ echo bem vindo 
$ echo "bem vindo" > bemvindo.txt
- para transferir o "bem vindo" para um saida // para adicionar (concatenar no arquivo) usar >>
<   Redireciona a entrada padrão (STDIN)
>   Redireciona a saída padrão (STDOUT)
- exibir manual de algum comando 
$ main
-ex: man cat 
    
    
# listar filesystem e files
$ ls -l  
-l     listar com detalhes 
-a      listar anônimos

$ ls -lt 
para exibir por ordem de alteração 

# Exibir o usuario logado atual 
$ whoami 

# Apagar diretorio vazio 
$ rmdir 
## apagar recursivamente todos os files dentro do diretorio
$ rm -r 

# Caracteres coringas
cat arquivo?.txt 
- terminal imprima os textos de todos os arquivos com um determinado nome, com apenas UM caracateres qualquer
cat *.txt 
-  * busca quaisquer números de caracteres.

# Compactar arquivos dentro do diretorio workspace
$ zip -r work.zip workspace/

# Para listar os arquivos dentro da pasta compactada
$ unzip -l work.zip

# Empacotar com tar. Por padrão o tar é recursivo
tar -cz workspace > work.tar.gz
-c  create
-z  compactado pelo zip 
-f  para passar o nome do arquivo

# Para descompactar
tar -xz < work.tar.gz
ou 
tar -xzf work.tar.gz
-x      "extract"
-f      ler de um arquivo
-z      indica que o arquivo está compactado

# compactadores:
- gzip  .gzip
- bzip2 
## Para compactar com o bzip2
-f  usar o parametro -f
$ tar -cjf work.tar.bz2 workspace/

# Modificar arquivo ou criar um arquivo 
touch bemvindo.txt

# Exibir data do sistema  
$ date "+%d/%m/%Y"

# comando interno do interpretador bash. Sem parametro lista com comandos internos shell bash. Com parametro lista a sintaxe do comando 
$ help
- para listar os comandos internos shell bash
$ date --help
- para listar a sintaxe do comando date

# Comando head para ler somente o começo de um arquivo 
$ head google.txt
$ head -n 3 google.txt
- para ler as 3 primeiras linhas 

# Ultimas linhas
$ tail  google.txt
$ tail -n 3 google.txt
- ultimas 3 linhas

# Permite abrir e navegar pelo texto do arquivo no Terminal utilizando as setas para cima e para baixo do teclado
$ less arquivo.txt
- para sair utilize o q 

# VI
Setas: para navegação
i: inclui (na posição atual)
a: adiciona (na posição posterior)
Shift+A: adiciona (fim da linha)
x: remove caracteres (n* x remove *n caracteres)
dd: remove uma linha (n* dd remove *n linhas)
:q! sai e ignora as alterações
G (caixa alta ou Shift + g) : vai para ultima linha do arquivo (fim final do arquivoo)
gg : primeira linha do arquivo (inicio do arquivo)
n : pular para linha
0 e $ :para ir no incio e final da linha atual 
"/" + palavra : procurar texto. Ex: /California 
n: Para ir para proxima ocorrencia, quando estamos pesquisando uma palavra. Shift + N para anterior
1G (Shift + g) : inicio do arquivo 
```

