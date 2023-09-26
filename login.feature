            #language: pt

            Funcionalidade: Login

            Contexto: Dado que eu acesse a página de login

            Cenário: Direcionamento para a tela de checkout
            Quando eu digitar as seguintes credenciais:

            | email               | senha     |
            | luccas@email.com.br | 6maiL@123 |
            | andre@email.com.br  | 3maiL@126 |

            Então deve ser exibida a página de checkout

            Esquema do Cenário: Credenciais inválidas
            Quando eu digitar o email <email>
            E a senha <senha>
            Então deve ser retornada uma mensagem de alerta <mensagem>

            Exemplos:
            | email            | senha     | mensagem                     |
            | luccas@email.co  | 6maiL@123 | "Usuário ou senha inválidos" |
            | luccas@email.com | 000000    | "Usuário ou senha inválidos" |
            | 0101@email.com   | 6maiL@123 | "Usuário ou senha inválidos" |          