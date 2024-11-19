typst compile src/template/invoice.typ --root . invoice.pdf
typst compile src/template/receipt.typ --root . receipt.pdf

pdftoppm -png -singlefile -r 300 invoice.pdf images/invoice.png
pdftoppm -png -singlefile -r 300 receipt.pdf images/receipt.png
