[[TOC]]

Para editar os arquivos .md (markdown) você deve utilizar o editor VSCODE

1) Adicionar o complemento `jebbs.markdown-extended`
2) Configurar, abrir o menu: File > Preferences > Settings  ou pression CTRL+,
```
    "markdown.styles": [
        //"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css",
        "markdown-pdf.css"
    ],
    "[markdown]": {
        "files.trimTrailingWhitespace": false, // use 2 espaços no final para ter uma quebra de linha
        "editor.wordWrap": "on",
        "editor.quickSuggestions": true
    },

```

3) Abrir esta pasta como o principal (aonde esta o arquivo mardown-pdf.css)

https://github.com/puppeteer/puppeteer/blob/v1.4.0/docs/api.md#pagepdfoptions

## Instruções de Uso

- **NÃO** usar nenhum formatador de código, senão vai estragar algumas partes
- Para ter quebras de páginas, use o código `<div class='page'>&nbsp;</div>`

Exemplos (se tiver instalado o complemento `jebbs.markdown-extended`):

!!!note ""
    This is the **note** admonition body
 
!!!note
    This is the **note** admonition body

 !!! danger
    This is the danger admonition body

!!!summary ""
    This is the **note** admonition body

!!!abstract
    This is the **note** admonition body

!!!tldr
    This is the **note** admonition body

!!!info
    This is the **note** admonition body
!!!todo A Fazer
    This is the **note** admonition body
!!!tip
    This is the **note** admonition body
!!!hint
    This is the **note** admonition body
!!!success
    This is the **note** admonition body
!!!check
    This is the **note** admonition body
!!!done
    This is the **note** admonition body
!!!question
    This is the **note** admonition body
!!!help
    This is the **note** admonition body
!!!faq
    This is the **note** admonition body
!!!warning
    This is the **note** admonition body
!!!attention
    This is the **note** admonition body
!!!caution
    This is the **note** admonition body
!!!failure
    This is the **note** admonition body
!!!fail
    This is the **note** admonition body
!!!missing
    This is the **note** admonition body
!!!error
    This is the **note** admonition body
!!!bug
    This is the **note** admonition body
!!!example
    This is the **note** admonition body
!!!snippet
    This is the **note** admonition body
!!!quote
    This is the **note** admonition body
!!!cite
    This is the **note** admonition body

## Gerando e Salvando Versão

Na branch de **desenv** salvar todos os arquivos markdown (.md) e html e outros elementos para gerar o pdf, então salve no git (commit). 

Ao ter uma versão final do pdf, mude de branch (para master) e então faça o commit do arquivo pdf na master. Assim só teremos branch as versões finais dos arquivos PDF.


<script>
document.write("aaaa");
</script>