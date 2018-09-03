class ReservationPage < SitePrism::Page
    set_url '/mercuryreservation.php'
    element :btn_signoff, 'a[href*="mercurysignoff.php"]'
    element :radio_type_roundtrip, 'input[value*="roundtrip"]'
    element :passengers, 'select[name*="passCount"]'
    element :departing_from, 'select[name*="fromPort"]'
    element :on_month, 'select[name*="fromMonth"]'
    element :on_date, 'select[name*="fromDay"]'
    element :arriving_in, 'select[name*="toPort"]'
    element :returning_month, 'select[name*="toMonth"]'
    element :returning_date, 'select[name*="toDay"]'
    element :radio_service_business, 'input[value*="Business"]'
    element :airline, 'select[name*="airline"]'
    element :btn_continue, 'input[name*="findFlights"]'


    def deslogar
        btn_signoff.click
    end

    def fill_fields(fields)
        radio_type_roundtrip.click
        passengers.select fields[:passengers]
        departing_from.select fields[:departing_from]
        on_month.select fields[:on_1]
        on_date.select fields[:on_2]
        arriving_in.select fields[:arriving_in]
        returning_month.select fields[:returning_1]
        returning_date.select fields[:returning_2]
        radio_service_business.click
        airline.select fields[:airline]
        btn_continue.click
    end
end