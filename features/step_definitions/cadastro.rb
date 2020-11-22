Dado("que acesso o sistema com o {string}  e {string}") do |usuario, senha|
    @cadastro_page.go(usuario, senha)
    expect(page).to have_content 'Desafio QA' 
end
  
Dado("acesso fomulario para novo cadastro") do
    @cadastro_page.formulario
    expect(page).to have_content 'Instruções de preenchimento:' 
end
Então("escolho o {string}") do |tipo|
   #@prod =  @carrinho_page.produto(produto)
   @cadastro_page.tipo(tipo)
 end
 

 Dado("informo a {string}") do |razaosocial|
    @cadastro_page.razaosocial(razaosocial)
    
  end
  
  Dado("preencho o {string}") do |nomefantasia|
    @cadastro_page.nomefantasia(nomefantasia)
  end
  
  Dado("informo o campo {string}") do |cnpj|
   @cn = @cadastro_page.cnpj(cnpj)
  end
  
  Então("informo o {string} e {string}") do |email, contato|
        @cadastro_page.ec(email, contato)
  end
  
  Então("preencho o {string} e {int}") do |ddd, celular|
    @cadastro_page.dc(ddd, celular)
  end

  Então("finalizo o cadastro") do
    @cadastro_page.fdc
    expect(page).to have_content 'Desafio QA'
  end

  Então("realizo a busca por {string}") do |cnpj|
    @cadastro_page.busca(cnpj)
  end
  
  Entao("devo ver o {string} na tela") do |nomefantasia|
      @cadastro_page.tab(nomefantasia)
     expect(page).to have_content nomefantasia
  end
       
  Então("associo a {string}") do |agencia|
    @cadastro_page.ag(agencia)
  end

  Entao("escolho a opção de editar") do 
    @cadastro_page.editar
  end

  Entao("informo o novo {string}") do |cnpj2|
      @cadastro_page.editar_cnpj(cnpj2) 
  end
 
  Entao("escolho a opção de excluir") do
    @cadastro_page.excluir
  end
  
  Entao("o sitema exibe a {string}") do |msg|
    expect(page).to have_content msg
  end

  Entao("escolho a opção de excluir e cancelo a exclusao") do
    @cadastro_page.excluir_cancel
  end
 
  
  Entao("o sistema de apresentar a {string}") do |msg|
        @cadastro_page.alert(msg)
  end

























































