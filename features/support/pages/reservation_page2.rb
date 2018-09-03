class ReservationPage2 < SitePrism::Page
    set_url '/mercuryreservation2.php'

    element :btn_continue, 'input[name*="reserveFlights"]'

    def click_continue
        btn_continue.click
    end
end