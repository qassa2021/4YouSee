            #language: pt
            Funcionalidade: Cadastro de Agência e Cliente

            @Cadastro @agencia

            Esquema do Cenario: Realizar cadastro de uma nova agencia 

            Dado que acesso o sistema com o <usuario>  e <senha>
            E acesso fomulario para novo cadastro
            Então escolho o <tipo>  
            E informo a <razaosocial>
            E preencho o <nomefantasia> 
            E informo o campo <cnpj>
            E informo o <email> e <contato> 
            E preencho o <ddd> e <celular> 
            Então finalizo o cadastro
            E realizo a busca por <cnpj>
            Entao devo ver o <nomefantasia> na tela

           Exemplos:
           | usuario       | senha     | tipo      | razaosocial         | nomefantasia | cnpj                 | email            | contato  | ddd  |celular    |
           | "homologacao" | "4yousee" | "Agência" | "vivabem"           |  "casa"      | "79.216.864/0001-03" | "viva@viva.com"  |  "Paulo" | "71" |985229941  |
           | "homologacao" | "4yousee" | "Agência" | "macos dos santos"  |  "sonolife"  | "79.216.864/0001-02" | "sono@sono.com"  |  "Pedro" | "71" |977229940  |
 
            @Cadastro @cliente

            Esquema do Cenario: Realizar cadastro de um novo cliente 

            Dado que acesso o sistema com o <usuario>  e <senha>
            E acesso fomulario para novo cadastro
            Então escolho o <tipo>
            E associo a <agencia>  
            E informo a <razaosocial>
            E preencho o <nomefantasia> 
            E informo o campo <cnpj>
            E informo o <email> e <contato> 
            E preencho o <ddd> e <celular> 
            Então finalizo o cadastro
            E realizo a busca por <cnpj>
            Entao devo ver o <nomefantasia> na tela

           Exemplos:
           | usuario       | senha     | tipo      | agencia     |razaosocial     | nomefantasia    | cnpj                 | email              | contato    | ddd  |celular    |
           | "homologacao" | "4yousee" | "Cliente" | "casa"      | "marcela leal" |  "doces do lar" | "79.216.864/0001-05" | "mar@hotmail.com"  |  "marcela" | "71" |999669941  |
           | "homologacao" | "4yousee" | "Cliente" | "sonolife"  | "Tiago"        |  "todo gas"     |   "02182859578"      | "ti@todogas.com"   |  "tiago"   | "71" |988735411  |
            
        @Pesquisar 

            Esquema do Cenario: Realizar consultas  de registro por CNPJ

            Dado que acesso o sistema com o <usuario>  e <senha>
            E realizo a busca por <cnpj>
            Entao devo ver o <nomefantasia> na tela

           Exemplos:
           | usuario       | senha     | cnpj                 |  nomefantasia    | 
           | "homologacao" | "4yousee" | "79.216.864/0001-05" |   "doces do lar" | 
           | "homologacao" | "4yousee" |   "02182859578"      |   "todo gas"     | 
      
        @Edicao 

            Esquema do Cenario: Realizar edição de registro 

            Dado que acesso o sistema com o <usuario>  e <senha>
            E realizo a busca por <cnpj>
            Entao devo ver o <nomefantasia> na tela
            E escolho a opção de editar
            E informo o novo <cnpj2>
            E realizo a busca por <cnpj2>
            Entao devo ver o <nomefantasia> na tela

           Exemplos:
           | usuario       | senha     | cnpj                 |  nomefantasia    | cnpj2                 |
           | "homologacao" | "4yousee" | "79.216.864/0001-05" |   "doces do lar" | "79.216.864/0001-23"  |
          
        @Exclusao @sucesso

            Esquema do Cenario: Realizar Exclusão do registro com sucesso

            Dado que acesso o sistema com o <usuario>  e <senha>
            E realizo a busca por <cnpj>
            Entao devo ver o <nomefantasia> na tela
            E escolho a opção de excluir 
            E o sitema exibe a <msg>
         
           Exemplos:
           | usuario       | senha     | cnpj          |  nomefantasia|         msg                        |
           | "homologacao" | "4yousee" | "02182859578" |   "todo gas" |"Registro excluído com sucesso."    |


        @Exclusao @cancelar

            Esquema do Cenario: Realizar cancelamento da Exclusão do registro com sucesso

            Dado que acesso o sistema com o <usuario>  e <senha>
            E realizo a busca por <cnpj>
            Entao devo ver o <nomefantasia> na tela
            E escolho a opção de excluir e cancelo a exclusao
            E realizo a busca por <cnpj>
            Entao devo ver o <nomefantasia> na tela
         
           Exemplos:
           | usuario       | senha     | cnpj                 |  nomefantasia    |
           | "homologacao" | "4yousee" | "79.216.864/0001-23" |   "doces do lar" |
 
           @Exclusao @Dependecia

            Esquema do Cenario: Realizar Exclusão de registro com dependencia e validação de menssagem  de alerta

            Dado que acesso o sistema com o <usuario>  e <senha>
            E realizo a busca por <cnpj>
            Entao devo ver o <nomefantasia> na tela
            E escolho a opção de excluir
            E o sistema de apresentar a <msg> 
         
           Exemplos:
           | usuario       | senha     | cnpj                 |  nomefantasia    |           msg                                                                               |
           | "homologacao" | "4yousee" | "79.216.864/0001-03" |   "casa"         |  "Este registro não pode ser excluído porque existem outros registros associados a ele."    |


      

   




          




