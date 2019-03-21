class InicialPage < SitePrism::Page
    set_url '/mercurywelcome.php'
    element :btn_signon, 'a[href*="mercurysignon.php"]'
    element :btn_register, 'a[text="REGISTER"]'

    def clicar_signon
        btn_signon.click
    end
end