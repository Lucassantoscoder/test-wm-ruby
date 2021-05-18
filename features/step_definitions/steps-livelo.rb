Dado('que acesso o site de compras') do
    page.windows[0].maximize
    #timeout
    #get site
    visit 'https://www.livelo.com.br/'
    sleep 5
    #autoriza cookies
    find(id:'btn-authorizeCoookies').click()
  end   
  

  Quando('realizo uma busca pelo produto {string}') do |ventilador|
    #escreve produto e entra
    find(id:'input-search').send_keys 'ventilador', :enter
    sleep 5
  
  end
  

  Então('Adiciono no carrinho e verifico') do
    #clica no produto
    find(id:'CC-product-list-name-LVL17311786-01').click()
    #escolhe a voltagem
    sleep 5
    find(id:'CC-prodDetails-sku-type_other_v_voltage').click()
    #220v
    find(id:'#option-1').click()
    #adiciono no carrinho
    find(id:'cc-prodDetails-addToCart').click()
    sleep 10
   
  end
  

