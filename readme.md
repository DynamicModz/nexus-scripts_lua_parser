<img src="NexusScript.png" alt="NexusScripts Logo" width="300"/>

# NexusScripts Parser Module

A powerful Lua parser, lexer, and AST generator for code analysis, transformation.

## Module Overview

The NexusScripts Parser Module consists of three main components that work together to parse and process Lua code:

### 1. Lexer (`lexer.lua`)

The lexer tokenizes Lua source code, breaking it down into meaningful tokens for the parser.

**Current Features:**
- Full Lua 5.x syntax support
- Comprehensive token types for all Lua operators and keywords
- Handles string literals with escape sequences
- Supports multi-line strings with long brackets (`[[...]]`)
- Processes numeric literals (decimal, hexadecimal)
- Handles comments (single-line and multi-line)
- Robust error recovery
- Line and column tracking for each token

### 2. Parser (`parser.lua`) 

The parser converts tokens into an Abstract Syntax Tree (AST) representation.

**Current Features:**
- Parses all standard Lua statements and expressions
  - Variable declarations and assignments
  - Function declarations and calls
  - Control structures (if, while, for, repeat, etc.)
  - Table constructors
  - Expressions (binary, unary, literals, etc.)
- Error reporting with line and column information
- Error recovery strategies
- Supports nested expressions and statements

### 3. AST Nodes (`ast_nodes.lua`)

The AST node module defines the structure for each type of node in the Abstract Syntax Tree.

**Current Features:**
- Comprehensive node types for all Lua syntax elements
- Additional information for metamethod processing
- Support for special operators and their metamethod equivalents
- Node types include program structure, statements, expressions, and literals

## CLI Tool (Upcoming)

The NexusScripts Parser Module will include a command-line interface (CLI) tool with the following features:

- Parse Lua files and output AST representation
- Validate Lua syntax with detailed error reporting
- Transform Lua code (minify, beautify, etc.)
- Code obfuscation capabilities
- Metadata extraction from Lua files
- AST traversal and manipulation

## Planned Improvements

### Lexer Improvements
- Better error reporting with suggestions for corrections
- Support for Luau-specific syntax extensions
- Performance optimizations for large files
- Add preprocessor directives support
- Enhanced handling of Unicode characters

### Parser Improvements
- Add support for language extensions (Luau features)
- Implement more robust error recovery strategies
- Add scope analysis for variables
- Improve handling of complex expressions
- Support for comments as part of the AST

### AST Nodes Improvements
- Add source location information to all nodes
- Support for attaching metadata to nodes
- Better serialization/deserialization of AST
- Add utility functions for common AST transformations
- Implement visitor pattern for easier AST traversal

## Future Additions

- **Code Analysis Tools**: Static analysis, style checking, complexity metrics
- **Code Transformation**: Dead code elimination, constant folding, AST-to-code generation
- **Obfuscation Features**: Identifier renaming, string encryption, control flow obfuscation, etc
- **Type Checking**: Basic type inference and checking capabilities
- **Documentation Generator**: Extract documentation from code comments
- **Plugin System**: Allow for custom extensions and transformations
- **Cross-Referencing**: Track variable usage across the codebase

## Current CLI Tool Capabilities

The parser module already includes a working CLI tool that demonstrates its capabilities:

