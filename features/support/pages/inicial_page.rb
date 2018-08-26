class InicialPage < SitePrism::Page
    set_url ''
    element :btn_signon, 'a[href*="mercurysignon.php"]'

    def clicar_signon
        btn_signon.click
    end
end