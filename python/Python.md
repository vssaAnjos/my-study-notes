# Python 3 
> Notas de aula dos Cursos Alura sobre Python 3 && mais úteis

###  Tipagem de dados
- Função type() para imprimir o tipo da variavel. Ex:
pais=brasil
type(mes)
> class 'str''

* Linguagem dinâmica - tipagem dinâmica
* O tipo da variável vai ser igual ao valor do que ela recebe. 
Ex:
variavel = 1
Tipagem int
variavel = texto
Tipagem string

* Em Python, a variável só passa a existir quando atribuímos um valor, como no exemplo abaixo:
idade = 12

* O Python utiliza por convenção o padrão Snake_Case para nomes de variáveis (ou identificadores).
idade_esposa = 20
perfil_vip = 'Flávio Almeida'
recibos_em_atraso = 30
  
* Identação
4 espaços ou 1 tab
  
### Condição Se
Estrutura do IF e ELSE

- elif: aceita 
- else: não aceita condição, apenas a instrunção que será executada

If (condicao): 
    // faça tal coisa
elif(condicao):
    // faça tal coisa
else:
    // faça tal coisa
###3e Seguem todas as operadores de comparação:

    < - menor que
    > - maior que
    <= - menor ou igual a
    >= - maior ou igual a
    == - igual a
    != - diferente de

## Laço de repetição
Laço 'enquanto'

> while (condition):

## Laço for
```python 
for contador in range(1, 11):
    print(contador)
```

### Função range
> range(start, stop, [step])

Onde o step é opcional. Como queremos "pular" de 3 em 3, começando com 1 (start) até 10 (stop), podemos escrever:

## String interpolation
Saiba mais na Documentação: https://docs.python.org/3/library/string.html#formatexamples
uso de colchetes dentro de strings para formatar com váriaveis
Ex:
>     print("Tentativa {} de {}".format(rodada,total_de_tentativas))

Para utilizar outra ordem dos parametros
>     print("Tentativa {1} de {0}".format(1,10))
> Resultado: Tentativa {10} de {1}"

### Formatação de floats
Primeiro precisamos dizer para ela que estamos recebendo um valor do tipo float, passando :f dentro das chaves da string:

> print("R$ {}".format(1.59))
> R$ 1.59

Para formatar as casas decimais depois do ponto
````python
>>> print("R$ {:.2f}".format(1.59))
# R$ 1.59
> >>> print("R$ {:.2f}".format(1.5))
# R$ 1.50
>>> print("R$ {:.2f}".format(1234.50))
# R$ 1234.50
````
 

##  Interpolação - Python 2 vs Python 3 
Python 3
> "{} {}".format(1, 2)

Python 2
> "%d %d" % (1, 2)

Mais exemplos, sempre comparando o Python 2 com Python 3, existem no link: https://pyformat.info/

* No Python 3.6+
A partir da versão 3.6 do Python, foi adicionado um novo recurso para realizar a interpolação de strings. Esse recurso é chamado de f-strings ou formatted string literals.
> nome = 'Maria'
> print(f'Meu nome é {nome}')
> Meu nome é Maria
* Quando colocamos a letra f antes das aspas, informamos ao Python que estamos utilizando uma f-string. Dessa forma o Python consegue, em tempo de execução, captar a expressão que está entre chaves ({ }) e avaliá-la
> nome = 'Maria'
> print(f'Meu nome é {nome.lower()}')
> Meu nome é maria

## Python builtin
Funções embutidas por padrão no Python
https://docs.python.org/3/library/functions.html

## Gerando números aleatórios
```python
import random
random.random()
0.6022965518496559
```
Arrendondando um número decimal 
```python
numero_random = random.random() * 100
numero_random
#resultado sem o round()
> 18.895629671768187
int(numero_random)
#resultado com convertendo para inteiro
> 18
round(numero_random)
#resultado com o round()
19
```

### Outras funções
Função `abs(valor)` usada para transformar o número em um valor absoluto e positivo.
```python
pontos_perdidos = abs(numero_secreto - chute)
```
O objetivo dessa função é retornar o número desconsiderando o seu sinal

