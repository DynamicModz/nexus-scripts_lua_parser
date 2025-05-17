return {
  ast = {
  ["comments"] = {
    [1] = {
      ["raw"] = "--[[[\
    Dev : NexusScripts\
]]",
      ["value"] = "[[[\
    Dev : NexusScripts\
]]",
      ["type"] = "COMMENT",
      ["col"] = 1,
      ["line"] = 1,
    },
  },
  ["body"] = {
    [1] = {
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 5,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 4,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = false,
          ["raw"] = "42",
          ["value"] = 42,
          ["type"] = "NumericLiteral",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "num",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 4,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 4,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
      ["type"] = "LocalStatement",
    },
    [2] = {
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 6,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 5,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = false,
          ["raw"] = "3.14159",
          ["value"] = 3.14159,
          ["type"] = "NumericLiteral",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "float",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 5,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 5,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
      ["type"] = "LocalStatement",
    },
    [3] = {
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = false,
          ["raw"] = "0xFF",
          ["value"] = 255,
          ["type"] = "NumericLiteral",
        },
      },
      ["type"] = "LocalStatement",
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 7,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 6,
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["raw"] = "-- Integer",
            ["value"] = " Integer",
            ["type"] = "COMMENT",
            ["col"] = 33,
            ["line"] = 4,
          },
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "hex",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 6,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 6,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
    },
    [4] = {
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["raw"] = "0x1p8",
          ["value"] = 256.0,
          ["type"] = "NumericLiteral",
        },
      },
      ["type"] = "LocalStatement",
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 9,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 7,
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["raw"] = "-- Decimal float",
            ["value"] = " Decimal float",
            ["type"] = "COMMENT",
            ["col"] = 33,
            ["line"] = 5,
          },
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "hex_float",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 7,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
    },
    [5] = {
      ["init"] = {
        [1] = {
          ["swap_operands"] = false,
          ["lua53_feature"] = true,
          ["metamethod"] = "__band",
          ["type"] = "BinaryExpression",
          ["operator"] = "&",
          ["substituted_operator"] = "&",
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0xFF",
            ["value"] = 255,
            ["type"] = "NumericLiteral",
          },
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["value"] = 15,
            ["type"] = "NumericLiteral",
          },
        },
      },
      ["type"] = "LocalStatement",
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 10,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 9,
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["raw"] = "-- Hexadecimal integer (255)",
            ["value"] = " Hexadecimal integer (255)",
            ["type"] = "COMMENT",
            ["col"] = 33,
            ["line"] = 6,
          },
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "band",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 9,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 9,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
    },
    [6] = {
      ["init"] = {
        [1] = {
          ["swap_operands"] = false,
          ["lua53_feature"] = true,
          ["metamethod"] = "__bor",
          ["type"] = "BinaryExpression",
          ["operator"] = "|",
          ["substituted_operator"] = "|",
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0xF0",
            ["value"] = 240,
            ["type"] = "NumericLiteral",
          },
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["value"] = 15,
            ["type"] = "NumericLiteral",
          },
        },
      },
      ["type"] = "LocalStatement",
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 11,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 10,
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["raw"] = "-- Hex float (256.0) - Lua 5.3 feature",
            ["value"] = " Hex float (256.0) - Lua 5.3 feature",
            ["type"] = "COMMENT",
            ["col"] = 33,
            ["line"] = 7,
          },
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "bor",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 10,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 10,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
    },
    [7] = {
      ["init"] = {
        [1] = {
          ["swap_operands"] = false,
          ["lua53_feature"] = true,
          ["metamethod"] = "__bxor",
          ["type"] = "BinaryExpression",
          ["operator"] = "~",
          ["substituted_operator"] = "~",
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0xFF",
            ["value"] = 255,
            ["type"] = "NumericLiteral",
          },
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["value"] = 15,
            ["type"] = "NumericLiteral",
          },
        },
      },
      ["type"] = "LocalStatement",
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 12,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 11,
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["raw"] = "-- Bitwise AND: 15",
            ["value"] = " Bitwise AND: 15",
            ["type"] = "COMMENT",
            ["col"] = 33,
            ["line"] = 9,
          },
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "bxor",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 11,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 11,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
    },
    [8] = {
      ["init"] = {
        [1] = {
          ["argument"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["value"] = 15,
            ["type"] = "NumericLiteral",
          },
          ["metamethod"] = "__bnot",
          ["type"] = "UnaryExpression",
          ["operator"] = "~",
          ["loc"] = {
            ["end"] = {
              ["col"] = 14,
              ["line"] = 12,
            },
            ["start"] = {
              ["col"] = 14,
              ["line"] = 12,
            },
          },
          ["is_lua53_feature"] = true,
        },
      },
      ["type"] = "LocalStatement",
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 13,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 12,
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["raw"] = "-- Bitwise OR: 255 ",
            ["value"] = " Bitwise OR: 255 ",
            ["type"] = "COMMENT",
            ["col"] = 33,
            ["line"] = 10,
          },
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "bnot",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 12,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 12,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
    },
    [9] = {
      ["init"] = {
        [1] = {
          ["swap_operands"] = false,
          ["lua53_feature"] = true,
          ["metamethod"] = "__shl",
          ["type"] = "BinaryExpression",
          ["operator"] = "<<",
          ["substituted_operator"] = "<<",
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "1",
            ["value"] = 1,
            ["type"] = "NumericLiteral",
          },
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "3",
            ["value"] = 3,
            ["type"] = "NumericLiteral",
          },
        },
      },
      ["type"] = "LocalStatement",
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 14,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 13,
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["raw"] = "-- Bitwise XOR: 240",
            ["value"] = " Bitwise XOR: 240",
            ["type"] = "COMMENT",
            ["col"] = 33,
            ["line"] = 11,
          },
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "shl",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 13,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 13,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
    },
    [10] = {
      ["init"] = {
        [1] = {
          ["swap_operands"] = false,
          ["lua53_feature"] = true,
          ["metamethod"] = "__shr",
          ["type"] = "BinaryExpression",
          ["operator"] = ">>",
          ["substituted_operator"] = ">>",
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x80",
            ["value"] = 128,
            ["type"] = "NumericLiteral",
          },
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "3",
            ["value"] = 3,
            ["type"] = "NumericLiteral",
          },
        },
      },
      ["type"] = "LocalStatement",
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 16,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 14,
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["raw"] = "-- Bitwise NOT: -16",
            ["value"] = " Bitwise NOT: -16",
            ["type"] = "COMMENT",
            ["col"] = 33,
            ["line"] = 12,
          },
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "shr",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 14,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 14,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
    },
    [11] = {
      ["init"] = {
        [1] = {
          ["swap_operands"] = false,
          ["lua53_feature"] = true,
          ["metamethod"] = "__idiv",
          ["type"] = "BinaryExpression",
          ["operator"] = "//",
          ["substituted_operator"] = "//",
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "10",
            ["value"] = 10,
            ["type"] = "NumericLiteral",
          },
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "3",
            ["value"] = 3,
            ["type"] = "NumericLiteral",
          },
        },
      },
      ["type"] = "LocalStatement",
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 18,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 16,
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["raw"] = "-- Shift left: 8",
            ["value"] = " Shift left: 8",
            ["type"] = "COMMENT",
            ["col"] = 33,
            ["line"] = 13,
          },
        },
        ["trailing"] = {
          [1] = {
            ["raw"] = "-- Should be \"Lua 5.3\" or later",
            ["value"] = " Should be \"Lua 5.3\" or later",
            ["type"] = "COMMENT",
            ["col"] = 28,
            ["line"] = 50,
          },
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "idiv",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 16,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 16,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
    },
    [12] = {
      ["type"] = "FunctionDeclaration",
      ["isLocal"] = true,
      ["identifier"] = {
        ["name"] = "bitwise_ops",
        ["loc"] = {
          ["end"] = {
            ["col"] = 16,
            ["line"] = 18,
          },
          ["start"] = {
            ["col"] = 16,
            ["line"] = 18,
          },
        },
        ["attributes"] = {
        },
        ["type"] = "Identifier",
      },
      ["body"] = {
        [1] = {
          ["init"] = {
            [1] = {
              ["metamethods"] = {
              },
              ["fields"] = {
              },
              ["has_metamethods"] = false,
              ["type"] = "TableConstructorExpression",
            },
          },
          ["type"] = "LocalStatement",
          ["loc"] = {
            ["end"] = {
              ["col"] = 5,
              ["line"] = 20,
            },
            ["start"] = {
              ["col"] = 5,
              ["line"] = 19,
            },
          },
          ["comments"] = {
            ["leading"] = {
              [1] = {
                ["raw"] = "-- Shift right: 16",
                ["value"] = " Shift right: 16",
                ["type"] = "COMMENT",
                ["col"] = 33,
                ["line"] = 14,
              },
              [2] = {
                ["raw"] = "-- Integer division: 3",
                ["value"] = " Integer division: 3",
                ["type"] = "COMMENT",
                ["col"] = 33,
                ["line"] = 16,
              },
            },
          },
          ["variables"] = {
            [1] = {
              ["name"] = "results",
              ["loc"] = {
                ["end"] = {
                  ["col"] = 11,
                  ["line"] = 19,
                },
                ["start"] = {
                  ["col"] = 11,
                  ["line"] = 19,
                },
              },
              ["attributes"] = {
              },
              ["type"] = "Identifier",
            },
          },
        },
        [2] = {
          ["init"] = {
            [1] = {
              ["swap_operands"] = false,
              ["lua53_feature"] = true,
              ["metamethod"] = "__band",
              ["type"] = "BinaryExpression",
              ["operator"] = "&",
              ["substituted_operator"] = "&",
              ["left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 20,
                    ["line"] = 20,
                  },
                  ["start"] = {
                    ["col"] = 20,
                    ["line"] = 20,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["right"] = {
                ["name"] = "b",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 24,
                    ["line"] = 20,
                  },
                  ["start"] = {
                    ["col"] = 24,
                    ["line"] = 20,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 20,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 20,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["identifier"] = {
                ["name"] = "band",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 13,
                    ["line"] = 20,
                  },
                  ["start"] = {
                    ["col"] = 13,
                    ["line"] = 20,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
            },
          },
        },
        [3] = {
          ["init"] = {
            [1] = {
              ["swap_operands"] = false,
              ["lua53_feature"] = true,
              ["metamethod"] = "__bor",
              ["type"] = "BinaryExpression",
              ["operator"] = "|",
              ["substituted_operator"] = "|",
              ["left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 19,
                    ["line"] = 21,
                  },
                  ["start"] = {
                    ["col"] = 19,
                    ["line"] = 21,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["right"] = {
                ["name"] = "b",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 23,
                    ["line"] = 21,
                  },
                  ["start"] = {
                    ["col"] = 23,
                    ["line"] = 21,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 21,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 21,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["identifier"] = {
                ["name"] = "bor",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 13,
                    ["line"] = 21,
                  },
                  ["start"] = {
                    ["col"] = 13,
                    ["line"] = 21,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
            },
          },
        },
        [4] = {
          ["init"] = {
            [1] = {
              ["swap_operands"] = false,
              ["lua53_feature"] = true,
              ["metamethod"] = "__bxor",
              ["type"] = "BinaryExpression",
              ["operator"] = "~",
              ["substituted_operator"] = "~",
              ["left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 20,
                    ["line"] = 22,
                  },
                  ["start"] = {
                    ["col"] = 20,
                    ["line"] = 22,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["right"] = {
                ["name"] = "b",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 24,
                    ["line"] = 22,
                  },
                  ["start"] = {
                    ["col"] = 24,
                    ["line"] = 22,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 22,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 22,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["identifier"] = {
                ["name"] = "bxor",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 13,
                    ["line"] = 22,
                  },
                  ["start"] = {
                    ["col"] = 13,
                    ["line"] = 22,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
            },
          },
        },
        [5] = {
          ["init"] = {
            [1] = {
              ["argument"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 21,
                    ["line"] = 23,
                  },
                  ["start"] = {
                    ["col"] = 21,
                    ["line"] = 23,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["metamethod"] = "__bnot",
              ["type"] = "UnaryExpression",
              ["operator"] = "~",
              ["loc"] = {
                ["end"] = {
                  ["col"] = 20,
                  ["line"] = 23,
                },
                ["start"] = {
                  ["col"] = 20,
                  ["line"] = 23,
                },
              },
              ["is_lua53_feature"] = true,
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 23,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 23,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["identifier"] = {
                ["name"] = "bnot",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 13,
                    ["line"] = 23,
                  },
                  ["start"] = {
                    ["col"] = 13,
                    ["line"] = 23,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
            },
          },
        },
        [6] = {
          ["init"] = {
            [1] = {
              ["swap_operands"] = false,
              ["lua53_feature"] = true,
              ["metamethod"] = "__shl",
              ["type"] = "BinaryExpression",
              ["operator"] = "<<",
              ["substituted_operator"] = "<<",
              ["left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 19,
                    ["line"] = 24,
                  },
                  ["start"] = {
                    ["col"] = 19,
                    ["line"] = 24,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "2",
                ["value"] = 2,
                ["type"] = "NumericLiteral",
              },
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 24,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 24,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["identifier"] = {
                ["name"] = "shl",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 13,
                    ["line"] = 24,
                  },
                  ["start"] = {
                    ["col"] = 13,
                    ["line"] = 24,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
            },
          },
        },
        [7] = {
          ["init"] = {
            [1] = {
              ["swap_operands"] = false,
              ["lua53_feature"] = true,
              ["metamethod"] = "__shr",
              ["type"] = "BinaryExpression",
              ["operator"] = ">>",
              ["substituted_operator"] = ">>",
              ["left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 19,
                    ["line"] = 25,
                  },
                  ["start"] = {
                    ["col"] = 19,
                    ["line"] = 25,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "1",
                ["value"] = 1,
                ["type"] = "NumericLiteral",
              },
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 25,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 25,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["identifier"] = {
                ["name"] = "shr",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 13,
                    ["line"] = 25,
                  },
                  ["start"] = {
                    ["col"] = 13,
                    ["line"] = 25,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
            },
          },
        },
        [8] = {
          ["init"] = {
            [1] = {
              ["swap_operands"] = false,
              ["lua53_feature"] = true,
              ["metamethod"] = "__idiv",
              ["type"] = "BinaryExpression",
              ["operator"] = "//",
              ["substituted_operator"] = "//",
              ["left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 20,
                    ["line"] = 26,
                  },
                  ["start"] = {
                    ["col"] = 20,
                    ["line"] = 26,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["right"] = {
                ["name"] = "b",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 25,
                    ["line"] = 26,
                  },
                  ["start"] = {
                    ["col"] = 25,
                    ["line"] = 26,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 26,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 26,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["identifier"] = {
                ["name"] = "idiv",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 13,
                    ["line"] = 26,
                  },
                  ["start"] = {
                    ["col"] = 13,
                    ["line"] = 26,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
            },
          },
        },
        [9] = {
          ["arguments"] = {
            [1] = {
              ["name"] = "results",
              ["loc"] = {
                ["end"] = {
                  ["col"] = 12,
                  ["line"] = 27,
                },
                ["start"] = {
                  ["col"] = 12,
                  ["line"] = 27,
                },
              },
              ["attributes"] = {
              },
              ["type"] = "Identifier",
            },
          },
          ["type"] = "ReturnStatement",
        },
      },
      ["parameters"] = {
        [1] = {
          ["name"] = "a",
          ["loc"] = {
            ["end"] = {
              ["col"] = 28,
              ["line"] = 18,
            },
            ["start"] = {
              ["col"] = 28,
              ["line"] = 18,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
        [2] = {
          ["name"] = "b",
          ["loc"] = {
            ["end"] = {
              ["col"] = 31,
              ["line"] = 18,
            },
            ["start"] = {
              ["col"] = 31,
              ["line"] = 18,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
    },
    [13] = {
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 32,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 30,
        },
      },
      ["init"] = {
        [1] = {
          ["swap_operands"] = false,
          ["lua53_feature"] = true,
          ["metamethod"] = "__bor",
          ["type"] = "BinaryExpression",
          ["operator"] = "|",
          ["substituted_operator"] = "|",
          ["left"] = {
            ["swap_operands"] = false,
            ["lua53_feature"] = true,
            ["metamethod"] = "__shl",
            ["type"] = "BinaryExpression",
            ["operator"] = "<<",
            ["substituted_operator"] = "<<",
            ["left"] = {
              ["swap_operands"] = false,
              ["lua53_feature"] = true,
              ["metamethod"] = "__band",
              ["type"] = "BinaryExpression",
              ["operator"] = "&",
              ["substituted_operator"] = "&",
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xFF",
                ["value"] = 255,
                ["type"] = "NumericLiteral",
              },
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["value"] = 15,
                ["type"] = "NumericLiteral",
              },
            },
            ["right"] = {
              ["is_lua53_feature"] = false,
              ["raw"] = "2",
              ["value"] = 2,
              ["type"] = "NumericLiteral",
            },
          },
          ["right"] = {
            ["swap_operands"] = false,
            ["lua53_feature"] = true,
            ["metamethod"] = "__shr",
            ["type"] = "BinaryExpression",
            ["operator"] = ">>",
            ["substituted_operator"] = ">>",
            ["left"] = {
              ["swap_operands"] = false,
              ["lua53_feature"] = true,
              ["metamethod"] = "__band",
              ["type"] = "BinaryExpression",
              ["operator"] = "&",
              ["substituted_operator"] = "&",
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xF0",
                ["value"] = 240,
                ["type"] = "NumericLiteral",
              },
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["value"] = 15,
                ["type"] = "NumericLiteral",
              },
            },
            ["right"] = {
              ["is_lua53_feature"] = false,
              ["raw"] = "1",
              ["value"] = 1,
              ["type"] = "NumericLiteral",
            },
          },
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "complex",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 30,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 30,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
      ["type"] = "LocalStatement",
    },
    [14] = {
      ["loc"] = {
        ["end"] = {
          ["col"] = 1,
          ["line"] = 34,
        },
        ["start"] = {
          ["col"] = 1,
          ["line"] = 32,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["raw"] = "0x1.921fb54442d18p+1",
          ["value"] = 3.1415926535898,
          ["type"] = "NumericLiteral",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "pi_hex",
          ["loc"] = {
            ["end"] = {
              ["col"] = 7,
              ["line"] = 32,
            },
            ["start"] = {
              ["col"] = 7,
              ["line"] = 32,
            },
          },
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
      ["type"] = "LocalStatement",
    },
    [15] = {
      ["arguments"] = {
        [1] = {
          ["metamethods"] = {
          },
          ["fields"] = {
            [1] = {
              ["value"] = {
                ["name"] = "num",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 11,
                    ["line"] = 35,
                  },
                  ["start"] = {
                    ["col"] = 11,
                    ["line"] = 35,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["key"] = {
                ["name"] = "num",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 35,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 35,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["type"] = "TableKeyString",
            },
            [2] = {
              ["value"] = {
                ["name"] = "float",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 13,
                    ["line"] = 36,
                  },
                  ["start"] = {
                    ["col"] = 13,
                    ["line"] = 36,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["key"] = {
                ["name"] = "float",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 36,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 36,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["type"] = "TableKeyString",
            },
            [3] = {
              ["value"] = {
                ["name"] = "hex",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 11,
                    ["line"] = 37,
                  },
                  ["start"] = {
                    ["col"] = 11,
                    ["line"] = 37,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["key"] = {
                ["name"] = "hex",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 37,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 37,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["type"] = "TableKeyString",
            },
            [4] = {
              ["value"] = {
                ["name"] = "hex_float",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 17,
                    ["line"] = 38,
                  },
                  ["start"] = {
                    ["col"] = 17,
                    ["line"] = 38,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["key"] = {
                ["name"] = "hex_float",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 38,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 38,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["type"] = "TableKeyString",
            },
            [5] = {
              ["value"] = {
                ["name"] = "pi_hex",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 14,
                    ["line"] = 39,
                  },
                  ["start"] = {
                    ["col"] = 14,
                    ["line"] = 39,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["key"] = {
                ["name"] = "pi_hex",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 39,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 39,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["type"] = "TableKeyString",
            },
            [6] = {
              ["value"] = {
                ["metamethods"] = {
                },
                ["fields"] = {
                  [1] = {
                    ["value"] = {
                      ["name"] = "band",
                      ["loc"] = {
                        ["end"] = {
                          ["col"] = 16,
                          ["line"] = 41,
                        },
                        ["start"] = {
                          ["col"] = 16,
                          ["line"] = 41,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                    ["key"] = {
                      ["name"] = "band",
                      ["loc"] = {
                        ["end"] = {
                          ["col"] = 9,
                          ["line"] = 41,
                        },
                        ["start"] = {
                          ["col"] = 9,
                          ["line"] = 41,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                    ["type"] = "TableKeyString",
                  },
                  [2] = {
                    ["value"] = {
                      ["name"] = "bor",
                      ["loc"] = {
                        ["end"] = {
                          ["col"] = 15,
                          ["line"] = 42,
                        },
                        ["start"] = {
                          ["col"] = 15,
                          ["line"] = 42,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                    ["key"] = {
                      ["name"] = "bor",
                      ["loc"] = {
                        ["end"] = {
                          ["col"] = 9,
                          ["line"] = 42,
                        },
                        ["start"] = {
                          ["col"] = 9,
                          ["line"] = 42,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                    ["type"] = "TableKeyString",
                  },
                  [3] = {
                    ["value"] = {
                      ["name"] = "bxor",
                      ["loc"] = {
                        ["end"] = {
                          ["col"] = 16,
                          ["line"] = 43,
                        },
                        ["start"] = {
                          ["col"] = 16,
                          ["line"] = 43,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                    ["key"] = {
                      ["name"] = "bxor",
                      ["loc"] = {
                        ["end"] = {
                          ["col"] = 9,
                          ["line"] = 43,
                        },
                        ["start"] = {
                          ["col"] = 9,
                          ["line"] = 43,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                    ["type"] = "TableKeyString",
                  },
                  [4] = {
                    ["value"] = {
                      ["name"] = "bnot",
                      ["loc"] = {
                        ["end"] = {
                          ["col"] = 16,
                          ["line"] = 44,
                        },
                        ["start"] = {
                          ["col"] = 16,
                          ["line"] = 44,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                    ["key"] = {
                      ["name"] = "bnot",
                      ["loc"] = {
                        ["end"] = {
                          ["col"] = 9,
                          ["line"] = 44,
                        },
                        ["start"] = {
                          ["col"] = 9,
                          ["line"] = 44,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                    ["type"] = "TableKeyString",
                  },
                  [5] = {
                    ["value"] = {
                      ["name"] = "shl",
                      ["loc"] = {
                        ["end"] = {
                          ["col"] = 15,
                          ["line"] = 45,
                        },
                        ["start"] = {
                          ["col"] = 15,
                          ["line"] = 45,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                    ["key"] = {
                      ["name"] = "shl",
                      ["loc"] = {
                        ["end"] = {
                          ["col"] = 9,
                          ["line"] = 45,
                        },
                        ["start"] = {
                          ["col"] = 9,
                          ["line"] = 45,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                    ["type"] = "TableKeyString",
                  },
                  [6] = {
                    ["value"] = {
                      ["name"] = "shr",
                      ["loc"] = {
                        ["end"] = {
                          ["col"] = 15,
                          ["line"] = 46,
                        },
                        ["start"] = {
                          ["col"] = 15,
                          ["line"] = 46,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                    ["key"] = {
                      ["name"] = "shr",
                      ["loc"] = {
                        ["end"] = {
                          ["col"] = 9,
                          ["line"] = 46,
                        },
                        ["start"] = {
                          ["col"] = 9,
                          ["line"] = 46,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                    ["type"] = "TableKeyString",
                  },
                },
                ["has_metamethods"] = false,
                ["type"] = "TableConstructorExpression",
              },
              ["key"] = {
                ["name"] = "bitwise",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 40,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 40,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["type"] = "TableKeyString",
            },
            [7] = {
              ["value"] = {
                ["name"] = "idiv",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 12,
                    ["line"] = 48,
                  },
                  ["start"] = {
                    ["col"] = 12,
                    ["line"] = 48,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["key"] = {
                ["name"] = "idiv",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 48,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 48,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["type"] = "TableKeyString",
            },
            [8] = {
              ["value"] = {
                ["name"] = "complex",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 15,
                    ["line"] = 49,
                  },
                  ["start"] = {
                    ["col"] = 15,
                    ["line"] = 49,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["key"] = {
                ["name"] = "complex",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 49,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 49,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["type"] = "TableKeyString",
            },
            [9] = {
              ["value"] = {
                ["name"] = "_VERSION",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 19,
                    ["line"] = 50,
                  },
                  ["start"] = {
                    ["col"] = 19,
                    ["line"] = 50,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["key"] = {
                ["name"] = "lua_version",
                ["loc"] = {
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 50,
                  },
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 50,
                  },
                },
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["type"] = "TableKeyString",
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "TableConstructorExpression",
        },
      },
      ["type"] = "ReturnStatement",
    },
  },
  ["type"] = "Chunk",
},
  tokens = {
  [1] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 4,
  },
  [2] = {
    ["raw"] = "num",
    ["value"] = "num",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 4,
  },
  [3] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 11,
    ["line"] = 4,
  },
  [4] = {
    ["raw"] = "42",
    ["value"] = 42,
    ["type"] = "NUMBER",
    ["col"] = 13,
    ["line"] = 4,
  },
  [5] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 5,
  },
  [6] = {
    ["raw"] = "float",
    ["value"] = "float",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 5,
  },
  [7] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 13,
    ["line"] = 5,
  },
  [8] = {
    ["raw"] = "3.14159",
    ["value"] = 3.14159,
    ["type"] = "NUMBER",
    ["col"] = 15,
    ["line"] = 5,
  },
  [9] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 6,
  },
  [10] = {
    ["raw"] = "hex",
    ["value"] = "hex",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 6,
  },
  [11] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 11,
    ["line"] = 6,
  },
  [12] = {
    ["raw"] = "0xFF",
    ["value"] = 255,
    ["type"] = "NUMBER",
    ["col"] = 13,
    ["line"] = 6,
  },
  [13] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 7,
  },
  [14] = {
    ["raw"] = "hex_float",
    ["value"] = "hex_float",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 7,
  },
  [15] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 17,
    ["line"] = 7,
  },
  [16] = {
    ["raw"] = "0x1p8",
    ["value"] = 256.0,
    ["type"] = "NUMBER",
    ["col"] = 19,
    ["line"] = 7,
  },
  [17] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 9,
  },
  [18] = {
    ["raw"] = "band",
    ["value"] = "band",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 9,
  },
  [19] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 12,
    ["line"] = 9,
  },
  [20] = {
    ["raw"] = "0xFF",
    ["value"] = 255,
    ["type"] = "NUMBER",
    ["col"] = 14,
    ["line"] = 9,
  },
  [21] = {
    ["raw"] = "&",
    ["value"] = "&",
    ["type"] = "BAND",
    ["col"] = 19,
    ["line"] = 9,
  },
  [22] = {
    ["raw"] = "0x0F",
    ["value"] = 15,
    ["type"] = "NUMBER",
    ["col"] = 21,
    ["line"] = 9,
  },
  [23] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 10,
  },
  [24] = {
    ["raw"] = "bor",
    ["value"] = "bor",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 10,
  },
  [25] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 11,
    ["line"] = 10,
  },
  [26] = {
    ["raw"] = "0xF0",
    ["value"] = 240,
    ["type"] = "NUMBER",
    ["col"] = 13,
    ["line"] = 10,
  },
  [27] = {
    ["raw"] = "|",
    ["value"] = "|",
    ["type"] = "BOR",
    ["col"] = 18,
    ["line"] = 10,
  },
  [28] = {
    ["raw"] = "0x0F",
    ["value"] = 15,
    ["type"] = "NUMBER",
    ["col"] = 20,
    ["line"] = 10,
  },
  [29] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 11,
  },
  [30] = {
    ["raw"] = "bxor",
    ["value"] = "bxor",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 11,
  },
  [31] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 12,
    ["line"] = 11,
  },
  [32] = {
    ["raw"] = "0xFF",
    ["value"] = 255,
    ["type"] = "NUMBER",
    ["col"] = 14,
    ["line"] = 11,
  },
  [33] = {
    ["raw"] = "~",
    ["value"] = "~",
    ["type"] = "BXOR",
    ["col"] = 19,
    ["line"] = 11,
  },
  [34] = {
    ["raw"] = "0x0F",
    ["value"] = 15,
    ["type"] = "NUMBER",
    ["col"] = 21,
    ["line"] = 11,
  },
  [35] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 12,
  },
  [36] = {
    ["raw"] = "bnot",
    ["value"] = "bnot",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 12,
  },
  [37] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 12,
    ["line"] = 12,
  },
  [38] = {
    ["raw"] = "~",
    ["value"] = "~",
    ["type"] = "BXOR",
    ["col"] = 14,
    ["line"] = 12,
  },
  [39] = {
    ["raw"] = "0x0F",
    ["value"] = 15,
    ["type"] = "NUMBER",
    ["col"] = 15,
    ["line"] = 12,
  },
  [40] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 13,
  },
  [41] = {
    ["raw"] = "shl",
    ["value"] = "shl",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 13,
  },
  [42] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 11,
    ["line"] = 13,
  },
  [43] = {
    ["raw"] = "1",
    ["value"] = 1,
    ["type"] = "NUMBER",
    ["col"] = 13,
    ["line"] = 13,
  },
  [44] = {
    ["raw"] = "<<",
    ["value"] = "<<",
    ["type"] = "SHL",
    ["col"] = 15,
    ["line"] = 13,
  },
  [45] = {
    ["raw"] = "3",
    ["value"] = 3,
    ["type"] = "NUMBER",
    ["col"] = 18,
    ["line"] = 13,
  },
  [46] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 14,
  },
  [47] = {
    ["raw"] = "shr",
    ["value"] = "shr",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 14,
  },
  [48] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 11,
    ["line"] = 14,
  },
  [49] = {
    ["raw"] = "0x80",
    ["value"] = 128,
    ["type"] = "NUMBER",
    ["col"] = 13,
    ["line"] = 14,
  },
  [50] = {
    ["raw"] = ">>",
    ["value"] = ">>",
    ["type"] = "SHR",
    ["col"] = 18,
    ["line"] = 14,
  },
  [51] = {
    ["raw"] = "3",
    ["value"] = 3,
    ["type"] = "NUMBER",
    ["col"] = 21,
    ["line"] = 14,
  },
  [52] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 16,
  },
  [53] = {
    ["raw"] = "idiv",
    ["value"] = "idiv",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 16,
  },
  [54] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 12,
    ["line"] = 16,
  },
  [55] = {
    ["raw"] = "10",
    ["value"] = 10,
    ["type"] = "NUMBER",
    ["col"] = 14,
    ["line"] = 16,
  },
  [56] = {
    ["raw"] = "//",
    ["value"] = "//",
    ["type"] = "IDIV",
    ["col"] = 17,
    ["line"] = 16,
  },
  [57] = {
    ["raw"] = "3",
    ["value"] = 3,
    ["type"] = "NUMBER",
    ["col"] = 20,
    ["line"] = 16,
  },
  [58] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 18,
  },
  [59] = {
    ["raw"] = "function",
    ["value"] = "function",
    ["type"] = "KEYWORD",
    ["col"] = 7,
    ["line"] = 18,
  },
  [60] = {
    ["raw"] = "bitwise_ops",
    ["value"] = "bitwise_ops",
    ["type"] = "IDENTIFIER",
    ["col"] = 16,
    ["line"] = 18,
  },
  [61] = {
    ["raw"] = "(",
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["col"] = 27,
    ["line"] = 18,
  },
  [62] = {
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 28,
    ["line"] = 18,
  },
  [63] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 29,
    ["line"] = 18,
  },
  [64] = {
    ["raw"] = "b",
    ["value"] = "b",
    ["type"] = "IDENTIFIER",
    ["col"] = 31,
    ["line"] = 18,
  },
  [65] = {
    ["raw"] = ")",
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["col"] = 32,
    ["line"] = 18,
  },
  [66] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 5,
    ["line"] = 19,
  },
  [67] = {
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 11,
    ["line"] = 19,
  },
  [68] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 19,
    ["line"] = 19,
  },
  [69] = {
    ["raw"] = "{",
    ["value"] = "{",
    ["type"] = "LBRACE",
    ["col"] = 21,
    ["line"] = 19,
  },
  [70] = {
    ["raw"] = "}",
    ["value"] = "}",
    ["type"] = "RBRACE",
    ["col"] = 22,
    ["line"] = 19,
  },
  [71] = {
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 20,
  },
  [72] = {
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 20,
  },
  [73] = {
    ["raw"] = "band",
    ["value"] = "band",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 20,
  },
  [74] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 18,
    ["line"] = 20,
  },
  [75] = {
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 20,
    ["line"] = 20,
  },
  [76] = {
    ["raw"] = "&",
    ["value"] = "&",
    ["type"] = "BAND",
    ["col"] = 22,
    ["line"] = 20,
  },
  [77] = {
    ["raw"] = "b",
    ["value"] = "b",
    ["type"] = "IDENTIFIER",
    ["col"] = 24,
    ["line"] = 20,
  },
  [78] = {
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 21,
  },
  [79] = {
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 21,
  },
  [80] = {
    ["raw"] = "bor",
    ["value"] = "bor",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 21,
  },
  [81] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 17,
    ["line"] = 21,
  },
  [82] = {
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 19,
    ["line"] = 21,
  },
  [83] = {
    ["raw"] = "|",
    ["value"] = "|",
    ["type"] = "BOR",
    ["col"] = 21,
    ["line"] = 21,
  },
  [84] = {
    ["raw"] = "b",
    ["value"] = "b",
    ["type"] = "IDENTIFIER",
    ["col"] = 23,
    ["line"] = 21,
  },
  [85] = {
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 22,
  },
  [86] = {
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 22,
  },
  [87] = {
    ["raw"] = "bxor",
    ["value"] = "bxor",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 22,
  },
  [88] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 18,
    ["line"] = 22,
  },
  [89] = {
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 20,
    ["line"] = 22,
  },
  [90] = {
    ["raw"] = "~",
    ["value"] = "~",
    ["type"] = "BXOR",
    ["col"] = 22,
    ["line"] = 22,
  },
  [91] = {
    ["raw"] = "b",
    ["value"] = "b",
    ["type"] = "IDENTIFIER",
    ["col"] = 24,
    ["line"] = 22,
  },
  [92] = {
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 23,
  },
  [93] = {
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 23,
  },
  [94] = {
    ["raw"] = "bnot",
    ["value"] = "bnot",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 23,
  },
  [95] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 18,
    ["line"] = 23,
  },
  [96] = {
    ["raw"] = "~",
    ["value"] = "~",
    ["type"] = "BXOR",
    ["col"] = 20,
    ["line"] = 23,
  },
  [97] = {
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 21,
    ["line"] = 23,
  },
  [98] = {
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 24,
  },
  [99] = {
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 24,
  },
  [100] = {
    ["raw"] = "shl",
    ["value"] = "shl",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 24,
  },
  [101] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 17,
    ["line"] = 24,
  },
  [102] = {
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 19,
    ["line"] = 24,
  },
  [103] = {
    ["raw"] = "<<",
    ["value"] = "<<",
    ["type"] = "SHL",
    ["col"] = 21,
    ["line"] = 24,
  },
  [104] = {
    ["raw"] = "2",
    ["value"] = 2,
    ["type"] = "NUMBER",
    ["col"] = 24,
    ["line"] = 24,
  },
  [105] = {
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 25,
  },
  [106] = {
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 25,
  },
  [107] = {
    ["raw"] = "shr",
    ["value"] = "shr",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 25,
  },
  [108] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 17,
    ["line"] = 25,
  },
  [109] = {
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 19,
    ["line"] = 25,
  },
  [110] = {
    ["raw"] = ">>",
    ["value"] = ">>",
    ["type"] = "SHR",
    ["col"] = 21,
    ["line"] = 25,
  },
  [111] = {
    ["raw"] = "1",
    ["value"] = 1,
    ["type"] = "NUMBER",
    ["col"] = 24,
    ["line"] = 25,
  },
  [112] = {
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 26,
  },
  [113] = {
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 26,
  },
  [114] = {
    ["raw"] = "idiv",
    ["value"] = "idiv",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 26,
  },
  [115] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 18,
    ["line"] = 26,
  },
  [116] = {
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 20,
    ["line"] = 26,
  },
  [117] = {
    ["raw"] = "//",
    ["value"] = "//",
    ["type"] = "IDIV",
    ["col"] = 22,
    ["line"] = 26,
  },
  [118] = {
    ["raw"] = "b",
    ["value"] = "b",
    ["type"] = "IDENTIFIER",
    ["col"] = 25,
    ["line"] = 26,
  },
  [119] = {
    ["raw"] = "return",
    ["value"] = "return",
    ["type"] = "KEYWORD",
    ["col"] = 5,
    ["line"] = 27,
  },
  [120] = {
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 12,
    ["line"] = 27,
  },
  [121] = {
    ["raw"] = "end",
    ["value"] = "end",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 28,
  },
  [122] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 30,
  },
  [123] = {
    ["raw"] = "complex",
    ["value"] = "complex",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 30,
  },
  [124] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 15,
    ["line"] = 30,
  },
  [125] = {
    ["raw"] = "(",
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["col"] = 17,
    ["line"] = 30,
  },
  [126] = {
    ["raw"] = "(",
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["col"] = 18,
    ["line"] = 30,
  },
  [127] = {
    ["raw"] = "0xFF",
    ["value"] = 255,
    ["type"] = "NUMBER",
    ["col"] = 19,
    ["line"] = 30,
  },
  [128] = {
    ["raw"] = "&",
    ["value"] = "&",
    ["type"] = "BAND",
    ["col"] = 24,
    ["line"] = 30,
  },
  [129] = {
    ["raw"] = "0x0F",
    ["value"] = 15,
    ["type"] = "NUMBER",
    ["col"] = 26,
    ["line"] = 30,
  },
  [130] = {
    ["raw"] = ")",
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["col"] = 30,
    ["line"] = 30,
  },
  [131] = {
    ["raw"] = "<<",
    ["value"] = "<<",
    ["type"] = "SHL",
    ["col"] = 32,
    ["line"] = 30,
  },
  [132] = {
    ["raw"] = "2",
    ["value"] = 2,
    ["type"] = "NUMBER",
    ["col"] = 35,
    ["line"] = 30,
  },
  [133] = {
    ["raw"] = ")",
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["col"] = 36,
    ["line"] = 30,
  },
  [134] = {
    ["raw"] = "|",
    ["value"] = "|",
    ["type"] = "BOR",
    ["col"] = 38,
    ["line"] = 30,
  },
  [135] = {
    ["raw"] = "(",
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["col"] = 40,
    ["line"] = 30,
  },
  [136] = {
    ["raw"] = "(",
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["col"] = 41,
    ["line"] = 30,
  },
  [137] = {
    ["raw"] = "0xF0",
    ["value"] = 240,
    ["type"] = "NUMBER",
    ["col"] = 42,
    ["line"] = 30,
  },
  [138] = {
    ["raw"] = "&",
    ["value"] = "&",
    ["type"] = "BAND",
    ["col"] = 47,
    ["line"] = 30,
  },
  [139] = {
    ["raw"] = "0x0F",
    ["value"] = 15,
    ["type"] = "NUMBER",
    ["col"] = 49,
    ["line"] = 30,
  },
  [140] = {
    ["raw"] = ")",
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["col"] = 53,
    ["line"] = 30,
  },
  [141] = {
    ["raw"] = ">>",
    ["value"] = ">>",
    ["type"] = "SHR",
    ["col"] = 55,
    ["line"] = 30,
  },
  [142] = {
    ["raw"] = "1",
    ["value"] = 1,
    ["type"] = "NUMBER",
    ["col"] = 58,
    ["line"] = 30,
  },
  [143] = {
    ["raw"] = ")",
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["col"] = 59,
    ["line"] = 30,
  },
  [144] = {
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 32,
  },
  [145] = {
    ["raw"] = "pi_hex",
    ["value"] = "pi_hex",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 32,
  },
  [146] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 14,
    ["line"] = 32,
  },
  [147] = {
    ["raw"] = "0x1.921fb54442d18p+1",
    ["value"] = 3.1415926535898,
    ["type"] = "NUMBER",
    ["col"] = 16,
    ["line"] = 32,
  },
  [148] = {
    ["raw"] = "return",
    ["value"] = "return",
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 34,
  },
  [149] = {
    ["raw"] = "{",
    ["value"] = "{",
    ["type"] = "LBRACE",
    ["col"] = 8,
    ["line"] = 34,
  },
  [150] = {
    ["raw"] = "num",
    ["value"] = "num",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 35,
  },
  [151] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 9,
    ["line"] = 35,
  },
  [152] = {
    ["raw"] = "num",
    ["value"] = "num",
    ["type"] = "IDENTIFIER",
    ["col"] = 11,
    ["line"] = 35,
  },
  [153] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 14,
    ["line"] = 35,
  },
  [154] = {
    ["raw"] = "float",
    ["value"] = "float",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 36,
  },
  [155] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 11,
    ["line"] = 36,
  },
  [156] = {
    ["raw"] = "float",
    ["value"] = "float",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 36,
  },
  [157] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 18,
    ["line"] = 36,
  },
  [158] = {
    ["raw"] = "hex",
    ["value"] = "hex",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 37,
  },
  [159] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 9,
    ["line"] = 37,
  },
  [160] = {
    ["raw"] = "hex",
    ["value"] = "hex",
    ["type"] = "IDENTIFIER",
    ["col"] = 11,
    ["line"] = 37,
  },
  [161] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 14,
    ["line"] = 37,
  },
  [162] = {
    ["raw"] = "hex_float",
    ["value"] = "hex_float",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 38,
  },
  [163] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 15,
    ["line"] = 38,
  },
  [164] = {
    ["raw"] = "hex_float",
    ["value"] = "hex_float",
    ["type"] = "IDENTIFIER",
    ["col"] = 17,
    ["line"] = 38,
  },
  [165] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 26,
    ["line"] = 38,
  },
  [166] = {
    ["raw"] = "pi_hex",
    ["value"] = "pi_hex",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 39,
  },
  [167] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 12,
    ["line"] = 39,
  },
  [168] = {
    ["raw"] = "pi_hex",
    ["value"] = "pi_hex",
    ["type"] = "IDENTIFIER",
    ["col"] = 14,
    ["line"] = 39,
  },
  [169] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 20,
    ["line"] = 39,
  },
  [170] = {
    ["raw"] = "bitwise",
    ["value"] = "bitwise",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 40,
  },
  [171] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 13,
    ["line"] = 40,
  },
  [172] = {
    ["raw"] = "{",
    ["value"] = "{",
    ["type"] = "LBRACE",
    ["col"] = 15,
    ["line"] = 40,
  },
  [173] = {
    ["raw"] = "band",
    ["value"] = "band",
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
    ["line"] = 41,
  },
  [174] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 14,
    ["line"] = 41,
  },
  [175] = {
    ["raw"] = "band",
    ["value"] = "band",
    ["type"] = "IDENTIFIER",
    ["col"] = 16,
    ["line"] = 41,
  },
  [176] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 20,
    ["line"] = 41,
  },
  [177] = {
    ["raw"] = "bor",
    ["value"] = "bor",
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
    ["line"] = 42,
  },
  [178] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 13,
    ["line"] = 42,
  },
  [179] = {
    ["raw"] = "bor",
    ["value"] = "bor",
    ["type"] = "IDENTIFIER",
    ["col"] = 15,
    ["line"] = 42,
  },
  [180] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 18,
    ["line"] = 42,
  },
  [181] = {
    ["raw"] = "bxor",
    ["value"] = "bxor",
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
    ["line"] = 43,
  },
  [182] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 14,
    ["line"] = 43,
  },
  [183] = {
    ["raw"] = "bxor",
    ["value"] = "bxor",
    ["type"] = "IDENTIFIER",
    ["col"] = 16,
    ["line"] = 43,
  },
  [184] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 20,
    ["line"] = 43,
  },
  [185] = {
    ["raw"] = "bnot",
    ["value"] = "bnot",
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
    ["line"] = 44,
  },
  [186] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 14,
    ["line"] = 44,
  },
  [187] = {
    ["raw"] = "bnot",
    ["value"] = "bnot",
    ["type"] = "IDENTIFIER",
    ["col"] = 16,
    ["line"] = 44,
  },
  [188] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 20,
    ["line"] = 44,
  },
  [189] = {
    ["raw"] = "shl",
    ["value"] = "shl",
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
    ["line"] = 45,
  },
  [190] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 13,
    ["line"] = 45,
  },
  [191] = {
    ["raw"] = "shl",
    ["value"] = "shl",
    ["type"] = "IDENTIFIER",
    ["col"] = 15,
    ["line"] = 45,
  },
  [192] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 18,
    ["line"] = 45,
  },
  [193] = {
    ["raw"] = "shr",
    ["value"] = "shr",
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
    ["line"] = 46,
  },
  [194] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 13,
    ["line"] = 46,
  },
  [195] = {
    ["raw"] = "shr",
    ["value"] = "shr",
    ["type"] = "IDENTIFIER",
    ["col"] = 15,
    ["line"] = 46,
  },
  [196] = {
    ["raw"] = "}",
    ["value"] = "}",
    ["type"] = "RBRACE",
    ["col"] = 5,
    ["line"] = 47,
  },
  [197] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 6,
    ["line"] = 47,
  },
  [198] = {
    ["raw"] = "idiv",
    ["value"] = "idiv",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 48,
  },
  [199] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 10,
    ["line"] = 48,
  },
  [200] = {
    ["raw"] = "idiv",
    ["value"] = "idiv",
    ["type"] = "IDENTIFIER",
    ["col"] = 12,
    ["line"] = 48,
  },
  [201] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 16,
    ["line"] = 48,
  },
  [202] = {
    ["raw"] = "complex",
    ["value"] = "complex",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 49,
  },
  [203] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 13,
    ["line"] = 49,
  },
  [204] = {
    ["raw"] = "complex",
    ["value"] = "complex",
    ["type"] = "IDENTIFIER",
    ["col"] = 15,
    ["line"] = 49,
  },
  [205] = {
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 22,
    ["line"] = 49,
  },
  [206] = {
    ["raw"] = "lua_version",
    ["value"] = "lua_version",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 50,
  },
  [207] = {
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 17,
    ["line"] = 50,
  },
  [208] = {
    ["raw"] = "_VERSION",
    ["value"] = "_VERSION",
    ["type"] = "IDENTIFIER",
    ["col"] = 19,
    ["line"] = 50,
  },
  [209] = {
    ["raw"] = "}",
    ["value"] = "}",
    ["type"] = "RBRACE",
    ["col"] = 1,
    ["line"] = 51,
  },
  [210] = {
    ["raw"] = "",
    ["value"] = "",
    ["type"] = "EOF",
    ["col"] = 1,
    ["line"] = 52,
  },
}
}