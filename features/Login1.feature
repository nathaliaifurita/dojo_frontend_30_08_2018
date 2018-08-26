#language: pt
Funcionalidade: Login

Cenário: Logar no site com usuário e senha
    Dado que eu acesso a pagina de Login
    Quando eu incluo o usuário "qasampa" e senha "qasampa123"
    Então sou autenticado

Cenário: Logar no site com usuário inválido
    Dado que eu acesso a pagina de Login
    Quando eu incluo o usuário inválido "sampaqa" e senha válida "qasampa123" 
    Então permaneco na pagina de login

Cenário: Logar no site com senha inválida
    Dado que eu acesso a pagina de Login
    Quando eu incluo o usuário válido "qasampa" e senha inválida "123qasampa"
    Então permaneco na pagina de login