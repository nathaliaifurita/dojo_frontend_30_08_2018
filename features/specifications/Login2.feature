#language: pt
Funcionalidade: Login

Contexto: 
    Dado que eu acesso a pagina de Login

Cenário: Logar no site com usuário e senha
    Quando eu incluo o usuário e senha
        | usuario      | qasampa    |
        | senha        | qasampa123 |
    Então sou autenticado com sucesso
        | autenticacao | SIGN-OFF   |

Cenário: Logar no site com usuário inválido
    Quando eu incluo o usuário inválido e senha válida
        | usuario      | sampaqa    |
        | senha        | qasampa123 |
    Então permaneco na pagina login
        | autenticacao | SIGN-ON    |

Cenário: Logar no site com senha inválida
    Quando eu incluo o usuário válido e senha inválida
        | usuario      | qasampa    |
        | senha        | 123qasampa |
    Então permaneco na pagina login
        | autenticacao | SIGN-ON    |