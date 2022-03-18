# HTML Boilerplate

* Web servers by default will look for an `index.html` page when users land on our websites

## The DOCTYPE
---
* Every HTML page starts with a doctype declaration
* Tells browser what version of HTML it should render
* HTML 5 version is `<!DOCTYPE html>`
* Older version, 4 was like this:
    * `<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">`

## HTML Element
---
* `lang` specifies language of text content in element
    * allows for assistive technologies to adapt, screen readers

## Head Element
---
* `<head>` where we put meta information **ABOUT** our webpages
    * shouldn't use any element to display content of the webpage
* `<meta charset="utf-8">`
    * ensures webpage will display special symbols and characters from different languages correctly in browser
* `<title>My Web</title>` should always be included in head of HTML document
    * displayed on webpage browser tab
    * default's to it's file name