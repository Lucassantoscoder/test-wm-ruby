Dado('Acessa Site web Motors com erro') do
  page.windows[0].maximize

  #get site webmotors
  visit 'https://www.webmotors.com.br/'

  #aceita cookies
  find(:xpath,'//*[@id="root"]/div[3]/div[2]/button').click()
  sleep 3
  end
  
Quando('busca veiculo com erro') do
  #busca ofertas
  find(:xpath,'//*[@id="WhiteBox"]/div[1]/div[2]/div/div/a').click()
 
  # clica marca honda
  find(:xpath, '//*[@id="root"]/main/div[1]/div[2]/div/div[1]/div[2]/div[2]/div/form/div[3]/div[2]/div/div/a[4]').click()
 
  #clica modelo
  find(:xpath,'//*[@id="root"]/main/div[1]/div[2]/div/div[1]/div[2]/div[2]/div/form/div[3]/div[2]/div[2]/div[2]').click()
  sleep 3
  find(:xpath,'//*[@id="root"]/main/div[1]/div[2]/div/div[3]/div/div[5]/a[2]').click()
 
  #clica versao
  find(:xpath,'//*[@id="root"]/main/div[1]/div[2]/div/div[1]/div[2]/div[2]/div/form/div[3]/div[2]/div[2]/div[3]').click()
  sleep 3
  find(:xpath, '//*[@id="root"]/main/div[1]/div[2]/div/div[2]/div/div[4]/a[1]').click()
  sleep 5
  end
  
  Então('Valida Com nome errado deve Retornar erro') do
  # Valida modelo e marca
  expect(page).to have_content ('Honda Civic 1.5 Dx 16v Flex 4p Automático Novos e Usados')
  #assert  busca com nome ( errado )
  sleep 5
  end