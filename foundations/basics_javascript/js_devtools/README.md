# Javascript Developer Tools

## CSS
* Show media queires in responsive mode
* [Device Mode Reference](https://developer.chrome.com/docs/devtools/device-mode/)

## Javascript
### Debug Javascript
* Sources tab is where you debug
* 3 parts of debugger
    * File Navigator pane
        * Every file that page requests is here
    * Code editor pane
        * After selecting, code is presented
    * Javascript debugging pane
* Can set event listener breakpoints
* Breakpoints via line
* Debugger [reference](https://developer.chrome.com/docs/devtools/javascript/)

### Pause your code with breakpoints
* Line of code
    * can also called `debugger;` in your code to set a breakpoint
* Conditional line of code
    * Breakpoint on line of code if conditional is met
* DOM (Document Object Model)
    * Pause on code that changes a DOM node or it's children
* XHR (XMLHttpRequest) / Fetch
    * Check to see if your page is requesting an incorrect URL
* Event listener
    * Breaks on specific events like `click` 
* Exception
    * Pause on line of code thats throwing an caught/uncaught exception
* Function
    * calling `debug(functionName)` to debug speciifc function
* [Reference](https://developer.chrome.com/docs/devtools/javascript/breakpoints/)