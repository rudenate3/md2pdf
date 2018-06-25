# md2pdf

### Bash script for converting multiple remote markdown files into one epub file



#### Requirements

md2pdf requires [Pandoc](https://pandoc.org/installing.html)

#### Usage

`./md2pdf.sh` to run the script.  Enter the URL to the raw MarkDown file you wish to add to the epub.  You can add as many as you'd like.  Once done, it will prompt you for a name of the file and for an image to use.

#### Future

There are a couple of glaring issues with the script as is:

* Must fail gracefully
* Add ability to choose epub or pdf
* Must handle no image file