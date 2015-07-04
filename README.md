# shackspace-Glossar

Hier entsteht das shackspace-Glossar.
Es dient der Einführung neuer Mitglieder in die Abläufe und Gepflogenheiten des "shack" (Hackerspace in Stuttgart).

Jedes Stichwort erhält einen Kurztext, geschrieben in Markdown.
Daraus kann später ein komplettes Dokument als HTML, Wiki, PDF, EPUB oder was-auch-immer entstehen.

Manche Stichworte sind noch leer.
Regelmässige Besucher und Nutzer des shack sind herzlich eingeladen, beim weiteren Befüllen der Lücken mitzuhelfen.


## Pandoc-Installation

Die finalen Dokumente werden wir mit Hilfe von [`pandoc`](http://pandoc/org/) erzeugen.

Empfehlung: Installation von Pandoc über `cabal` (das Haskell-System zur distributions-unabhängigen Paket-Verwaltung).

```.bash
cabal update
cabal install cabal-install
export PATH=${HOME}/.cabal/bin:${PATH}
cabal install pandoc pandoc-citeproc pandoc-csv2table
```

## Kommandos zum Erzeugen von EPUB, HTML, PDF und DokuWiki

Dies ist der erste "quick'n'dirty" Wurf. Später wird das ein Makefile erledigen.

```.bash
cd markdown

# EPUB3 erzeugen (noch ohne spezifischess CSS-Stylsheet) 
pandoc                                                              \
    --output=../vorschau-beispiele/shackspace-glossar.epub          \
    --to=epub3                                                      \
    --toc                                                           \
    --chapters                                                      \
    --epub-chapter-level=2                                          \
      00-titel-shack.md                                             \
      01-index.md                                                   \
      *.mmd

# HTML5 erzeugen (noch ohne spezifischess CSS-Stylsheet) 
pandoc                                                              \
    --output=../vorschau-beispiele/shackspace-glossar-mit-css.html  \
    --to=html5                                                      \
    --toc                                                           \
    --chapters                                                      \
    --epub-chapter-level=2                                          \
    --self-contained                                                \
    --css=../resources/github-pandoc.css                            \
    --css=../resources/table.css                                    \
      00-titel-shack.md                                             \
      01-index.md                                                   \
      *.mmd

# HTML5 erzeugen (noch ohne spezifischess CSS-Stylsheet) 
pandoc                                                              \
    --output=../vorschau-beispiele/shackspace-glossar.html          \
    --to=html5                                                      \
    --toc                                                           \
    --chapters                                                      \
    --epub-chapter-level=2                                          \
    --standalone                                                    \
      00-titel-shack.md                                             \
      01-index.md                                                   \
      *.mmd

# DokuWiki erzeugen
pandoc                                                              \
    --output=../vorschau-beispiele/shackspace-glossar.dokuwiki      \
    --to=dokuwiki                                                   \
    --toc                                                           \
    --chapters                                                      \
    --epub-chapter-level=2                                          \
      00-titel-shack.md                                             \
      01-index.md                                                   \
      *.mmd

# PDF erzeugen (A4, Porträt)
pandoc                                                              \
    --output=../vorschau-beispiele/shackspace-glossar-A4.pdf        \
    --toc                                                           \
    --chapters                                                      \
    --highlight-style=espresso                                      \
    -V geometry:"margin=2cm, paperwidth=595pt, paperheight=842pt"   \
      00-titel-shack.md                                             \
      01-index.md                                                   \
      *.mmd

# PDF erzeugen (A5, Landscape)
pandoc                                                              \
    --output=../vorschau-beispiele/shackspace-glossar-A5q.pdf       \
    --toc                                                           \
    --chapters                                                      \
    --highlight-style=espresso                                      \
    --latex-engine=xelatex                                          \
    -V geometry:"margin=1cm, paperwidth=595pt, paperheight=421pt"   \
    -V fontsize:8pt                                                 \
    -V classoption=twocolumn                                        \
    -V linkcolor=blue                                               \
      00-titel-shack.md                                             \
      01-index.md                                                   \
      *.mmd
```

