# A digital edition of Jones' Persian Grammar 9th edition

Only one page typeset. Published here: https://adamiturabi.github.io/persian-jones/of-the-nouns-%D8%A7%D8%B3%D9%92%D9%85%D8%A7.html

## Install software prerequisites

(For Ubuntu and derivatives)

1. Tex
   ```
   sudo apt install texlive-base
   sudo apt install texlive-xetex
   sudo apt install texlive-lang-arabic
   
   ```
2. Fonts
   + In current use:
     + Junicode: https://github.com/psb1558/Junicode-font/releases/tag/v1.003
     + Amiri: https://github.com/alif-type/amiri/releases/latest
     + Vazir: https://github.com/rastikerdar/vazir-font/releases/latest

3. Pandoc
   ```
   sudo apt install pandoc
   ```
   
4. R
   ```
   sudo apt install r-base
   sudo apt install libcurl4-openssl-dev libfontconfig1-dev libssl-dev libxml2-dev
   ```

5. Rmarkdown and Bookdown
   1. Open R in a terminal
      ```
      sudo R
      ```
   2. In R:
      ```
      install.packages("rmarkdown", dependencies = TRUE)
      install.packages("bookdown", dependencies = TRUE)
      install.packages("kableExtra", dependencies = TRUE)
      install.packages("tidyverse", dependencies = TRUE)
      install.packages("pander", dependencies = TRUE)
      q()
      ```

## Building the book from source files

In a Linux terminal:

```
cd path-to-your-preferred-dir
git clone https://github.com/adamiturabi/arabic-tutorial-book.git
cd arabic-tutorial-book
./buildscript
```

The created files will be under the `_book` directory. Open `_book/index.html` in a browser and `_book/_main.pdf` in a PDF viewer.

To delete created files in order to do a clean build:

```
./cleanbuild
```

