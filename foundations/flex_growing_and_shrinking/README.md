# Growing and Shrinking
* `flex` declaration is shorthand for 3 properties
    * `flex-grow`
    * `flex-shrink`
    * `flex-basis`
![](https://cdn.statically.io/gh/TheOdinProject/curriculum/495704c6eb6bf33bc927534f231533a82b27b2ac/html_css/v2/foundations/flexbox/imgs/10.png)

## flex-grow
* expects single number as value
* the item's "growth factor"

## flex-shrink
* "shrink factor" of an item
* only applied if the size of all flex items is larger than their parent containter

## flex-basis
* simply sets initial size of flex item
* default s 0%
* Can use use `auto` as flex basis to tell the item to check for a width declaration 

## In practice..
* Most likely to use declaration like `flex: 1` and `flex-shrink:0` to keep certain div from shrinking

# Knowledge Check
*  3 values defined in shorthand flex property are
    * `flex: <flex-grow> <flex-shrink> <flex-basis>`
