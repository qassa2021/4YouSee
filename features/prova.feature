            #language: pt
            Funcionalidade: Exercício - Teste Web 

            @exercicio1

            Esquema do Cenario: A - Simples

            Dado que realizo a <consulta>  
            Então valido o nome do <produto> nome do  <fornecerdor>
            E preço <normal> e preço para <assinante>
            Quando adiciono o produto ao carrinho
            Entao valido  os produtos no carrinho 

           Exemplos:
           |  consulta | produto                                                                                 | fornecerdor   |   normal      | assinante |
           |  "Ração"  | "Ração Golden Duo para Cães Adultos Sabor Salmão com Ervas e Cordeiro com Arroz - 15kg" | "Premier Pet" |  "154,90"     | "139,41"  |
                            
            @exercicio2

             Esquema do Cenario: B - Com Massa de Teste

            Dado que realizo a <consulta>  
            Então valido o nome do <produto> nome do  <fornecerdor>
            E preço <normal> e preço para <assinante>
            Quando adiciono o produto ao carrinho
            Entao valido  os produtos no carrinho 

            

           Exemplos:
           |  consulta    |  produto                                                                                | fornecerdor   |   normal      |  assinante   |
           |  "Ração"     | "Ração Golden Duo para Cães Adultos Sabor Salmão com Ervas e Cordeiro com Arroz - 15kg" | "Premier Pet" |  "R$ 154,90"  | "R$ 139,41"  |
           |  "urso"      | "Brinquedo No Limit Crochet Latex Urso Marrom para Cães"                                | "No Limit"    |  "R$ 29,99"   | "R$ 26,99"   |
           |  "passaro"   | "Ração Alcon Sabiás Pássaro Preto - 500g"                                               | "Alcon Pet"   |  "R$ 25,99"   | "R$ 23,39"   | 
           |  "pato"      | "Ração Quinoa N&D para Cães Skin & Coat sabor Pato"                                     | "N&D"         |  "R$ 157,50"  | "R$ 141,75"  |
           |  "porco"     | "Brinquedo No Limit Latex Porco x Pêra Amarelo para Cães"                               | "No Limit"    |  "R$ 29,99"   | "R$ 26,99"   |
           |  "casa"      | "Casa Furacão para Cães Preta"                                                          | "Furacão Pet" |  "R$ 54,00"   | "R$ 48,60"   |
           |  "Cachorro"  | "Brinquedo de Pelúcia Chalesco Cachorro"                                                | "Chalesco"    |  "R$ 24,99"   | "R$ 22,49"   |
           |  "pet"       | "Spray Relaxante Pet Society Stress Away 100ml"                                         | "Pet Society" |  "R$ 50,90"   | "R$ 45,81"   |
           |  "jardim"    | "Terra Terral Green para Jardim 25kg"                                                   | "Terral"      |  "R$ 29,99"   | "R$ 26,99"   |
           |  "vaso"      | "Vaso Luvidarte Cilindro Transparente"                                                  | "Luvidarte"   |  "R$ 57,99"   | "R$ 52,19"   |
           