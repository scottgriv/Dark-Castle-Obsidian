<!--
  In a land shrouded in mystery...
-->

# Dark Castle Theme

> Dark Castle theme for VS Code.

![Preview](images/preview.gif)

## Installation

1. Install [Visual Studio Code](https://code.visualstudio.com/)
2. Launch Visual Studio Code
3. Choose **Extensions** from the menu
4. Search for `Dark Castle`
5. Click **Install** to install it
6. Click **Reload** to reload VS Code
7. File > Preferences > Color Theme > **Dark Castle**

## Table of Contents

- [Dark Castle Theme](#dark-castle-theme)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Examples](#examples)
    - [Code Blocks](#code-blocks)
    - [Lists](#lists)
    - [Blockquotes](#blockquotes)
    - [Horizontal Rule](#horizontal-rule)
    - [Images](#images)
    - [Links](#links)
    - [Tables](#tables)
    - [Inline Code](#inline-code)
    - [Emphasis](#emphasis)
    - [Task Lists](#task-lists)

<!--
  ...there stood a Dark Castle
-->

### Usage

Apply the Dark Castle theme to your VS Code editor to enjoy a dark, visually appealing coding environment.

## Examples

### Code Blocks

```javascript
// JavaScript example
function greet(name) {
  return `Hello, ${name}!`;
}

console.log(greet('World'));
```

```python
# Python example
def greet(name):
    return f"Hello, {name}!"

print(greet("World"))
```

```php
<?php
header('Content-type: application/json');
include("login.php");

session_start();
$userSessionID = $_SESSION['UserSession'];

if (session_id() === $_COOKIE['PHPSESSID'] && isset($_SESSION['UserSession'])) {

    function query($sql, ...$params) {
        global $mysqli;
        $stmt = $mysqli->prepare($sql);
        if ($params) {
            $stmt->bind_param(str_repeat('s', count($params)), ...$params);
        }
        $stmt->execute();
        return $stmt->get_result();
    }
```

```html
<!-- HTML example -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dark Castle Theme</title>
</head>
<body>
    <h1>Hello, World!</h1>
</body>
</html>
```

## Lists

### Unordered List

- Item 1
- Item 2
  - Subitem 2.1
  - Subitem 2.2
- Item 3

### Ordered List

1. First item
2. Second item
   1. Subitem 2.1
   2. Subitem 2.2
3. Third item

### Horizontal Rule

--------------------

### Blockquotes

> This is a blockquote.
>
> > Nested blockquote.

### Images

![Example Image](https://via.placeholder.com/150)

### Links

[Visit Visual Studio Code](https://code.visualstudio.com/)

### Tables

| Syntax    | Description |
|-----------|-------------|
| Header    | Title       |
| Paragraph | Text        |

### Inline Code

To display inline code, use backticks: `inline code`.

### Emphasis

**Bold text**

*Italic text*

***Bold and italic text***

~~Strikethrough~~

### Task Lists

- [x] Install Visual Studio Code
- [x] Install Dark Castle theme
- [ ] Apply Dark Castle theme
