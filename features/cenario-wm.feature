#language:pt

Funcionalidade: Acesso Site Web Motors
 
    Acesso ao site Webmotors , e busca o Veiculo 
    verifica se Marca , Modelo e Versão do Veiculo .
    

Cenário: Busca Veiculo Marca Modelo e Versão

    Dado    Que Acesso Site Web Motors

    Quando  Realizo busca pelo Veiculo

    Então   Valida Marca Modelo e Versão

    Entao   listagem de carros da loja


Cenário: Testa a validação errada.

    Dado    Acessa Site web Motors com erro

    Quando  busca veiculo com erro

    Então   Valida Com nome errado deve Retornar erro







