class InicialPage < SitePrism::Page
    set_url '/mercuryreservation.php'
    element :btn_signoff, 'a[href*="mercurysignoff.php"]'

    def deslogar
        btn_signoff.click
    end
end