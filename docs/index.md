---
title: "A Grammar of the Persian Language"
subtitle:  "9th Edition"
author: "William Jones"
date: ""
documentclass: book
geometry:
# A4 2 pages per sheet draft
#- paper=a5paper               # a5: 148.5 by 210mm
#- paperwidth=170mm
#- paperheight=244mm
- paperwidth=156mm
- paperheight=234mm
- bindingoffset=16mm
- textwidth=114.8mm           # = (170 - 6)*0.7
- textheight=170.8mm          # = 244 * 0.7
- twoside
mainfont: Junicode
mainfontoptions: Numbers=OldStyle
fontsize: 10pt
polyglossia-lang:
  name: en
polyglossia-otherlangs:
  - name: arabic
fontfamilies:
  - name: \arabicfont
    font: Vazir-Light
    options: Script=Arabic,Scale=1.0
  - name: \tradarab
    font: Amiri
    options: Script=Arabic,Scale=1.0
  - name: \tradarabsmall
    font: Amiri
    options: Script=Arabic,Scale=0.75
csquotes: true
output:
  bookdown::gitbook:
    pandoc_args: ["--lua-filter=trn.lua"]
    keep_md: yes
    css: mystyle.css
    number_sections: true
    config:
      toc:
        collapse: section
        scroll_highlight: yes
        before: null
        after: null
      toolbar:
        position: fixed
      edit : null
      download: null
      search: yes
      fontsettings:
        theme: white
        family: serif
        size: 2
      sharing:
        facebook: yes
        github: no
        twitter: yes
        linkedin: yes
        weibo: no
        instapaper: no
        vk: no
        all: ['facebook', 'twitter', 'linkedin', 'weibo', 'instapaper']
      info: yes
  bookdown::pdf_book:
    number_sections: true
    latex_engine: xelatex
    pandoc_args: ["--lua-filter=trn.lua", "--columns=65"] # for forcing word wrap in pipe tables
    #template: default_latex_template.tex # with Brill font the PDF font is too large and this needs to be uncommented. includes and in_header should then be commented
    includes:
      before_body: "frontpage.tex"
      in_header: "preamble.tex"
    keep_tex: true
---

# Preface {-}
<!--The following line is needed because Preface is an unnumbered chapter and otherwise fancy header will print the header text for the previous chapter "Contents"-->
\markboth{Preface}{Preface}

<!--to allow git describe to run-->

Jones' Persian grammar.

<!--chapter:end:index.Rmd-->

# On the Alphabet


<!--chapter:end:001.Rmd-->

# Of the Figures


<!--chapter:end:002.Rmd-->

# Of the Nouns [??????????]{.ar}

## Of Genders [??????????]{.ar}

55\. The reader will soon perceive with pleasure a great resemblance 
between the Persian and English languages, in the facility and simplicity 
of their form and construction ; both have no difference of termination 
to mark the gender, either in substantives or adjectives : all inanimate 
things are neuter ; and, animals of different sexes, either have different 
names, as [????????]{.ar} [pisar]{.trn}, a son , a boy ; [??????????]{.ar} [kanIz]{.trn}, a girl ; [????????]{.ar} [asp]{.trn}, a horse ; 
[??????????????]{.ar} [madiyaN]{.trn}, a mare ; or are distinguished by the words [????]{.ar} [nar]{.trn}, male, 
and [????????]{.ar} [mAdah]{.trn} female; as [???????? ????]{.ar} [$Er-e nar]{.trn}, a lion ; [???????? ????????]{.ar} [$Er-e mAdah]{.trn},
a lioness ; these particles, however, are usually applied to irrational beings. 

56\. Arabic words indeed are often made feminine by receiving a 
silent ([??????]{.ar} Art. 29) final [??]{.ar}, as [??????????????]{.ar} [ma!$Uq]{.trn}, a friend; amicus, 
[????????????????]{.ar} [ma!$Uqah]{.trn} , a mistress ; amica, as in this verse : 

[?????? ???? ???? ???? ???????? ???? ???????? ?? ???????????????? ??????????????]{.ar}

The rose in my bosom, the wine on my palm, and the beloved is to my 
desire. 

57\. But, if such noun do not signify a rational being, they consider it 
as neuter, and change the final [??]{.ar} into [??]{.ar}, and drop the ([?????]{.ar}) [tanwIn]{.trn2}, as 
[??????????????]{.ar} [ni!matun]{.trn}, a benefit, [????????????]{.ar}: and, indeed, nouns ending in [??]{.ar}, are, 
for the most part, borrowed from the Arabs. 



<!--chapter:end:003.Rmd-->

