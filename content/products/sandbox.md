---
title: "SANDBOX (DEV)"
image: "/uploads/products/sand_box/bild01_paypal.png"
weight: 100
isActive: false

---
###### {{< html-link-span "/produkte" "Zurück">}}


##  achtung: folgende links/buttons sandbox (verkäufer konto hpsof)

### link-version(in neuem tab/fenster):

- [Karten kaufen](https://www.sandbox.paypal.com/ncp/payment/QLKQS8THFQQWJ)

### link als button in markup?

#### in form als submit :

- <form action="https://www.sandbox.paypal.com/ncp/payment/QLKQS8THFQQWJ" target="_blank">
    <input type="submit" value="Karten kaufen" />
</form>

#### input type button (in neuem tab/fenster):

- <input type="button" onclick=" window.open('https://www.sandbox.paypal.com/ncp/payment/QLKQS8THFQQWJ','_blank' ) " value="Karten kaufen" />

#### mit Bootstrap (in neuem tab/fenster):

- <a class="btn btn-primary" href="https://www.sandbox.paypal.com/ncp/payment/QLKQS8THFQQWJ" target="_blank">Karten kaufen</a>

### version mit gestapelten buttons:

<script src="https://www.paypal.com/sdk/js?client-id=BAAM4ufOR539XXSDLPbD0-sSd8gP20yLP_11yppM8x_IDxVLM2AtO0W0vs5QYvx3UrHw7kzGj5BTzSbouY&components=hosted-buttons&disable-funding=venmo&currency=CHF"></script>
<div id="paypal-container-QLKQS8THFQQWJ"></div>
<script>
  paypal.HostedButtons({
    hostedButtonId: "QLKQS8THFQQWJ",
  }).render("#paypal-container-QLKQS8THFQQWJ")
</script>


### Paypal Buch alles OK (Wahl Sprachversion) :
<a class="btn btn-primary" href="https://www.sandbox.paypal.com/ncp/payment/NHEJW77NGURTU" target="_blank">Kaufen</a>
<hr />

### neue version (2024-12-19) als link in neuem tab:

- [Buch Sabine kaufen](https://www.sandbox.paypal.com/ncp/payment/TVFQZ5MD2Y3QL)


----------

 - <a class="btn btn-primary" href=https://payment-links.mollie.com/payment/eATaLr3iZEaAcJrQ8SL3G target="_blank">Produkt kaufen (TESTkauf 1chf mollie)</a>


----------
- ### paypal form sabine konto "heiss"
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
  <input type="hidden" name="cmd" value="_s-xclick" />
  <input type="hidden" name="hosted_button_id" value="FBKLG5QSJGEVG" />
  <table>
    <tr>
      <td>
        <input type="hidden" name="on0" value="Buch in folgender Sprachversion:"/>
        Buch in folgender Sprachversion:
      </td>
    </tr>
    <tr>
      <td>
        <select name="os0">
          <option value="Deutsch">
            Deutsch CHF 2.00
          </option>
          <option value="Français">
            Français CHF 1.50
          </option>
          <option value="Italiano">
            Italiano CHF 1.00
          </option>
        </select>
      </td>
    </tr>
    <tr>
      <td>
        <input type="hidden" name="on1" value="Versand für EU : Bitte für [Land] anfragen"/>
        Versand für EU : Bitte f&uuml;r [Land] anfragen
      </td>
    </tr>
    <tr>
      <td>
        <input type="text" name="os1" maxLength="200" />
      </td>
    </tr>
  </table>
  <input type="hidden" name="currency_code" value="CHF" />
  <input type="image" src="https://www.paypalobjects.com/de_DE/CH/i/btn/btn_buynow_SM.gif" border="0" name="submit" title="PayPal – Einfacher und sicherer online bezahlen." alt="Jetzt kaufen" />
</form>