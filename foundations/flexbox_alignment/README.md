# Flexbox Alignment

## Alignment
* `justiify-content` aligns items across the main axis
    * setting it to `center` will center the boxes along the main axis
* `align-items: center` will center boxes along the cross axis
* `flex-direction` will chnage the behavior

## GAP
`gap` property will add specified space between flex items

# Assignment

## Basic concepts of Flexbox
* Two axes of flexbox
    * main axis
    * cross axis
* Defined by the `flex-direction` property
* Main axis inline direction: 
    * `row` and `row-reverse`
        * ![](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox/basics1.png)
    * `column` or `column-reverse`
        * ![](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox/basics2.png)
* Cross axis:
    * `row` and `row-reverse`
        * ![](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox/basics3.png)
    * `column` or `column-reverse`
        * ![](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox/basics4.png)

## Start and end lines
![](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox/basics5.png)
* start is at the left, end is at the right

## Flex Container
* `display` property to `flex` or `inline-flex`
* Children of container become flex items