### Float division
Repare que recebemos o valor float 1.5 como resposta. O operador / sempre traz um float, mesmo se não for necessário, por isso ele também é chamado de float division:
```python
>>>  3 / 2
1.5
```

## Criar Funções
>  Lembrando que é consenso usar a nomenclatura snake_case:

Definir:
```python
## arquivo.py
def funcao():
    // todo código aqui
```
Chamar:
```python
import arquivo
    arquivo.funcao()
```
> Uma função também pode receber parâmetros e retornar algum valor, por exemplo:
```python
def soma(a, b):
     return a + b
```
> A função soma recebe dois parâmetros (a e b) e retorna a soma. Ao chamar a função, podemos capturar o retorno:
```python
s = soma(3, 4) 
```

## Função main
> Essa variável é a __name__, e ela é preenchida com o valor __main__ caso o arquivo seja executado diretamente. 
> Então é preciso fazer if para verificar se ela está preenchida ou não:
```python
# adivinhacao.py

import random

def jogar():
    # código omitido

if (__name__ == "__main__"):
    jogar()
```

### Tipo Booleano 
O tipo bool para representar verdadeiro (True) e falso (False), por exemplo:
```python
>>> existe = True
>>> type(existe)
<class 'bool'>
````

### Manipulando Strings 
Usando a função 'find()' para encontrar um caracter numa String. 
Ex:
````python
palavra = "banana"
type(palavra)
<class 'str'>
palavra.find("b")
0
````
#### Interando em uma palavra
Uma palavra nada mais é do que uma sequência de caracteres. Podemos usar o laço for para iterar.
Ex:
```python
for letra in palavra_secreta:                                          
    if(chute == letra):                                                
        print(letra)
````

### Algumas funções de String
.capitalize = retornar primeira letra como maiscula
.strip = limpar espaço em branco
.upper = transformar em letra maiscula
> Algumas funções foram úteis para verificar se há alguma substring dentro da palavra, como por exemplo: **find, startswith ou endswit**

### Estrutura de dados
> Sequence Types: List, Tuple, range
### Lista
O Python nos oferece uma estrutura de dados que nos permite guardar valores. Essa estrutura é a lista. Para criar uma lista, utilizamos **colchetes ([])**:
```python
>>> valores = []
>>> type(valores)
<class 'list'>
>>> valores = [0,1,2,3,4]
```
Funções com lista
Menor e Maior valor
```python
>>> min(valores)
0
>>> max(valores)
4
```
Tamanho dos itens da lista
```python 
print(len(funcionarios))
```

