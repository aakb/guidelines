ITK Design - Javacript guidelines
==========

This document is a _frontend/theme_ javacript guideline for working with projects at ITK Design.

We use jQuery and native javascript along with [Drupal's JavaScript coding standards](https://drupal.org/node/172169) and the exceptions and deviations that are mentioned below.

Content
----------

1. [File structure](#file-structure)
2. [Comments](#comments)
3. [Functions, loops etc.] (#functions-loops-etc)
4. [Manipulating the frontend](#manipulating-frontend)

<a name="file-structure"></a>
1. File structure
----------

Place files in a folder named __scripts__. Place shared functions etc. in a file named ___theme-name_-common.js__. Create a javascript file for each functionality needed eg. __search.js__, __my-function.js__.

#### Filestructure example
```code
-- scripts
  -- my-theme-common.js
  -- search.js
  -- my-function.js
```

<a name="comments"></a>
2. Comments
----------

```javascript
/**
 * File name
 *
 * Optional description
 *
 * @author author name
 */ 

// This is an inline comment
```

<a name="functions-loops-etc"></a>
3. Functions, loops etc.
----------

See [Drupal's JavaScript coding standards](https://drupal.org/node/172169).


<a name="manipulating-frontend"></a>
4. Manipulating the frontend
----------

* Prefix elements with <code>.js-</code>
* Don't use <code>.js-</code> for styling
* Use state classes like <code>.is-</code>, <code>.has-</code> as mentioned in the [CSS guidelines](css-guidelines.md).
* For sending data from the frontend to javascript use the [HTML5 data attribute](http://html5doctor.com/html5-custom-data-attributes/)

#### Examples

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