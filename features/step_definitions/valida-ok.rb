Dado('Que Acesso Site Web Motors') do
  page.windows[0].maximize

  #get site webmotors
  visit 'https://www.webmotors.com.br/'

  #aceita cookies
  find(:xpath,'//*[@id="root"]/div[3]/div[2]/button').click()
  sleep 3
end

Quando('Realizo busca pelo Veiculo') do

  #busca ofertas
  find(:xpath,'//*[@id="WhiteBox"]/div[1]/div[2]/div/div/a').click()
 
  # clica marca honda
  find(:xpath,'//*[@id="root"]/main/div[1]/div[2]/div/div[1]/div[2]/div[2]/div/form/div[3]/div[2]/div/div/a[4]').click()
 
  #clica modelo
  find(:xpath,'//*[@id="root"]/main/div[1]/div[2]/div/div[1]/div[2]/div[2]/div/form/div[3]/div[2]/div[2]/div[2]').click()
  sleep 3
  find(:xpath,'//*[@id="root"]/main/div[1]/div[2]/div/div[3]/div/div[5]/a[2]').click()
 
  #clica versao
  find(:xpath,'//*[@id="root"]/main/div[1]/div[2]/div/div[1]/div[2]/div[2]/div/form/div[3]/div[2]/div[2]/div[3]').click()
  sleep 3
  find(:xpath,'//*[@id="root"]/main/div[1]/div[2]/div/div[2]/div/div[4]/a[1]').click()
  sleep 5
end


Então('Valida Marca Modelo e Versão') do
  # Valida modelo e marca
  expect(page).to have_content ('Honda City 1.5 Dx 16v Flex 4p Automático Novos e Usados')
  sleep 5 
end


Entao('listagem de carros da loja') do
  ##clica no segundo veiculo da lista e abri nova guia.
  visit 'https://www.webmotors.com.br/carros/estoque/?idrevendedor=3862000&idcmpint=t1:c17:m07:webmotors:ver-estoque-vendedor::'
  sleep 5
  # Valida estoque veiculos ** Esta com problema nos elementos para encontralos**
  expect(page).to have_content ('carros encontrados')
  sleep 5
end