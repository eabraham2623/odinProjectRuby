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
* `flex-flow: flex-wrap` 

## Properies applied to flex item
* `flex-grow`
    * items can grow along main axis from `flex-basis` 
* `flex-shrink`
    * item shrinking along main axis
* `flex-basis`
    * defines the size of the item
* Concept of available space
* flex shorthand
* `flex: flex-grow, flex-shrink, flex-basis`

## Alignment, justification and distribution of free space between items
* `align-items`
    * will align items on cross axis
* `justify-content`
    * align itmes on main axis
* `align-self`
    * will align specific item on cross axis

## Changing main axis, `align-items`
* ![](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Aligning_Items_in_a_Flex_Container/align4.png)
* ![](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Aligning_Items_in_a_Flex_Container/align5.png)

## Aligning content on cross axis, align-content
* `align-content`

## Aligning content on main axis
`justify-content`

## Using auto margins for main axis alignment
* `margin-left: auto`
    * ![](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Aligning_Items_in_a_Flex_Container/align7.png)
