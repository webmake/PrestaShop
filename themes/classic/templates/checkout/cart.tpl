{extends file=$layout}

{block name='content'}

  <section id="main">
    <div class="cart-grid">

      <!-- Left Block: cart product informations & shpping -->
      <div class="cart-grid-body col-xs-12 col-md-8">

        <!-- cart products detailed -->
        <div class="card card-shadow">
          <div class="card-block">
            <h1 class="h1">{l s='Shopping Cart'}</h1>
          </div>
          <hr>
          {block name='cart_overview'}
            {include file='checkout/_partials/cart-detailed.tpl' cart=$cart}
          {/block}

        </div>

        <a class="label" href="{$urls.pages.index}">
          <i class="material-icons">chevron_left</i>{l s='Continue shopping'}
        </a>

        <!-- shipping informations -->
        <div class="card">
          {hook h='displayShoppingCart'}
        </div>
      </div>

      <!-- Right Block: cart subtotal & cart total -->
      <div class="cart-grid-right col-xs-6 col-md-4">

        <div class="card card-shadow cart-summary">

          {block name='cart_summary_line'}
            {include file='checkout/_partials/cart-summary-items-subtotal.tpl' cart=$cart}
          {/block}

          {block name='cart_voucher'}
            {include file='checkout/_partials/cart-voucher.tpl'}
          {/block}

          {hook h='displayShoppingCart'}

          {block name='cart_totals'}
            {include file='checkout/_partials/cart-detailed-totals.tpl' cart=$cart}
          {/block}

          <div class="checkout text-xs-center card-block">
            <ul>
              <li>
                <a href="{$urls.pages.order}" class="btn btn-primary">{l s='Checkout'}</a>
              </li>
            </ul>
            {hook h='displayExpressCheckout'}
          </div>

        </div>

        {hook h='displayReassurance'}

      </div>

    </div>
  </section>
{/block}
