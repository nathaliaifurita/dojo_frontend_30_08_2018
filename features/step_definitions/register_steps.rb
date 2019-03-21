Dado("que eu esteja na tela do register") do
    @inicial_page = InicialPage.new
    @inicial_page.load
    click_link(‘REGISTER’)
    @inicial_page.btn_register.click


end

Quando("preencho os dados na tela para realizar o registro") do
    # @register = RegisterPage.new 
    # fill_in(@RegisterPage.firstname, :with=> 'John')
    # fill_in(@RegisterPage.lastname, :with=> 'Lenon')
    # fill_in(@RegisterPage.phone, :with=> '55119999999')
    # fill_in(@RegisterPage.email, :with=> 'John@email.com')
    # fill_in(@RegisterPage.address1, :with=> 'Rua 1')
    # fill_in(@RegisterPage.address2, :with=> 'Alameda Tocantins')
    # fill_in(@RegisterPage.city, :with=> 'Alphaville')
    # fill_in(@RegisterPage.state, :with=> 'São Paulo')
    # fill_in(@RegisterPage.postalCode, :with=> '051641')
    # fill_in(@RegisterPage.state, :with=> 'Alameda Tocantins')
    # fill_in(@RegisterPage.city, :with=> 'Alphaville')
  
end

Entao("realizo o registro de um novo usuario com sucesso") do
  pending # Write code here that turns the phrase above into concrete actions
end