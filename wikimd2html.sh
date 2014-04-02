for file in *.md; do sudo grip --gfm --context=PecanProject/bety --export  title.md; done
for file in *.md; do python -m markdown title.md > title.md.html; done; 
for file in *.md; do ~/.cabal/bin/pandoc --from markdown_github --to html --standalone title.md -o title.md.html; done
rename 's/\.md//' *.md.html
for file in *.md; do ~/.cabal/bin/pandoc --from markdown_github --to html --standalone --mathjax title.md -o title.md.html; done
