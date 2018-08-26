#language: pt
Funcionalidade: Login

Contexto: 
    Dado que eu logo na pagina

Esquema do Cenario: Acessar a pagina de login
    Quando eu incluo meu "<usuario>" e "<senha>"
    Entao devo visualizar a "<autenticacao>"

Exemplos:
    | usuario | senha      | autenticacao  |
    | qasampa | qasampa123 | SIGN-OFF      |
    | sampaqa | qasampa123 | SIGN-ON       |
    | qasampa | 123qasampa | SIGN-ON       |