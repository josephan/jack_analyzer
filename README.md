# JackAnalyzer

The JackAnalyzer is the first step of compiling the Jack programming language by performing syntax analysis. It takes a file or a directory of `.jack` files and produces a corresponding `.xml` file of the analyzed syntax. First the source code is tokenized with `JackTokenizer`, then the `CompilationEngine` parsers the tokens into a tree formatted in `.xml`.

## Usage

`$ ruby JackAnaylzer path_to_file_or_dir`

## Example

Input:
`HelloWorld.jack`
```
# ...
```

Output:
`HelloWorld.xml`
```
# ...
```

