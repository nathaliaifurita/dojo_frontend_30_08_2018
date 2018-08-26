#Login1
Dado("que eu acesso a pagina de Login") do
  visit('http://newtours.demoaut.com/mercurywelcome.php')
  click_link 'SIGN-ON'
end

Quando("eu incluo o usuário {string} e senha {string}") do |usuario, senha|
  fill_in('userName', with: usuario)
  fill_in('password', with: senha)
  find('input[name="login"]').click
end

Então("sou autenticado") do
  page.has_content?('SIGN-OFF')
end

Quando("eu incluo o usuário inválido {string} e senha válida {string}") do |usuario, senha|
  fill_in('userName', with: usuario)
  fill_in('password', with: senha)
  find('input[name="login"]').click
end

Então("permaneco na pagina de login") do
  page.has_content?('SIGN-ON')
end

Quando("eu incluo o usuário válido {string} e senha inválida {string}") do |usuario, senha|
  fill_in('userName', with: usuario)
  fill_in('password', with: senha)
  find('input[name="login"]').click
end

#Login2
Quando("eu incluo o usuário e senha") do |table|
  login = table.rows_hash
  find('input[name="userName"]').set login[:usuario]
  find('input[name="password"]').set login[:senha]
  find('input[name="login"]').click
end

Quando("eu incluo o usuário inválido e senha válida") do |table|
  usuario_inv = table.rows_hash
  find('input[name="userName"]').set usuario_inv[:usuario]
  find('input[name="password"]').set usuario_inv[:senha]
  find('input[name="login"]').click
end

Quando("eu incluo o usuário válido e senha inválida") do |table|
  senha_inv = table.rows_hash
  find('input[name="userName"]').set senha_inv[:usuario]
  find('input[name="password"]').set senha_inv[:senha]
  find('input[name="login"]').click
end

Então("sou autenticado com sucesso") do |table|
  resultado = table.rows_hash
  expect(page).to have_content(resultado[:autenticacao])
end

Então("permaneco na pagina login") do |table|
  resultado = table.rows_hash
  expect(page).to have_content(resultado[:autenticacao])
end

#Login3
Dado("que eu logo na pagina") do
  @inicial_page = InicialPage.new
  @inicial_page.load
  @inicial_page.clicar_signon
end

Quando("eu incluo meu {string} e {string}") do |usuario, senha|
  @login_page = LoginPage.new
  @login_page.logar(usuario, senha)
end

Entao("devo visualizar a {string}") do |autenticacao|
  expect(page).to have_content autenticacao
end



