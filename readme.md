<p align="center">
  <img src="NexusScript.png" alt="NexusScripts Logo" width="300" alt="Banner Image" />
</p>
<pre align="center">

# NexusScripts Parser Module

A Lua parser, lexer, and AST generator for code analysis and transformation.

## Module Overview

The NexusScripts Parser Module consists of three main components that work together to parse and process Lua code:

### 1. Lexer (`lexer.lua`)

The lexer tokenizes Lua source code, breaking it down into meaningful tokens for the parser.

**Current Features:**
- Full Lua 5.x syntax support including Lua 5.3/5.4 features
- Hexadecimal floating-point literals (e.g., `0x1.921fb54442d18p+1`)
- Binary literals (`0b101010`)
- Comprehensive token types for all Lua operators and keywords
- Support for bitwise operators (`&`, `|`, `~`, `<<`, `>>`)
- Integer division (`//`)
- String literals with escape sequences
- Multi-line strings with long brackets (`[[...]]`)
- Numeric literals (decimal, hexadecimal, binary)
- Comment handling (single-line and multi-line)
- Error recovery
- Line and column tracking for each token

### 2. Parser (`parser.lua`) 

The parser converts tokens into an Abstract Syntax Tree (AST) representation.

**Current Features:**
- Parses standard Lua statements and expressions
  - Variable declarations and assignments
  - Function declarations and calls
  - Control structures (if, while, for, repeat, etc.)
  - Table constructors
  - Expressions (binary, unary, literals, etc.)
- Error reporting with line and column information
- Support for Lua 5.3/5.4 language features

### 3. AST Nodes (`ast_nodes.lua`)

The AST node module defines the structure for each type of node in the Abstract Syntax Tree.

**Current Features:**
- Node types for Lua syntax elements
- Support for parsing Lua 5.3/5.4 specific features
- Program structure, statements, expressions, and literals

## CLI Tool

The NexusScripts Parser Module includes a command-line interface (CLI) tool with the following features:

- Parse Lua files and output AST representation
- Output tokenization information
- Generate output in either Lua table or JSON format
- Output AST only, tokens only, or both in a single command
- Create default output files (input_file.output.lua) when no output file is specified
- Use Lua format by default

### CLI Examples

```bash
# Basic usage - outputs both AST and tokens to input.lua.output.lua in Lua format
lua src/cli.lua parse input.lua

# Output both AST and tokens in JSON format
lua src/cli.lua parse input.lua --output=both --format=json

# Output only tokens to a specific file
lua src/cli.lua parse input.lua tokens_only.lua --output=tokens

# Output AST with verbose logging
lua src/cli.lua parse input.lua --verbose
```

## Current Usage

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

## Planned Improvements

### Lexer Improvements
- More detailed error reporting with suggestions for corrections
- Performance optimizations for large files
- Enhanced handling of Unicode characters

### Parser Improvements
- More robust error recovery strategies
- Add scope analysis for variables
- Improved handling of complex expressions
- ✅ Support for comments as part of the AST
  - Comments are preserved with source location information
  - Attached to relevant AST nodes based on position
  - Preserved as leading/trailing associations
  - Available in both Lua table and JSON output formats

### AST Nodes Improvements
- Add source location information to all nodes
- Support for attaching metadata to nodes
- Better serialization/deserialization of AST
- Utility functions for common AST transformations

## Future Plans

- **Code Analysis Tools**: Static analysis, style checking, complexity metrics
- **Code Transformation**: Dead code elimination, constant folding, AST-to-code generation
- **Obfuscation Features**: Identifier renaming, string encryption, control flow obfuscation
- **Documentation Generator**: Extract documentation from code comments
- **Plugin System**: Allow for custom extensions and transformations
- **Cross-Referencing**: Track variable usage across the codebase