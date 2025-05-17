<p align="center">
  <img src="NexusScript.png" alt="NexusScripts Logo" width="300" alt="Banner Image" />
</p>
<pre align="center">

# NexusScripts Parser Module

A Lua parser, lexer, and AST generator for code analysis and transformation.

## Module Overview

The NexusScripts Parser Module consists of several main components that work together to parse, process, and format Lua code:

### 1. Lexer (`lexer.lua`)

The lexer tokenizes Lua source code, breaking it down into meaningful tokens for the parser.

**Current Features:**
- Full Lua 5.x syntax support including:
  - **Lua 5.3 features**: Binary literals (`0b101010`), hexadecimal floating-point literals (`0x1.8p3`), UTF-8 string literals (`\u{1F680}`), bitwise operators (`&`, `|`, `~`, `<<`, `>>`), integer division (`//`)
  - **Lua 5.4 features**: Variable attributes (`<const>`, `<close>`, `<toclose>`)
- Comprehensive token types for all Lua operators and keywords
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
- Support for Lua language features:
  - **Lua 5.3**: Binary literals, hexadecimal floating points, UTF-8 strings, bitwise operations, integer division
  - **Lua 5.4**: Variable attributes (`<const>`, `<close>`, `<toclose>`), alternative attributes
- Error reporting with line and column information

### 3. AST Nodes (`ast_nodes.lua`)

The AST node module defines the structure for each type of node in the Abstract Syntax Tree.

**Current Features:**
- Node types for all Lua syntax elements
- Specialized support for Lua 5.3/5.4 features:
  - Flags for Lua 5.3 features (binary literals, hex float literals, UTF-8 strings, bitwise operations)
  - Support for Lua 5.4 variable attributes
- Comprehensive source location tracking
- Program structure, statements, expressions, and literals

### 4. Formatter (`formatter.lua`)

The formatter module handles code beautification and minification based on the AST.

**Current Features:**
- Beautification with configurable formatting options
- Minification with various optimization levels
- Preservation of code semantics while transforming appearance
- Customizable spacing, indentation, and line break rules
- Consistent handling of operators, including bitwise operators
- Comment preservation options
- Intelligent comment removal while preserving code structure

### 5. Formatter Configuration (`formatter_config.lua`)

The formatter configuration module manages formatting preferences and presets.

**Current Features:**
- Default configuration with reasonable defaults
- Multiple built-in presets (default, compact, expanded, minify, rmcomments)
- Configuration merging capabilities
- Save/load configuration to/from files
- Comprehensive options for:
  - Indentation style and size
  - Line breaks and maximum line length
  - Spacing around operators, commas, and brackets
  - Comment preservation settings
  - Minification options

### 6. Formatter Pipeline (`formatter_pipeline.lua`)

The formatter pipeline orchestrates the entire formatting process from code to AST to formatted output.

**Current Features:**
- Complete formatting workflow handling
- Support for both beautification and minification
- Integration with lexer, parser, and formatter modules
- Preset-based or custom configuration
- Robust error handling and reporting
- Debugging capabilities for AST inspection

## CLI Tool

The NexusScripts Parser Module includes a command-line interface (CLI) tool with the following features:

- Parse Lua files and output AST representation
- Format Lua files with beautification, minification, or comment removal
- Multiple formatting style presets (default, compact, expanded, minify, rmcomments)
- Custom formatter configuration support
- Generate output in either Lua table or JSON format
- Output AST only, tokens only, or both in a single command
- Create default output files when no output file is specified

### CLI Examples

```bash
# Basic parsing - outputs both AST and tokens to input.lua.output.lua in Lua format
lua src/cli.lua parse input.lua

# Output both AST and tokens in JSON format
lua src/cli.lua parse input.lua --output=both --format=json

# Output only tokens to a specific file
lua src/cli.lua parse input.lua tokens_only.lua --output=tokens

# Output AST with verbose logging
lua src/cli.lua parse input.lua --verbose

# Format a Lua file with default style
lua src/cli.lua format input.lua

# Format a Lua file with compact style
lua src/cli.lua format input.lua --style=compact

# Minify a Lua file
lua src/cli.lua format input.lua --style=minify

# Remove all comments from a Lua file
lua src/cli.lua format input.lua --style=rmcomments

# Format using a custom configuration
lua src/cli.lua format input.lua --config=my_config.lua

# Format with AST debugging (prints AST structure to console)
lua src/cli.lua format input.lua --debug-ast

# Create a formatter configuration file with a preset
lua src/cli.lua config my_config.lua --preset=expanded

# Show help information
lua src/cli.lua help
```

## Planned Improvements

### Lexer Improvements
- More detailed error reporting with suggestions for corrections
- Performance optimizations for large files
- Enhanced handling of Unicode characters

### Parser Improvements
- More robust error recovery strategies
- Add scope analysis for variables
- ✅ Improved handling of complex expressions
  - Expression depth tracking to prevent stack overflow
  - Enhanced error reporting with contextual information
  - Support for deeply nested structures with mixed operator precedence
  - Graceful handling of pathologically complex inputs
- ✅ Support for comments as part of the AST
  - Comments are preserved with source location information
  - Attached to relevant AST nodes based on position
  - Preserved as leading/trailing associations
  - Available in both Lua table and JSON output formats
  - Fixed handling of file-level comments at the top of scripts
  - Improved comment attachment logic to prevent duplication
  - Proper handling of comments after shebangs

### AST Nodes Improvements
- ✅ Add source location information to all nodes
  - Comprehensive tracking of line, column, and character offset positions
  - Source file attribution for precise error reporting
  - Enhanced token location data throughout the parsing process
  - Utility functions for source range formatting and extraction
- Support for attaching metadata to nodes
- Better serialization/deserialization of AST
- Utility functions for common AST transformations

### Formatter Improvements
- Add intelligent handling of long expressions with line wrapping
- Support for more advanced table formatting options
- Better handling of complex multi-line comments
- Automatic detection of formatting style from existing code
- Incremental formatting for large files
- Configuration validation and suggestions

## Future Plans

- **Code Analysis Tools**: Static analysis, style checking, complexity metrics
- **Code Transformation**: Dead code elimination, constant folding, AST-to-code generation
- **Obfuscation Features**: Identifier renaming, string encryption, control flow obfuscation
- **Documentation Generator**: Extract documentation from code comments
- **Plugin System**: Allow for custom extensions and transformations
- **Cross-Referencing**: Track variable usage across the codebase