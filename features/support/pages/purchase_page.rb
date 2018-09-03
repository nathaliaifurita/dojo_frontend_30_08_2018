class PurchasePage < SitePrism::Page
    set_url '/mercurypurchase.php'

    element :ida, 'tr[align="left"] td[class="frame_header_info align"]'
    element :volta, 'tr[align="left"] td[class="data_left"]'
end