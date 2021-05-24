Dado('que realizo a {string}') do |consulta|
     @prova_page.go(consulta)
end


Então('valido o nome do {string} nome do  {string}') do |produto, fornecerdor|
  @prod =  produto
  @for = fornecerdor

   expect(find('#divProdutoVariacao > div.col-md-9 > div.col-md-7.prod-info > h1').text).to have_content produto
   expect(find('#divProdutoVariacao > div.col-md-9 > div.col-md-7.prod-info > div:nth-child(3) > a:nth-child(2) > span').text).to have_content fornecerdor


end

Então('preço {string} e preço para {string}') do |normal, assinante|
  @norm = normal
  @ass = assinante
  expect(find('#divProdutoVariacao > div.col-md-3.price > div.price-box > div.opt-box > div:nth-child(1) > div > div').text).to have_content normal
  expect(find('#divProdutoVariacao > div.col-md-3.price > div.price-box > div.opt-box > div.opts > div.subscriber-info > div.values-holder > span.price-subscriber').text).to have_content assinante

end

Quando('adiciono o produto ao carrinho') do
  @prova_page.prod_carrinho
  end

Entao('valido  os produtos no carrinho') do

  expect(find('#sacola > div.col-md-9.produtosCarrinho > div > table > tbody > tr:nth-child(1) > td.td-resumo > a').text).to have_content @prod
  expect(find('#sacola > div.col-md-9.produtosCarrinho > div > table > tbody > tr:nth-child(1) > td.total').text).to have_content @norm

end