            #language: pt

            Funcionalidade: Configurar produto

            Contexto: Dado que eu acesse a página do produto

            Cenário: Validar a obrigatoriedade das seleções de cor, tamanho e quantidade
            Quando eu não definir as informações de cor, tamanho, quantidade
            E tentar incluir o produto no carrinho
            Então deve exibir a mensagem de alerta "Seleções de cor, tamanho e quantidade são obrigatórias"

            Cenário: Inclusão do produto no carrinho
            Quando eu definir as seguintes informações do produto:

            | cor    | tamanho | quantidade |
            | orange | s       | 8          |
            | blue   | xl      | 1          |

            Então devo conseguir incluir o produto no carrinho

            Esquema do Cenário: Validar limite máximo de produtos por venda
            Quando eu incluir a cor <cor>, tamanho <tamanho> e a quantidade <quantidade> do produto
            Então devo conseguir incluir o produto no carrinho

            Exemplos:
            | cor    | tamanho | quantidade |
            | orange | s       | 1          |
            | blue   | xl      | 10         |

            Esquema do Cenário: Limite máximo de produtos por venda excedido
            Quando eu incluir a cor <cor>, tamanho <tamanho> e a quantidade <quantidade> do produto
            Então deve exibir a mensagem de alerta "Limite máximo por produto excedido, o limite é 10"
            
            Exemplos:
            | cor    | tamanho | quantidade |
            | orange | s       | 11         |
            | blue   | xl      | 100        |


            Cenário: Limpar carrinho
            E tenha definido a cor "orange" e o tamanho "s"
            Quando eu usar o recurso Limpar
            Então cor e tamanho devem voltar ao estado original


