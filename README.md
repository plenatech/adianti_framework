# Adianti Framework PHP

Adianti Framework fornece uma arquitetura completa para o desenvolvimento de aplicações PHP, reduzindo os custos de desenvolvimento e auxiliando desenvolvedores a escreverem menos código-fonte.

Adianti Framework é um framework baseado em componentes e orientado à eventos que utiliza padrões de projeto popularmente conhecidos como o MVC (Model View Controller), Front Controller e padrões de projeto para ORM (Mapeamento Objeto Relacional) como Active Record e Repository.

Baseado em componentes
Containers e widgets completos
Formulários e datagrids
Extensibilidade

Criado por Pablo Dall'Oglio adianti@adianti.com.br Home-page: http://www.adianti.com.br/framework

## Update
Alguns cuidados são necessários ao atualizar o framework no repositório.  
Devido ao fato de que alguns diretórios não adotam o padrão de case exigido pela PSR-4, o autoload do Composer pode falhar, sendo necessário mapear os mesmos.
Isso impacta diretamente o uso de ferramentas como PHPStan e Psalm, que dependem do autoload para analisar o código corretamente.

Ao atualizar os arquivos do framework:  

1. Execute o script `build_classmap_dirs.sh` para gerar a lista de diretórios.  
2. Ajuste o conteúdo da chave `"classmap"` no `composer.json` com a saída do script.  
3. Valide e regenere o autoload.

Comandos recomendados para validação:

```bash
composer validate
composer dump-autoload -o
find framework/lib/adianti/ -name '*.php$' | wc -l
grep 'Adianti' vendor/composer/autoload_classmap.php | wc -l
```

Dica: compare os dois últimos números. Se estiverem iguais, significa que as classes foram incluídas corretamente no classmap.

## Repositório

⚠️ **Aviso**: Esta é uma redistribuição **não oficial** do Adianti Framework. Este repositório é mantido independentemente e **não é afiliado ou mantido** pelos criadores originais do Adianti Framework.

Este repositório armazena um histórico de versões do Adianti Framework, para que possam ser instalados por meio do composer, necessário e útil para o desenvolvimento de componentes que estendem o Framework em diferentes versões.
