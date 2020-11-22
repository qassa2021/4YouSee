class CadastroPage
    include Capybara::DSL
    def go(usuario, senha)
        visit "/"
        find('input[name=usr_log]').set usuario
        find("input[name=usr_sen]").set senha
        click_button "Entrar"
    end
   
    def formulario
        find('#managerContent > table > tbody > tr > td.tb_esq_solid > table.navbar-header > tbody > tr > td.text-right > div > a:nth-child(1)').click
    end
   
    def tipo(tipo)
        choose(tipo)
    end

    def razaosocial(razaosocial)
        find('input[name=empRazao]').set razaosocial
    end

    def nomefantasia(nomefantasia)
        find('#empFantasia').set nomefantasia
    end
    
    def cnpj(cnpj)
        find('#empCNPJ').set cnpj
    end

    def ec(email, contato) 
        find('#email').set email
        find('#nomeContato').set contato
    end

    def dc(ddd, celular) 
        find('#telCelular_ddd').set ddd
        find('#telCelular').set celular
    end
    
    def fdc 
        find('#Adicionar').click
    end

    def busca(cnpj)
        find('#cnpj').set cnpj
        find('#for > div > div:nth-child(7) > span > button:nth-child(1)').click

    end
    
    def tab(nomefantasia)
        all('table tbody tr', text: nomefantasia)
    end
    
    def ag(agencia)
        c = find('.select2-selection__rendered').click 
        find('.select2-results__option', text: agencia).click 
    end
    def editar
        find('.edit').click
    end
    def editar_cnpj(cnpj2)
        find('#litempCNPJ').set cnpj2
        find('.botao-verde').click
    end

    def excluir
        find('.remove').click
        msg = page.driver.browser.switch_to.alert.text
        page.driver.browser.switch_to.alert.accept
    end
    
    def excluir_cancel
        find('.remove').click
        msg = page.driver.browser.switch_to.alert.text
        page.driver.browser.switch_to.alert.dismiss
    end
    
      def alert(msg)
                find(".alert-danger").text
    end

end