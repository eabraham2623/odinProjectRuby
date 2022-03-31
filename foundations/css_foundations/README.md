# CSS Foundations

## Basic Syntax
* made up of various rules
* ![](https://user-images.githubusercontent.com/70952936/130702428-4808becb-cbc4-4a4d-8fa7-f9aa5409768d.jpg)
* `<div>` is an empty container
## Selectors
* Selectors refer to the HTML elements which the CSS rules apply
### Universal Selector
* `*`, will select elements of any type

### Type Selectors
* will select all elements of the given element type
    * `div`, `h1`, etc

### Class Selectors
* Select all elements with a given class, an attribute placed on an element

```html
<!-- index.html -->

<div class="alert-text">
  Please agree to our terms of service.
</div>
```

```css
/* styles.css */

.alert-text {
  color: red;
}
```
* period immediately followed by case sensitive value of class attribute
* can add multiple classes to single element
    * `class="alert-text severe-alert".`

### ID Selectors

```html
<!-- index.html -->

<div id="title">My Awesome 90's Page</div>
```
```css
/* styles.css */

#title {
  background-color: red;
}
```
* We use hastag immediately followed by case sensitive value of ID attribute
* Use ID **sparingly**
* Element can only have ONE id

### Grouping Selector

```css
.read,
.unread {
  color: white;
  background-color: black;
}

.read {
  /* several unique declarations */
}

.unread {
  /* several unique declarations */
}
```
* Cuts down on repetition if classes share similar property and value

### Chaining Selectors
```html
<div>
  <div class="subsection header">Latest Posts</div>
  <p class="subsection preview">This is where a preview for a post might go.</p>
</div>
```

```css
.subsection.header {
  color: red;
}
```
* CSS selector selects the element that has both classes
* Doesn't chain with type selectors
* Can also chain class and ID
```html
<div>
  <div class="subsection header">Latest Posts</div>
  <p class="subsection" id="preview">This is where a preview for a post might go.</p>
</div>
```
```css
.subsection.header {
  color: red;
}

.subsection#preview {
  color: blue;
}
```

### Descedent Combinator
* Single space between selectors
* Only selected if child is nested within class

```html
<!-- index.html -->

<div class="ancestor"> <!-- A -->
  <div class="contents"> <!-- B -->
    <div class="contents"> <!-- C -->
    </div>
  </div>
</div>

<div class="contents"></div> <!-- D -->

```

```css
/* styles.css */

.ancestor .contents {
  /* some declarations */
}
```
* B and C would be selected
* Try to avoid this level of nesting as it can get confusing and long

## Properties to get started with
* `color` 
    * sets text color
* `background-color` 
    * background color of element
* Both accept several values
    * Keyword, `red`
    * HEX
    * RGB
    * HSL
```css
p {
  /* hex example: */
  color: #1100ff;
  /* rgb example: */
  color: rgb(100, 0, 127);
  /* hsl example: */
  color: hsl(15, 82%, 56%);
}
```

### Typography Basics and `text-align`
* `font-family` 
    * `"Times New Roman"`
    * `sans serif`
    * Generics don't use quotes
* If browser doesn't support a font, you'll want a fallback with generic
    * `font-family: "Times New Roman", sans-serif;`
* `font-size`
* `font-weight` 
    * boldness of text
    * numeric value or bold
* `text-align` will align text horizontally within an element,
    * `text-align: center`