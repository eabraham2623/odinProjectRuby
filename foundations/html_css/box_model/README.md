# Box Model
* Every single thign on webpage is rectangular box
    * Exceptional circles...
* Nesting and stacking boxes
* `padding`
    * increases the space between edge of the box and the content inside it
* `margin`
    * Increases the space between a box and any others that sit next to it
* `border` adds space (even if it's only a pixel) between margin and padding
* ![](https://cdn.statically.io/gh/TheOdinProject/curriculum/main/foundations/html_css/the-box-model/imgs/box-model.png)

# Assignment
* Padding mainly used to add background around an element
* Margin around two different items to make spaced part
* Height and width are also included in box model, (of the element)
* Whichever margin is largest between two elements, that margin is used
* `box-sizing: border-box;` recommendation usage
 ```css
 *, *::before, *::after { box-sizing: border-box: inherit; }
 html {
     box-sizing: border-box
 }
```
* Two types of boxes
    * block boxes
        * box will break into new line
        * padding, marrgin, border will cause other element to be pushed away from box
        * `<h1>, <p>` use `block` as their outer display type by default
    * inline boxes
        * box will not break onto new line
        * `<a>, <span>, <em>` use `inline` as display type by default
        * Can't change their height and width
    * `display` property
        * `inline-block` can change their height and width

```css
.container {
  width: 980px;
  margin: 0 auto;
}

```
* Element is given specific width
* left and right margins are set to auto
* horizontal centering

# Knowledge Check
* Content box -> Padding -> Border -> Margin
* `box-sizing` CSS property makes it so that the content area of the element is set to the height and width of the element, including padding or border
* standard box model
    * height and width only applies to content box
    * padding and border are added onto it
* alternative box model
    * height and width specified includes padding and border
* `margin` is used to more space between 2 elements
* `padding` is used to create more space between the contents ofan element and its border
* `margin` is used if want to have two elements overlap each other