<p align="center">
  <img src="NexusScript.png" alt="NexusScripts Logo" width="300" alt="Banner Image" />
</p>
<pre align="center">

# NexusScripts Parser Module

A powerful Lua parser, lexer, and AST generator for code analysis, transformation.

## Module Overview

The NexusScripts Parser Module consists of three main components that work together to parse and process Lua code:

### 1. Lexer (`lexer.lua`)

The lexer tokenizes Lua source code, breaking it down into meaningful tokens for the parser.

**Current Features:**
 Full Lua 5.x syntax support
 Comprehensive token types for all Lua operators and keywords
 Handles string literals with escape sequences
 Supports multi-line strings with long brackets (`[[...]]`)
 Processes numeric literals (decimal, hexadecimal)
 Handles comments (single-line and multi-line)
 Robust error recovery
 Line and column tracking for each token

### 2. Parser (`parser.lua`) 

The parser converts tokens into an Abstract Syntax Tree (AST) representation.

**Current Features:**
 Parses all standard Lua statements and expressions
   Variable declarations and assignments
   Function declarations and calls
   Control structures (if, while, for, repeat, etc.)
   Table constructors
   Expressions (binary, unary, literals, etc.)
 Error reporting with line and column information
 Error recovery strategies
 Supports nested expressions and statements

### 3. AST Nodes (`ast_nodes.lua`)

The AST node module defines the structure for each type of node in the Abstract Syntax Tree.

**Current Features:**
 Comprehensive node types for all Lua syntax elements
 Additional information for metamethod processing
 Support for special operators and their metamethod equivalents
 Node types include program structure, statements, expressions, and literals

## CLI Tool (Upcoming)

The NexusScripts Parser Module will include a command-line interface (CLI) tool with the following features:

 Parse Lua files and output AST representation
 Validate Lua syntax with detailed error reporting
 Transform Lua code (minify, beautify, etc.)
 Code obfuscation capabilities
 Metadata extraction from Lua files
 AST traversal and manipulation

## Planned Improvements

### Lexer Improvements
 Better error reporting with suggestions for corrections
 Support for Luau-specific syntax extensions
 Performance optimizations for large files
 Add preprocessor directives support
 Enhanced handling of Unicode characters

### Parser Improvements
 Add support for language extensions (Luau features)
 Implement more robust error recovery strategies
 Add scope analysis for variables
 Improve handling of complex expressions
 Support for comments as part of the AST

### AST Nodes Improvements
 Add source location information to all nodes
 Support for attaching metadata to nodes
 Better serialization/deserialization of AST
 Add utility functions for common AST transformations
 Implement visitor pattern for easier AST traversal

## Future Additions

 **Code Analysis Tools**: Static analysis, style checking, complexity metrics
 **Code Transformation**: Dead code elimination, constant folding, AST-to-code generation
 **Obfuscation Features**: Identifier renaming, string encryption, control flow obfuscation, etc
 **Type Checking**: Basic type inference and checking capabilities
 **Documentation Generator**: Extract documentation from code comments
 **Plugin System**: Allow for custom extensions and transformations
 **Cross-Referencing**: Track variable usage across the codebase

## Current CLI Tool Capabilities

The parser module includes a working CLI tool with the following capabilities:

```
nexusscripts@nexusscripts-7200-6744D:~/Desktop/Lua/src$ lua cli.lua help

 _   _                     ____            _       _       
| \ | | _____  ___   _ ___/ ___|  ___ _ __(_)_ __ | |_ ___ 
|  \| |/ _ \ \/ / | | / __\___ \ / __| '__| | '_ \| __/ __|
| |\  |  __/>  <| |_| \__ \___) | (__| |  | | |_) | |_\__ \
|_| \_|\___/_/\_\\__,_|___/____/ \___|_|  |_| .__/ \__|___/
                                            |_|           

                                              --== NexusScripts Lua Parser v1.0 ==--                                                         

Available commands:
  parse - Parse a Lua file and generate AST
      Usage: parse <input_file> [output_file] [--format=json|lua] [--output=ast|tokens|both]
  help - Show help information
      Usage: help [command]
  version - Show version information
      Usage: version

Examples:
  ./NexusScripts parse input.lua                        # Parse and output to input.lua.output.lua
  ./NexusScripts parse input.lua output.json --format=json    # Parse and output JSON
  ./NexusScripts parse input.lua --output=tokens              # Output only tokens
  ./NexusScripts parse input.lua --output=both               # Output both AST and tokens
  ./NexusScripts parse input.lua output.lua --verbose         # Enable verbose output
```

The CLI tool can:
 Parse Lua source files and generate their Abstract Syntax Tree (AST)
 Output tokenization information (lexical analysis)
 Generate output in either Lua table or JSON format
 Output AST only, tokens only, or both in a single command
 Create default output files (input_file.output.lua) when no output file is specified
 Use Lua format by default instead of JSON
 Provide verbose debugging information
 Verify syntax correctness with detailed error reporting

### CLI Examples

```bash
# Basic usage - outputs AST to input.lua.output.lua in Lua format
lua cli.lua parse input.lua

# Output both AST and tokens in JSON format
lua cli.lua parse input.lua --output=both --format=json

# Output only tokens to a specific file
lua cli.lua parse input.lua tokens_only.lua --output=tokens

# Output AST with verbose logging
lua cli.lua parse input.lua --verbose
```

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