> Podemos adicionar elementos ao final da lista com o append, exibir e remover um elemento de determinada posição com o pop, entre diversas outras funcionalidades.
> Mais funcões especificas de lista  [aqui](https://docs.python.org/3.6/library/stdtypes.html#mutable-sequence-types)

A função .count()
> contar o número de ocorrências de um determinado elemento em uma lista é a função .count() das listas:
````python
valores = [ 0, 0, 0, 1, 2, 3, 4]
print(valores.count(0))
>>> 3
````

A função .index()
> retorna o índice da primeira ocorrência de um determinado elemento em uma lista:
````python
frutas = ['Banana', 'Morango', 'Maçã', 'Uva', 'Maçã', 'Uva']
print(frutas.index('Uva'))
>>> 3
````
### Tupla
O Python oferece a estrutura tupla, utilizamos com parenteses **( )**
- Estrutura imutável 
- Não é possível adicionar novos elementos após a criação
- Ideial para quando sabemos a quantidade de itens a serem inseridos na criação
Ex de uso:
```python
>>> dias = ("Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado")
>>> type(dias)
<class 'tuple'>
```

Principais diferenças entre list e tuple:
- list usa colchetes [] para inicialização, tuple usa parênteses ()
- list é mutável, tuple é imutável

> Entre essas sequências, list é a única que é mutável. tuple, str e range são imutáveis.

### Tuplas dentro de uma lista
> instrutor1 = ("Nico", 39)

> instrutor2 = ("Flávio", 37)
> 
> instrutores = [instrutor1, instrutor2]
> 
> instrutores
> 
> [('Nico', 39), ('Flávio', 37)]

### Converter listas em tuplas
Função Buit-in: 

- De lista para Tupla
```python
tuple()
palavras = []
#Tupla com conteúdo da lista
nova = tuple(palavras)
```
- De Tupla para Lista
```python
#Lista com conteúdo da tupla
list()
outra = list(nova)
#Lista fazia
nova = []
```

### Set
Um set é uma coleção não ordenada de elementos. Cada elemento é único, isso significa que não existem elementos duplicados dentro do set.
Exemplo de criação:
```python
colecao = {11122233344, 22233344455, 33344455566}
```
Repare que usamos {} chaves para declarar os elementos iniciais

### Dictionary
```python
instrutores = {'Nico':39, 'Flavio':37,'Marcos:30':40}
instrutores['Flavio']
# 37
```
Repare que usamos as chaves {} (como se fosse um set), mas sempre tem em pares.

### List Comprehension
```python
palavra_secreta = "banana".upper()
letras_acertadas = ["_" for letra in palavra_secreta]
```
Com if:
```python
inteiros = [1,3,4,5,7,8,9]
pares = []
for numero in inteiros:
    if numero % 2 == 0:
        pares.append(numero)
```


### Arquivos
- Abrindo arquivos com função built-in: 
```python
open()
```
- A função recebe um ou mais parâmetros: O nome do arquivo e o modificador de acesso.
- arquivo = open("arquivo.txt,"a")
- parametro "a" para 'append'
- parametro "w" para  'write'
- parametro "r" para 'read'
- parametro "+b" para trabalhar com binário:
  - "wb"
  - "rb"
> É uma boa prática fecharmos o arquivo depois de utilizá-lo para escrita ou leitura
```python
arquivo.close()
```

- Função **readline()** para ler apenas uma linha do arquivo:
````python
arquivo = open('pessoas.txt', 'r')
linha = arquivo.readline()
print(linha)
````
### Função with
Leitura de arquivos com a função **with**.

Repare que o with usa a função open. Repare também que não fechamos o arquivo. Isso não é mais necessário pois o Python vai cuidar disso e, mesmo com erro, garantirá o fechamento do arquivo! Muito melhor não?
```python
with open("palavras.txt") as arquivo:
    for linha in arquivo:
        print(linha)
```

### Sobre funções
1- Uma função é um bloco de código que pode ser guardado, para ser chamado assim que desejarmos, contanto que saibamos seu nome. Contudo, não é necessário sabermos a sua implementação.
2- A seguinte declaração de função é válida:
3- Em Python, a convenção é criarmos funções no padrão snake_case, isto é, cada palavra é iniciada com letras minúsculas e separadas por um underscore (_). 

# Python 3 - Intro à orientação a objetos

## Procedural vs Orientação a Objetos
> Orientação a Objetos:
> Organização do código

- Dados e comportamento
- Dicionário 
- Funções 
- Encapsulamento de código

## Classe e Objeto
-  Classe
- Objeto
- Referência

1 - Uma classe é uma especificação de um tipo, definindo valores e comportamentos.

2- Um objeto é uma instância de uma classe onde podemos definir valores para seus atributos.

3- Uma boa analogia é considerar a classe como a receita para a criação de algum prato; por exemplo, um delicioso bolo de cenoura ;-)

4- Classe: Receita do objeto

Declaração a classe
```python
#arquivo classe.py
class Conta:
    ...código...
    pass 
````

Criando um objeto a partir da clase
```python
Conta()
>>> <conta.Conta instance at 0x10fe26f00>
```

Criando o objeto, guardando o retorno dentro da referência **conta**
```python
>>> conta = Conta()
# 
>>> conta
<conta.Conta object at  0x10715fe10>
```
### Construtor
Função de construtor:
> O Python constrói o objeto, cria um lugar na memória e depois chama a função __init__
```python
    def __init__(self):
```
**Self:** 
- O Python cria automaticamente self
- self é a referência que sabe encontrar o objeto construído em memória.

Com o endereço, utilizaremos self para acessar o objeto e definir seus atributos e características. 
```python
class Conta:
    def __init__(self, numero, titular, saldo, limite):
        print("Construindo objeto...{}".format(self))
        self.numero = numero
        self.titular = titular
        self.saldo = saldo
        self.limite = limite

# Passando os parâmetros    
>>> from conta import Conta
>>> conta = Conta(123, "Nico", 55.5, 1000.0)
```

### Atributos
Acessando atributos dos objetos
```python
conta = Conta()
conta.atributo1
```

### Método
Criando métodos
```python
class Conta:
...
def extrato(self):
        print("Saldo {} do titular {}".format(self.saldo, self.titular))
```
Utilizando métodos
```python
conta = Conta()
conta.extrato()
>> Saldo 55.5 do titular Nico

```

### None e coletor de lixo
Gargabe colletor
> "Quando criamos um programa, são gerados diversos objetos que em algum momento serão abandonados. Dentro da máquina virtual, na execução do Python, existe um processo que procura esses objetos esquecidos. Os itens inutilizados serão apagados e o espaço livre em memória será reutilizado. No caso, o responsável por jogar fora esses objetos em desuso é o coletor de lixo (garbage collector, em inglês) do Python"

None
> "Com o uso do None, indicamos que a variável já não aponta para um objeto. A palavra None é equivalente a palavra-chave null nas linguagens C# ou Java"

### Atributos privados

Em algumas linguagens como Java, a palavra private define o atributo como **privado** e é chamado como modificador de visibilidade. Porém, em Python, foi convencionado o uso de **__(undescore)**. Com isso, nós renomeamos os atributos seguindo uma nomenclatura especial, por exemplo, numero passou a se chamar __numero.
Assim informamos para quem lê o código que esse atributo é privado. 
obs: Porém o Python não impede que o atributo seja acesso diretamente. É apenas uma convensão.
````python
class Conta:

    def __init__(self, numero, titular, saldo, limite):
        print("Construindo objeto ... {}".format(self))
        self.__numero = numero
        self.__titular = titular 
        self.__saldo = saldo
        self.__limite = limite
````

### Um pouco de SOLID
- Pensar na coesão das responsabilidades dos métodos e atributos dentro de uma classe.
- S - Single responsibility principle
- O - Open/closed principle
- L - Liskov substitution principle
- I - Interface segregation principle
- D - Dependency inversion principle

### Getters e Setters
Criar getters e setters para acessar e alterar o valor de atributos privados
- Get
```python
# get
def get_saldo(self):
    return self.__saldo
```

- Set
```python
# set
def set_limite(self, limite): 
    self.__limite = limite
```

### Property
Para manter as funções mais concisa e legível, usamos as propriedades nos métodos get e set. Assim evitando colocaro prefixo 'get' e 'set'
no nome dos métodos. 
> Propriedades são elementos acessados externamente como se fossem atributos, mas que internamente (à classe), são manipulados por funções.

No get:
```python
@property
def saldo(self):
    return self.__saldo
```

No set:
```python
@limite.setter
def limite(self, limite):
    self.__limite = limite
```
### Método Privado
Usar **__** no nome do método para idenfificar que o método é privado, seguindo a convenção do Python.
```python
    def __validar_limite_saque(self, valor_a_sacar):
        valor_disponivel_conta = (self.__saldo + self.__limite)
        return valor_a_sacar <= valor_disponivel_conta
```

### Métodos da classe
**Método estáticos:**
Os métodos estáticos que podem ser chamados a partir da classe, sem ter um objeto criado.
Exemplo:
````python
class Circulo:

    @staticmethod
    def obter_pi():
        return 3.14 
````
> OBS: Métodos estáticos tem um cheiro de linguagem procedural já que independe de um objeto para ser chamado e não manipula informações/atributos de objetos. Deve ser usado com bastante cautela!

````pythonE agora podemos usar esse método estático a partir da classe:
Circulo.obter_pi()
3.14
````

**Atributos estáticos:**
````python
class Circulo:
    PI = 3.14
````
Repare que não usamos self e o atributo nem foi definido dentro do __init__. O atributo faz parte da classe, ou seja, é um atributo estático que pode ser usado sem ter criado um objeto. Veja como fica simples:
```python
Circulo.PI
3.14
```

# Python 3 - Avançando em Orientação a objetos
> Abordar tópicos mais avançados como herança, polimorfismo, duck typing entre outros assuntos da Orientação a Objetos