```
nexusscripts@nexusscripts-7200-6744D:~/Desktop/Lua/src$ lua cli.lua parse simple_script.lua ast_output.lua --format=lua --verbose

 _   _                     ____            _       _       
| \ | | _____  ___   _ ___/ ___|  ___ _ __(_)_ __ | |_ ___ 
|  \| |/ _ \ \/ / | | / __\___ \ / __| '__| | '_ \| __/ __|
| |\  |  __/>  <| |_| \__ \___) | (__| |  | | |_) | |_\__ \
|_| \_|\___/_/\_\\__,_|___/____/ \___|_|  |_| .__/ \__|___/
                                            |_|           

        --== NexusScripts Lua Parser v1.0 ==--                                                         

VERBOSE: Reading input file: simple_script.lua
VERBOSE: File content length: 453 bytes
VERBOSE: Parsing Lua code...
VERBOSE: Input code:
VERBOSE:   1: local name = "User"
VERBOSE:   2: local age = 25
VERBOSE:   3: local price = 19.99
VERBOSE:   4: local is_active = true
VERBOSE:   5: print("Hello, welcome to Lua!")
VERBOSE:   6: print("Name: " .. name)
VERBOSE:   7: print("Age: " .. age)
VERBOSE:   8: print("Price: $" .. price)
VERBOSE:   9: if is_active then
VERBOSE:   10:     print("Status: Active")
VERBOSE:   11: else
VERBOSE:   12:     print("Status: Inactive")
VERBOSE:   13: end
VERBOSE:   14: local tax_rate = 0.08
VERBOSE:   15: local total_price = price + (price * tax_rate)
VERBOSE:   16: print("Total price with tax: $" .. total_price)
VERBOSE:   17: local greeting = "Have a " .. "nice " .. "day!"
VERBOSE:   18: print(greeting)
VERBOSE: Tokens:
VERBOSE:   Count: 84
VERBOSE:   1: KEYWORD [local]
VERBOSE:   2: IDENTIFIER [name]
VERBOSE:   3: ASSIGN [=]
VERBOSE:   4: STRING [User]
VERBOSE:   5: KEYWORD [local]
VERBOSE:   ... and more

VERBOSE: No syntax errors found
VERBOSE: AST structure:
VERBOSE:   Number of statements: 14
VERBOSE:   Statement 1 type: LocalStatement
VERBOSE:   Statement 2 type: LocalStatement
VERBOSE:   Statement 3 type: LocalStatement
VERBOSE:   Statement 4 type: LocalStatement
VERBOSE:   Statement 5 type: CallStatement
VERBOSE:   Statement 6 type: CallStatement
VERBOSE:   Statement 7 type: CallStatement
VERBOSE:   Statement 8 type: CallStatement
VERBOSE:   Statement 9 type: IfStatement
VERBOSE:   Statement 10 type: LocalStatement
VERBOSE:   Statement 11 type: LocalStatement
VERBOSE:   Statement 12 type: CallStatement
VERBOSE:   Statement 13 type: LocalStatement
VERBOSE:   Statement 14 type: CallStatement
VERBOSE: Generating LUA output...
VERBOSE: Writing to output file: ast_output.lua
SUCCESS: AST generated successfully and saved to: ast_output.lua
```

The CLI tool can:
- Parse Lua source files
- Tokenize and display detailed token information
- Generate and analyze AST structure
- Output the AST in various formats
- Provide verbose debugging information
- Verify syntax correctness

## Usage Examples

```lua
-- Parsing a Lua file
local parser = require("ast_custom.parser")
local ast, errors = parser.parse(source_code)

-- Check for parsing errors
if #errors > 0 then
    for _, err in ipairs(errors) do
        print(string.format("Error: %s at line %d, column %d", 
              err.message, err.line, err.col))
    end
else
    -- Process the AST
    -- ...
end
```

## License

Copyright © 2025 NexusScripts

## GitHub Repository

### Getting Started

To get started with the NexusScripts Parser Module, clone the repository:

```bash
git clone https://github.com/DynamicModz/hercules_parser_module.git
cd lua-parser
```

### Directory Structure

```
lua-parser/
├── src/
│   ├── ast_custom/
│   │   ├── ast_nodes.lua
│   │   ├── lexer.lua
│   │   └── parser.lua
│   └── cli.lua
├── NexusScript.png
└── readme.md
```

### Usage

Run the CLI tool:

```bash
cd src
lua cli.lua parse path/to/your/file.lua output.lua --format=lua
```

Add the `--verbose` flag for detailed output:

```bash
lua cli.lua parse path/to/your/file.lua output.lua --format=lua --verbose
```
