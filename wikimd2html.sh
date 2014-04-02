for file in *.md; do sudo grip --gfm --context=PecanProject/bety --export  title.md; done
for file in *.md; do python -m markdown title.md > title.md.html; done; 
