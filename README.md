# JackAnalyzer

The JackAnalyzer is the first step of compiling the Jack programming language by performing syntax analysis. It takes a file or a directory of `.jack` files and produces a corresponding `.xml` file of the analyzed syntax.

The JackAnalyzer is made up of two components:
1. JackTokenizer - for a `Main.jack` file it produces a `MainT.xml` file containing a stream of tokens from the source file.
2. CompilationEnginea - using the tokens in `MainT.xml` file produced by the tokenizer it creates the final `Main.xml` containing the analyzed syntax.

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

