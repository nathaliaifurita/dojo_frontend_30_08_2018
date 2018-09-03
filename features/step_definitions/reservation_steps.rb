Dado("que eu estou logado no site") do
    steps %{
        Dado que eu logo na pagina
        Quando eu incluo meu "qasampa" e "qasampa123"
    }
  end
  
  Quando("eu incluo as opcões de voo") do |table|
    @fields = table.rows_hash
    @reservation_page = ReservationPage.new
    @reservation_page.fill_fields(@fields)
  end
  
  
  Quando("escolho o voo") do
    @reservation_page2 = ReservationPage2.new
    @reservation_page2.click_continue
  end
  
  Entao("sou direcionado para a tela de finalização de compra {string} e {string}") do |ida, volta|
    @purchase_page = PurchasePage.new
    expect(@purchase_page).to have_content ida
    expect(@purchase_page).to have_content volta
  end
  