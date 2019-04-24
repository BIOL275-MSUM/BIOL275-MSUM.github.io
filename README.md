## BIOL275-MSUM.github.io

Main repository for BIOL 275 Quantitative Biology @ Minnesota State University Moorhead.

### Bootstrap and Flatly

- links to BootstrapCDN using [these instructions](https://getbootstrap.com/docs/4.1/getting-started/download/)
- links to Flatly using [these instructions](https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css)

### Lightbox

I installed lightbox to make viewing screenshots easier. I mostly followed the instructions here: https://lokeshdhakar.com/projects/lightbox2/

Here's an overview:
- saved lightbox.css to root drive
- saved lightbox.js to root drive
- created a lightbox.html file which contains the code to link the css file (you can't just do it in _site.yml as with styles.css because you can only have one css file in _site.yml)
- added an include in the footer.html file, just before the end of the <body> tag
- used appropriate html in the Rmd documents, instead of Rmd's shortcut code for inserting images