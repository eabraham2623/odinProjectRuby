# DOM manipulation and events

## Document Object Model
* DOM is tree like representation of the contents of a webpage
* Tree of nodes
* Child and sibling relationships

## Targeting Nodes with Selectors
* You use "selectors" to target nodes you want to work with
* CSS style selectors
* Relational selectors
    *  (i.e. `firstElementChild` or `lastElementChild` etc.)
```javascript
const container = document.querySelector('#container');
// selects the #container div (don't worry about the syntax, we'll get there)

console.dir(container.firstElementChild);                      
// selects the first child of #container => .display

const controls = document.querySelector('.controls');   
// selects the .controls div

console.dir(controls.previousElementSibling);                  
// selects the prior sibling => .display
```
## DOM methods
* HTML parsed by web browser is converted to the DOM
### Query Selectors
* element.querySelector(selector) returns a reference to the first match of selector
* element.querySelectorAll(selectors) returns a “nodelist” containing references to all of the matches of the selectors
    * Return value is not an array, is a nodelist
### Element creation
* document.createElement(tagName, `[options]`) creates a new element of tag type tagName. `[options]` in this case means you can add some optional parameters to the function. Don’t worry about these at this point.
    * Function does NOT put new element in DOM, simply creates in memory, before putting on page
```javascript
const div = document.createElement('div');
```
### Append Elements
* parentNode.appendChild(childNode) appends childNode as the last child of parentNode
* parentNode.insertBefore(newNode, referenceNode) inserts newNode into parentNode before referenceNode

### Remove Elements
* parentNode.removeChild(child) removes child from parentNode on the DOM and returns a reference to child
### Altering Elements
* Can use reference to alter eleemnt's own properties
### Adding inline style
```javascript
div.style.color = 'blue';                                      
// adds the indicated style rule

div.style.cssText = 'color: blue; background: white;';          
// adds several style rules

div.setAttribute('style', 'color: blue; background: white;');    
// adds several style rules
div.style.background-color // doesn't work - attempts to subtract color from div.style.background
div.style.backgroundColor // accesses the div's background-color style
div.style['background-color'] // also works
div.style.cssText = "background-color: white;" // ok in a string
```
### Editing Attributes
```javascript
div.setAttribute('id', 'theDiv');                              
// if id exists, update it to 'theDiv', else create an id
// with value "theDiv"

div.getAttribute('id');                                        
// returns value of specified attribute, in this case
// "theDiv"

div.removeAttribute('id');                                     
// removes specified attribute
```
* [HTML Attribute Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes)

### Working with classes
```javascript
div.classList.add('new');                                      
// adds class "new" to your new div

div.classList.remove('new');                                   
// removes "new" class from div

div.classList.toggle('active');                                
// if div doesn't have class "active" then add it, or if
// it does, then remove it
```
* Often standard and cleaner to toggle a CSS style rather than adding and removing inline CSS
### Adding text content
```javascript
div.textContent = 'Hello World!'                               
// creates a text node containing "Hello World!" and
// inserts it in div
```
### Adding HTML content
```javascript
div.innerHTML = '<span>Hello World!</span>';                   
// renders the HTML inside div
```
* textContent is preferable for adding text

### Recap
```html
<!-- your HTML file: -->
<body>
  <h1>
    THE TITLE OF YOUR WEBPAGE
  </h1>
  <div id="container"></div>
</body>
```
```javascript
// your JavaScript file
const container = document.querySelector('#container');

const content = document.createElement('div');
content.classList.add('content');
content.textContent = 'This is the glorious text-content!';

container.appendChild(content)
```
* Adding content to container
```javascript
<!-- The DOM -->
<body>
  <h1>
    THE TITLE OF YOUR WEBPAGE
  </h1>
  <div id="container">
  	<div class="content">
      This is the glorious text-content!
    </div>
  </div>
</body>
```
* Note that the JavaScript does not alter your HTML, but the DOM
* Javascript changes what the browser renders
## Important Note
* JavaScript is ran whenever the JS file is ran, or when script tag is encountered in HTML
* Can include JavaScript at bottom of html file
* Or link javascript file in `<head>` of HTML document, user `defer` keyword to load file after HTML is parsed
* Example
```javascript
<head>
 <script src="js-file.js" defer></script>
</head>
```
## Exercise
* Refer to html, css, and javascript files

## Events
* Manipulating DOM dynamically or on demand
* Alert hello word examples:
```javascript
<!-- the HTML file -->
<button id="btn">Click Me</button>

// the JavaScript file
const btn = document.querySelector('#btn');
btn.onclick = () => alert("Hello World");
```
* Only onclick

```javascript
<!-- the HTML file -->
<button id="btn">Click Me Too</button>

// the JavaScript file
const btn = document.querySelector('#btn');
btn.addEventListener('click', () => {
  alert("Hello World");
});
```
* Much more flexible, allowing multiple event listeners
```javascript
<!-- the HTML file -->
<!-- METHOD 1 -->
<button onclick="alertFunction()">CLICK ME BABY</button>

// javascript file
function alertFunction() {
  alert("YAY! YOU DID IT!");
}

// METHOD 2
btn.onclick = alertFunction;

// METHOD 3
btn.addEventListener('click', alertFunction);



btn.addEventListener('click', function (e) {
  console.log(e);
});

btn.addEventListener('click', function (e) {
  e.target.style.background = 'blue';
});
```
* Named functions as well
* `e` in function is object that referecnes the event itself
* Can access event's target, the DOM node that was clicked

### Attaching listeners to groups of nodes
* Can use `querySelectorAll('selector')` 
* Add listener to all by iterating

```javascript
<div id="container">
    <button id="1">Click Me</button>
    <button id="2">Click Me</button>
    <button id="3">Click Me</button>
</div>

// buttons is a node list. It looks and acts much like an array.
const buttons = document.querySelectorAll('button');

// we use the .forEach method to iterate through each button
buttons.forEach((button) => {

  // and for each one we add a 'click' listener
  button.addEventListener('click', () => {
    alert(button.id);
  });
});
```
* Other useful events
    * click
    * dblclick
    * keydown
    * keyup