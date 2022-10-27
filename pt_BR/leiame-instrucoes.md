[[TOC]]

## Requisitos

- Editor VSCODE
- Fontes TTF: https://github.com/google/fonts/archive/master.zip


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
    "markdownExtended.pdfHeaderTemplate": "<div style=\"font-size: 9px; margin: 0 auto;\"></div>",
    "markdownExtended.pdfFooterTemplate": "<div style=\"font-size: 8px; margin: 0 auto;\"> <span class='pageNumber'></span></div>",


```

3) Abrir esta pasta como o principal (aonde esta o arquivo mardown-pdf.css)

https://github.com/puppeteer/puppeteer/blob/v1.4.0/docs/api.md#pagepdfoptions

## Instruções de Uso

- **NÃO** usar nenhum formatador de código, senão vai estragar algumas partes
- Para ter quebras de páginas, use o código `<div class='page'>&nbsp;</div>`

Exemplos (se tiver instalado o complemento `jebbs.markdown-extended`):

!!!note ""
    This is the **note** admonition body, without title
 
!!!note
    This is the **note** admonition body

 !!! danger
    This is the danger admonition body

!!!summary
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

Na branch de **desenv** salvar apenas, todos os arquivos markdown (.md), imagens (.png, jpg) e estilos (.css) que são necessários para gerar o PDF.

Ao ter uma versão final do pdf, mude de branch (para master) e então faça o commit do arquivo pdf, somente, na master. Assim só teremos na branch master, as versões finais dos arquivos PDF.

Obs: Fora programado para algumas edições da escola sabatina, ter a versão com os versos da bíblia, ou sem. De padrão, é com os versos. Para gerar uma versão sem os versos, é necessário editar o arquivo markdown-pdf.css 


<script>
document.write("aaaa");
</script>


# Linux Ubuntu

Se estiver usando linux, instalar o gerenciador de fontes (ubuntu), neste gerenciador você pode instalar fontes do Google

```sh
sudo add-apt-repository ppa:font-manager/staging
sudo apt-get update
sudo apt-get install font-manager
```

- Alike
- Aref_Ruqaa
- Bellefair
- Calligraffitti
- Cantora_One
- Charm
- Chicle
- Cormorant_Upright
- Farsan
- Julee
- Lato
- Noticia_Text
- Oregano
