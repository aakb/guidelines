ITK Design - Javacript guidelines
==========

This document is a _frontend/theme_ javacript guideline for working with projects at ITK Design.

We use [Drupal's JavaScript coding standards](https://drupal.org/node/172169) with a few exceptions and deviations that are mentioned below.

Content
----------

1. [File structure](#file-structure)
2. [Comments](#comments)

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
