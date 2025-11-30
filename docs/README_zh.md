# Zero 语言高亮 VS Code 扩展

[![VS Code Marketplace](https://img.shields.io/badge/VS%20Code-Marketplace-blue)](https://marketplace.visualstudio.com/items?itemName=BegoniaHe.zero-lang-highlight)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](../LICENSE)
[![Version](https://img.shields.io/badge/version-0.0.8-blue.svg)](https://github.com/BegoniaHe/Zero-Lang-Highlight-Vsix)

**Zero Language Highlight** 是一个为 Zero 编程语言（`.zero` 文件）提供语法高亮支持的 Visual Studio Code 扩展。

## 功能特性

### 语法高亮

基于 TextMate 语法的全面语法高亮支持，包括：

- **注释**
  - 单行注释：`// 注释内容`
  - 块注释：`/* 注释内容 */`
  - 文档注释：`/** ... */`，支持 Markdown 语法

- **关键字**
  - 控制流：`if`、`else`、`while`、`for`、`in`、`match`、`return`、`break`、`continue`
  - 声明：`fn`、`let`、`var`、`struct`、`enum`、`type`、`impl`、`trait`、`import`、`macro`
  - 字面量：`true`、`false`、`null`、`self`

- **数据类型**
  - 整数：`i8`、`i16`、`i32`、`i64`、`u8`、`u16`、`u32`、`u64`
  - 浮点数：`f32`、`f64`、`dec64`
  - 复数：`cpx32`、`cpx64`
  - 其他：`bool`、`unit`、`string`、`Self`、`NullType`

- **数字**
  - 十进制：`123`、`1_000_000`
  - 十六进制：`0xFF`、`0x1A2B`
  - 二进制：`0b1010`
  - 八进制：`0o755`
  - 浮点数：`3.14`、`1.0e-5`

- **字符串**
  - 普通字符串：`"hello"`
  - 原始字符串：`r#"raw string"#`
  - TeX 字符串：`t"tex content"`
  - 字符字面量：`'a'`

- **运算符**
  - 算术：`+`、`-`、`*`、`/`、`%`
  - 比较：`==`、`!=`、`<`、`>`、`<=`、`>=`
  - 逻辑：`&&`、`||`、`!`
  - 位运算：`&`、`|`、`^`、`~`、`<<`、`>>`
  - 赋值：`=`、`+=`、`-=`、`*=`、`/=`、`%=`、`&=`、`|=`、`^=`
  - 范围：`..`、`..=`
  - 路径：`::`
  - 箭头：`->`、`=>`

- **泛型**
  - 泛型类型参数：`<T>`、`<T, U>`

- **函数**
  - 函数定义和函数调用正确高亮显示

### 文档注释 Markdown 支持

文档注释（`/** ... */`）支持 Markdown 语法高亮：

- 标题：`# H1`、`## H2` 等
- 粗体：`**文本**`
- 斜体：`_文本_`
- 删除线：`~文本~`
- 高亮：`==文本==`
- 行内代码：`` `code` ``
- 链接：`[文本](url)`
- 图片：`![描述](url)`
- 列表：`- 项目`、`1. 项目`
- 引用：`> 引用`
- 文档标签：`@param`、`@return` 等

### 语言配置

- **注释切换**：使用快捷键切换行/块注释
- **括号匹配**：自动高亮匹配的 `{}`、`[]`、`()`
- **自动闭合**：自动闭合括号和引号
- **自动包围**：选中文本后输入括号/引号自动包围
- **代码折叠**：支持 `#region` / `#endregion` 标记
- **智能缩进**：基于代码结构的自动缩进

## 安装方法

### 从 VS Code 扩展市场安装

1. 打开 VS Code
2. 进入扩展面板（`Ctrl+Shift+X` / `Cmd+Shift+X`）
3. 搜索 "Zero Language Highlight"
4. 点击 **安装**

### 从 VSIX 文件安装

1. 从 [Releases](https://github.com/BegoniaHe/Zero-Lang-Highlight-Vsix/releases) 下载 `.vsix` 文件
2. 打开 VS Code
3. 进入扩展面板（`Ctrl+Shift+X` / `Cmd+Shift+X`）
4. 点击 `...` 菜单 → **从 VSIX 安装...**
5. 选择下载的 `.vsix` 文件

### 手动安装

```bash
# 克隆仓库
git clone https://github.com/BegoniaHe/Zero-Lang-Highlight-Vsix.git
cd Zero-Lang-Highlight-Vsix

# 安装依赖
npm install

# 编译
npm run compile

# 打包扩展
npm run package
```

## 使用方法

1. 创建一个扩展名为 `.zero` 的新文件
2. 开始编写 Zero 代码 - 语法高亮将自动应用
3. 使用 `Ctrl+/`（macOS 上为 `Cmd+/`）切换行注释
4. 使用 `Shift+Alt+A` 切换块注释

### 示例代码

```zero
// 这是一个行注释

/**
 * # 文档注释
 * 
 * 这个函数计算一个数的**阶乘**。
 * 
 * @param n 输入的数字
 * @return 阶乘结果
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
    println("距离: {}", p1.distance(p2));
}
```

## 系统要求

- Visual Studio Code 版本 1.106.0 或更高

## 扩展设置

此扩展目前不添加任何 VS Code 设置。

## 已知问题

- 尚未实现语义高亮

## 开发路线图

- [x] 添加扩展图标
- [x] 添加 `.zero` 文件图标
- [ ] 实现语义高亮
- [ ] 添加常用模式的代码片段
- [ ] 支持语言服务器协议
- [ ] CI/CD 自动化配置

## 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE](../LICENSE) 文件。

## 致谢

- [VS Code Extension API](https://code.visualstudio.com/api)
- [TextMate Language Grammars](https://macromates.com/manual/en/language_grammars)

## 相关链接

- [GitHub 仓库](https://github.com/BegoniaHe/Zero-Lang-Highlight-Vsix)
- [VS Code 扩展市场](https://marketplace.visualstudio.com/items?itemName=BegoniaHe.zero-lang-highlight)
- [问题追踪](https://github.com/BegoniaHe/Zero-Lang-Highlight-Vsix/issues)
