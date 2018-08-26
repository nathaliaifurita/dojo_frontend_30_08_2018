class LoginPage < SitePrism::Page
    set_url '/mercurysignon.php'
    element :campo_login, 'input[name*="userName"]'
    element :campo_senha, 'input[name*="password"]'
    element :botao_entrar, 'input[name*="login"]'

    def logar(usuario, senha)
        campo_login.set usuario
        campo_senha.set senha
        botao_entrar.click
    end

end