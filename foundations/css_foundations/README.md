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

### Image Height and Width
* By default `<img>` height and width values will be same as actual image
* If you want to adjust size of image without losing proportion, `height` would be set to `auto`
```css
img {
  height: auto;
  width: 500px;
}
```
* Best to include both properties

## The Cascade of CSS
### Specificicity
* CSS declaration that is more specific will take precedence over less specific ones
1. ID selectors (most specific selector)
2. Class selectors 
3. Type selectors

```css
/* rule 1 */
.subsection {
  color: blue;
}

/* rule 2 */
.main .list {
  color: red;
}
```
* rule 2 is more specific because it is using my more class selectors

```css
/* rule 1 */
#subsection {
  color: blue;
}

/* rule 2 */
.main .list {
  color: red;
}
```
* rule 1 is more specific because it is using an ID

```css
/* rule 1 */
#subsection .list {
  background-color: yellow;
  color: blue;
}

/* rule 2 */
#subsection .main .list {
  color: red;
}
```
* rule 2 is more specific because it is using ID and has more classes
* `background-color: yellow` would still be applied since there's no conflict

```css
/* rule 1 */
.class.second-class {
  font-size: 12px;
}

/* rule 2 */
.class .second-class {
  font-size: 24px;
}
```
* Chaining classes don't add more specificitiy compared to using multiple classes like in rule 2

```css
/* rule 1 */
.class.second-class {
  font-size: 12px;
}

/* rule 2 */
.class > .second-class {
  font-size: 24px;
}

```
* Even though child combinator is used, both rule rules still have two classes, same specificity

```css
/* rule 1 */
* {
  color: black;
}

/* rule 2 */
h1 {
  color: orange;
}
```
* rule 2 would have higher specificity and orange would take precedence

### Inheritance
* elements descedents inherit properties from parent unless explicity applied to descedent
```html
<!-- index.html -->

<div id="parent">
  <div class="child"></div>
</div>
```
```css
/* styles.css */

#parent {
  color: red;
}

.child {
  color: blue;
}
```
* `child` class would have it's element have color blue, even though the parent id is more specific

### Rule order
* Final tiebreaker, whichever rule was last defined is winner if all other cascade rules have been exhausted
```css
/* styles.css */

.alert {
  color: red;
}

.warning {
  color: yellow;
}
```
* `.warning` rule would be applied

## Adding CSS to HTML

### External CSS
```html
<!-- index.html -->

<head>
  <link rel="stylesheet" href="styles.css">
</head>
```

```css
/* styles.css */

div {
  color: white;
  background-color: black;
}

p {
  color: red;
}
```
* We had self closing `<link>` element inside `head` tags
* `rel` attribute is require specifies relationship between HTML file and linked file

### Internal CSS
```html
<head>
  <style>
    div {
      color: white;
      background-color: black;
    }

    p {
      color: red;
    }
  </style>
</head>
<body>...</body>
```
### incline CSS
```html
<body>
  <div style="color: white; background-color: black;">...</div>
</body>
```