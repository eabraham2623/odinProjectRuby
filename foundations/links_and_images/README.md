# Links and Images

## Anchor elemements
* any text wrapped in anchor tag `<a>` without `href` attribute will look like plain text
* Not just links on internet, but HTML docs, videos, pdfs, images, etc

## Absolute and Relative Links
* Links to pages on internet
* Links to pages on website
### Absolute Links
* Links to pages web are absolute links
    * `protocol://domain/path`
    * absolute will always contain protocol and domain of dest.

### Relative Links
* Links to other pages are relative links
* do not include domain name
* adding `./` before link in most cases will prevent issues, specicifies to code to start looking for file relative to current directory

## Images
* Use `<img>` element, no closing tag
* Every image should have `alt` attribute to describe image
* Image formats:
    * JPG
        * handling large color paletes
    * GIF
        * simple animations
    * PNG
        * Great for anything not a photo
        * don't have color palette limits
    * SVG
        * Vector based
        * Scale up or down to any dimension wihout loss quality

# Knowledge Check
* Element to create a link is `<a>` 
* Attributes are information about an html element, made up of name and value
* `href` is an attribute that tells links to go
*  absolute link uses domain, protocol, etc while relative uses paths to files for pages on websites
* `<img>` is used to display an image
* `src` and `alt` is needed in `<img>` tag
* To access parent directory in filepath, use `../`
* JPG, GIF, PNG, and SVG are four main images on web that can be used