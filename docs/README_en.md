# Zero Language Highlight for VS Code

[![VS Code Marketplace](https://img.shields.io/badge/VS%20Code-Marketplace-blue)](https://marketplace.visualstudio.com/items?itemName=BegoniaHe.zero-lang-highlight)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](../LICENSE)
[![Version](https://img.shields.io/badge/version-0.0.7-blue.svg)](https://github.com/BegoniaHe/Zero-Lang-Highlight-Vsix)

**Zero Language Highlight** is a Visual Studio Code extension that provides syntax highlighting support for the Zero programming language (`.zero` files).

## Features

### Syntax Highlighting

Comprehensive TextMate grammar-based syntax highlighting for Zero language, supporting:

- **Comments**

  - Single-line comments: `// comment`
  - Block comments: `/* comment */`
  - Documentation comments: `/** ... */` with Markdown support
- **Keywords**

  - Control flow: `if`, `else`, `while`, `for`, `in`, `match`, `return`, `break`, `continue`
  - Declarations: `fn`, `let`, `var`, `struct`, `enum`, `type`, `impl`, `trait`, `import`, `macro`
  - Literals: `true`, `false`, `null`, `self`
- **Data Types**

  - Integers: `i8`, `i16`, `i32`, `i64`, `u8`, `u16`, `u32`, `u64`
  - Floating-point: `f32`, `f64`, `dec64`
  - Complex: `cpx32`, `cpx64`
  - Others: `bool`, `unit`, `string`, `Self`, `NullType`
- **Numbers**

  - Decimal: `123`, `1_000_000`
  - Hexadecimal: `0xFF`, `0x1A2B`
  - Binary: `0b1010`
  - Octal: `0o755`
  - Float: `3.14`, `1.0e-5`
- **Strings**

  - Regular strings: `"hello"`
  - Raw strings: `r#"raw string"#`
  - TeX strings: `t"tex content"`
  - Character literals: `'a'`
- **Operators**

  - Arithmetic: `+`, `-`, `*`, `/`, `%`
  - Comparison: `==`, `!=`, `<`, `>`, `<=`, `>=`
  - Logical: `&&`, `||`, `!`
  - Bitwise: `&`, `|`, `^`, `~`, `<<`, `>>`
  - Assignment: `=`, `+=`, `-=`, `*=`, `/=`, `%=`, `&=`, `|=`, `^=`
  - Range: `..`, `..=`
  - Path: `::`
  - Arrow: `->`, `=>`
- **Generics**

  - Generic type parameters: `<T>`, `<T, U>`
- **Functions**

  - Function definitions and calls are properly highlighted

### Documentation Comment Markdown Support

Documentation comments (`/** ... */`) support Markdown syntax highlighting:

- Headings: `# H1`, `## H2`, etc.
- Bold: `**text**`
- Italic: `_text_`
- Strikethrough: `~text~`
- Highlight: `==text==`
- Inline code: `` `code` ``
- Links: `[text](url)`
- Images: `![alt](url)`
- Lists: `- item`, `1. item`
- Blockquotes: `> quote`
- Doc tags: `@param`, `@return`, etc.

### Language Configuration

- **Comment toggling**: Toggle line/block comments with keyboard shortcuts
- **Bracket matching**: Automatic highlighting of matching `{}`, `[]`, `()`
- **Auto-closing pairs**: Automatically close brackets and quotes
- **Auto-surrounding**: Surround selected text with brackets/quotes
- **Code folding**: Support for `#region` / `#endregion` markers
- **Smart indentation**: Automatic indentation based on code structure

## Installation

### From VS Code Marketplace

1. Open VS Code
2. Go to Extensions (`Ctrl+Shift+X` / `Cmd+Shift+X`)
3. Search for "Zero Language Highlight"
4. Click **Install**

### From VSIX File

1. Download the `.vsix` file from [Releases](https://github.com/BegoniaHe/Zero-Lang-Highlight-Vsix/releases)
2. Open VS Code
3. Go to Extensions (`Ctrl+Shift+X` / `Cmd+Shift+X`)
4. Click the `...` menu → **Install from VSIX...**
5. Select the downloaded `.vsix` file

### Manual Installation

```bash
# Clone the repository
git clone https://github.com/BegoniaHe/Zero-Lang-Highlight-Vsix.git
cd Zero-Lang-Highlight-Vsix

# Install dependencies
npm install

# Compile
npm run compile

# Package the extension
npm run package
```

## Usage

1. Create a new file with the `.zero` extension
2. Start writing Zero code - syntax highlighting will be applied automatically
3. Use `Ctrl+/` (`Cmd+/` on macOS) to toggle line comments
4. Use `Shift+Alt+A` to toggle block comments

### Example Code

```zero
// This is a line comment

/**
 * # Documentation Comment
 * 
 * This function calculates the **factorial** of a number.
 * 
 * @param n The input number
 * @return The factorial result
 */
fn factorial(n: i32) -> i32 {
    if n <= 1 {
        return 1;
    }
    return n * factorial(n - 1);
}

struct Point<T> {
    x: T,
    y: T,
}

impl Point<f64> {
    fn distance(self, other: Point<f64>) -> f64 {
        let dx = self.x - other.x;
        let dy = self.y - other.y;
        return (dx * dx + dy * dy).sqrt();
    }
}

fn main() {
    let numbers = [1, 2, 3, 4, 5];
  
    for num in numbers {
        let result = factorial(num);
        println("factorial({}) = {}", num, result);
    }
  
    let p1 = Point { x: 0.0, y: 0.0 };
    let p2 = Point { x: 3.0, y: 4.0 };
    println("Distance: {}", p1.distance(p2));
}
```

## Requirements

- Visual Studio Code version 1.106.0 or higher

## Extension Settings

This extension currently does not add any VS Code settings.

## Known Issues

- Semantic highlighting is not yet implemented

## Roadmap

- [X] Add extension icon for Marketplace
- [X] Add file icons for `.zero` files
- [ ] Implement semantic highlighting
- [ ] Add code snippets for common patterns
- [ ] Language Server Protocol support
- [ ] CI/CD automation

## License

This project is licensed under the MIT License - see the [LICENSE](../LICENSE) file for details.

## Acknowledgments

- [VS Code Extension API](https://code.visualstudio.com/api)
- [TextMate Language Grammars](https://macromates.com/manual/en/language_grammars)

## Related Links

- [GitHub Repository](https://github.com/BegoniaHe/Zero-Lang-Highlight-Vsix)
- [VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=BegoniaHe.zero-lang-highlight)
- [Issue Tracker](https://github.com/BegoniaHe/Zero-Lang-Highlight-Vsix/issues)
