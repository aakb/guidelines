# ITK Design - Javacript guidelines

This document is a _frontend/theme_ javacript guideline for working
with projects at ITK Design.

We use jQuery and native javascript along with [Drupal's JavaScript
coding standards](https://drupal.org/node/172169) and the exceptions
and deviations that are mentioned below.

1. [File structure](#file-structure)
2. [Comments](#comments)
3. [Functions, loops etc.] (#functions-loops-etc)
4. [Manipulating the frontend](#manipulating-frontend)

## File structure

Place files in a folder named __scripts__. Place shared functions
etc. in a file named ___theme-name_-common.js__. Create a javascript
file for each functionality needed eg. __search.js__,
__my-function.js__.

### Filestructure example

```code
-- scripts
  -- my-theme-common.js
  -- search.js
  -- my-function.js
```

## Comments

Inline documentation for source files should follow the [Doxygen
formatting conventions](https://drupal.org/node/1354).

Non-documentation comments are strongly encouraged. A general rule of
thumb is that if you look at a section of code and think "Wow, I don't
want to try and describe that", you need to comment it before you
forget how it works. Comments can be removed by JS compression
utilities later, so they don't negatively impact on the file download
size.

Non-documentation comments should use capitalized sentences with
punctuation. All caps are used in comments only when referencing
constants, e.g., TRUE. Comments should be on a separate line
immediately before the code line or block they reference

```code
//Unselect all other checkboxes.
```

## Functions, loops and other stuff

See [Drupal's JavaScript coding standards](https://drupal.org/node/172169).

### Manipulating the frontend

* Prefix elements with `.js-`
* Don't use `.js-` for styling
* Use state classes like `.is-`, `.has-` as mentioned in the [CSS guidelines](css-guidelines.md).
* For sending data from the frontend to javascript use the [HTML5 data attribute](http://html5doctor.com/html5-custom-data-attributes/)

### Examples

```html
<a href="http://example.com" class="button js-make-active">This is a button</a>
```

```javacript
$(".js-make-active").click(function() {
  $(this).addClass('.is-active');
});
```

```css
.button {
  background-color: $gray;

  &.is-active {
    background-color: $green;
  }
}
```

```html
<a href="http://example.com" class="button is-active js-do-something">This is a button</a>
```
