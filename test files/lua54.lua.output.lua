return {
  ast = {
  ["type"] = "Chunk",
  ["comments"] = {
    [1] = {
      ["type"] = "COMMENT",
      ["value"] = " Extremely simplified Lua 5.4 test file",
      ["raw"] = "-- Extremely simplified Lua 5.4 test file",
      ["col"] = 1,
      ["line"] = 1,
    },
  },
  ["body"] = {
    [1] = {
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = false,
          ["type"] = "NumericLiteral",
          ["value"] = 42,
          ["raw"] = "42",
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["type"] = "COMMENT",
            ["value"] = " Extremely simplified Lua 5.4 test file",
            ["raw"] = "-- Extremely simplified Lua 5.4 test file",
            ["col"] = 1,
            ["line"] = 1,
          },
        },
      },
      ["variables"] = {
        [1] = {
          ["attributes"] = {
          },
          ["type"] = "Identifier",
          ["name"] = "number",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 2,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 2,
            },
          },
        },
      },
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 3,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 2,
        },
      },
    },
    [2] = {
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["type"] = "StringLiteral",
          ["value"] = "Hello, world!",
          ["raw"] = "\"Hello, world!\"",
        },
      },
      ["comments"] = {
      },
      ["variables"] = {
        [1] = {
          ["attributes"] = {
          },
          ["type"] = "Identifier",
          ["name"] = "str",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 3,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 3,
            },
          },
        },
      },
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 4,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 3,
        },
      },
    },
    [3] = {
      ["arguments"] = {
        [1] = {
          ["fields"] = {
            [1] = {
              ["type"] = "TableKeyString",
              ["value"] = {
                ["value"] = true,
                ["type"] = "BooleanLiteral",
              },
              ["key"] = {
                ["attributes"] = {
                },
                ["type"] = "Identifier",
                ["name"] = "test",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 10,
                    ["line"] = 4,
                  },
                  ["start"] = {
                    ["col"] = 10,
                    ["line"] = 4,
                  },
                },
              },
            },
          },
          ["type"] = "TableConstructorExpression",
          ["has_metamethods"] = false,
          ["metamethods"] = {
          },
        },
      },
      ["type"] = "ReturnStatement",
    },
  },
},
  tokens = {
  [1] = {
    ["type"] = "KEYWORD",
    ["value"] = "local",
    ["raw"] = "local",
    ["col"] = 1,
    ["line"] = 2,
  },
  [2] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "number",
    ["raw"] = "number",
    ["col"] = 7,
    ["line"] = 2,
  },
  [3] = {
    ["type"] = "ASSIGN",
    ["value"] = "=",
    ["raw"] = "=",
    ["col"] = 14,
    ["line"] = 2,
  },
  [4] = {
    ["type"] = "NUMBER",
    ["value"] = 42,
    ["raw"] = "42",
    ["col"] = 16,
    ["line"] = 2,
  },
  [5] = {
    ["type"] = "KEYWORD",
    ["value"] = "local",
    ["raw"] = "local",
    ["col"] = 1,
    ["line"] = 3,
  },
  [6] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "str",
    ["raw"] = "str",
    ["col"] = 7,
    ["line"] = 3,
  },
  [7] = {
    ["type"] = "ASSIGN",
    ["value"] = "=",
    ["raw"] = "=",
    ["col"] = 11,
    ["line"] = 3,
  },
  [8] = {
    ["type"] = "STRING",
    ["value"] = "Hello, world!",
    ["raw"] = "\"Hello, world!\"",
    ["col"] = 13,
    ["line"] = 3,
  },
  [9] = {
    ["type"] = "KEYWORD",
    ["value"] = "return",
    ["raw"] = "return",
    ["col"] = 1,
    ["line"] = 4,
  },
  [10] = {
    ["type"] = "LBRACE",
    ["value"] = "{",
    ["raw"] = "{",
    ["col"] = 8,
    ["line"] = 4,
  },
  [11] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "test",
    ["raw"] = "test",
    ["col"] = 10,
    ["line"] = 4,
  },
  [12] = {
    ["type"] = "ASSIGN",
    ["value"] = "=",
    ["raw"] = "=",
    ["col"] = 15,
    ["line"] = 4,
  },
  [13] = {
    ["type"] = "TRUE",
    ["value"] = true,
    ["raw"] = "true",
    ["col"] = 17,
    ["line"] = 4,
  },
  [14] = {
    ["type"] = "RBRACE",
    ["value"] = "}",
    ["raw"] = "}",
    ["col"] = 22,
    ["line"] = 4,
  },
  [15] = {
    ["type"] = "EOF",
    ["value"] = "",
    ["raw"] = "",
    ["col"] = 1,
    ["line"] = 5,
  },
}
}