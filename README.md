# Dominando o Sublime Text

## Gerando o site

1. Instale o [troy](http://rubygems.org/gems/troy) e instale as dependências com o comando `bundle install`.
2. Exporte os arquivos estáticos com o comando `troy export`.
3. Inicie o servidor local com o comando `troy server`.
4. Acesse o endereço <http://localhost:9292>

## Adicionando legendas

Para adicionar uma nova legenda relativa ao seu sistema operacional, siga a nomenclatura abaixo:

- `mac.vtt` — Legenda com shortcuts específicos de Mac
- `other.vtt` — Legenda com shortcuts para Linux e Windows
- `windows.vtt` — Legenda com shortcuts para Windows
- `linux.vtt` — Legenda com shortcuts para Linux
- `all.vtt` — Legenda para todos os sistemas operacionais

## Licença

Copyright (c) 2014 Nando Vieira

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
