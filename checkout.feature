            #language: pt

            Funcionalidade: Checkout

            Contexto: Dado que eu acesse a página de Cadastro

            Esquema do Cenário: Cadastro somente com campos obrigatórios
            Quando eu digitar Nome <nome>, Sobrenome <sobrenome>, País <pais>, Endereço <endereco>, Cidade <cidade>, Estado <estado>, CEP <cep>, Telefone <telefone>
            E E-mail <email>
            Então deve ser realizado o cadastro

            Exemplos:

            | nome    | sobrenome | pais   | endereco                 | cidade         | estado | cep       | telefone       | email                   |
            | Josias  | Cardoso   | Brasil | Rua Washington Luís, 123 | Rio de Janeiro | RJ     | 24567-908 | 21 9 9988-9988 | josias.c@email.com.br   |
            | Matilda | Honorato  | Brasil | Rua Gavião Peixoto, 56   | São Paulo      | SP     | 24567-456 | 21 9 9977-9668 | ho.matilda@email.com.br |

            Esquema do Cenário: Validar formato do e-mail incorreto
            Quando eu digitar o e-mail <email>
            Então deve ser exibida uma mensagem de erro <mensagem>

            | email            | mensagem                                          |
            | roberto@email.co | "Verifique se e-mail foi preenchido corretamente" |
            | roberto@         | "Verifique se e-mail foi preenchido corretamente" |
            | @email.com       | "Verifique se e-mail foi preenchido corretamente" |


            Cenário: Validar campos vazios
            Quando eu não digitar informações em email, senha
            E tentar realizar o cadastro
            Então deverá ser retornada mensagem de erro "É obrigatório o preenchimento dos campos e-mail e senha"
