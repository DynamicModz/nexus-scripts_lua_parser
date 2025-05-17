return {
  ast = {
  ["type"] = "Chunk",
  ["comments"] = {
    [1] = {
      ["value"] = "[[[\
    Dev : NexusScripts\
]]",
      ["line"] = 1,
      ["col"] = 1,
      ["type"] = "COMMENT",
      ["raw"] = "--[[[\
    Dev : NexusScripts\
]]",
    },
    [2] = {
      ["value"] = " Integer",
      ["line"] = 4,
      ["col"] = 33,
      ["type"] = "COMMENT",
      ["raw"] = "-- Integer",
    },
    [3] = {
      ["value"] = " Decimal float",
      ["line"] = 5,
      ["col"] = 33,
      ["type"] = "COMMENT",
      ["raw"] = "-- Decimal float",
    },
    [4] = {
      ["value"] = " Hexadecimal integer (255)",
      ["line"] = 6,
      ["col"] = 33,
      ["type"] = "COMMENT",
      ["raw"] = "-- Hexadecimal integer (255)",
    },
    [5] = {
      ["value"] = " Hex float (256.0) - Lua 5.3 feature",
      ["line"] = 7,
      ["col"] = 33,
      ["type"] = "COMMENT",
      ["raw"] = "-- Hex float (256.0) - Lua 5.3 feature",
    },
    [6] = {
      ["value"] = " Bitwise AND: 15",
      ["line"] = 9,
      ["col"] = 33,
      ["type"] = "COMMENT",
      ["raw"] = "-- Bitwise AND: 15",
    },
    [7] = {
      ["value"] = " Bitwise OR: 255 ",
      ["line"] = 10,
      ["col"] = 33,
      ["type"] = "COMMENT",
      ["raw"] = "-- Bitwise OR: 255 ",
    },
    [8] = {
      ["value"] = " Bitwise XOR: 240",
      ["line"] = 11,
      ["col"] = 33,
      ["type"] = "COMMENT",
      ["raw"] = "-- Bitwise XOR: 240",
    },
    [9] = {
      ["value"] = " Bitwise NOT: -16",
      ["line"] = 12,
      ["col"] = 33,
      ["type"] = "COMMENT",
      ["raw"] = "-- Bitwise NOT: -16",
    },
    [10] = {
      ["value"] = " Shift left: 8",
      ["line"] = 13,
      ["col"] = 33,
      ["type"] = "COMMENT",
      ["raw"] = "-- Shift left: 8",
    },
    [11] = {
      ["value"] = " Shift right: 16",
      ["line"] = 14,
      ["col"] = 33,
      ["type"] = "COMMENT",
      ["raw"] = "-- Shift right: 16",
    },
    [12] = {
      ["value"] = " Integer division: 3",
      ["line"] = 16,
      ["col"] = 33,
      ["type"] = "COMMENT",
      ["raw"] = "-- Integer division: 3",
    },
    [13] = {
      ["value"] = " Should be \"Lua 5.3\" or later",
      ["line"] = 50,
      ["col"] = 28,
      ["type"] = "COMMENT",
      ["raw"] = "-- Should be \"Lua 5.3\" or later",
    },
    ["leading"] = {
      [1] = {
        ["value"] = " Should be \"Lua 5.3\" or later",
        ["line"] = 50,
        ["col"] = 28,
        ["type"] = "COMMENT",
        ["raw"] = "-- Should be \"Lua 5.3\" or later",
      },
    },
  },
  ["body"] = {
    [1] = {
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["value"] = "[[[\
    Dev : NexusScripts\
]]",
            ["line"] = 1,
            ["col"] = 1,
            ["type"] = "COMMENT",
            ["raw"] = "--[[[\
    Dev : NexusScripts\
]]",
          },
        },
      },
      ["loc"] = {
        ["start"] = {
          ["line"] = 4,
          ["col"] = 1,
        },
        ["end"] = {
          ["line"] = 5,
          ["col"] = 1,
        },
      },
      ["variables"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 4,
              ["col"] = 7,
            },
            ["end"] = {
              ["line"] = 4,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "num",
        },
      },
      ["init"] = {
        [1] = {
          ["type"] = "NumericLiteral",
          ["is_lua53_feature"] = false,
          ["raw"] = "42",
          ["value"] = 42,
        },
      },
      ["type"] = "LocalStatement",
    },
    [2] = {
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["value"] = " Integer",
            ["line"] = 4,
            ["col"] = 33,
            ["type"] = "COMMENT",
            ["raw"] = "-- Integer",
          },
        },
      },
      ["loc"] = {
        ["start"] = {
          ["line"] = 5,
          ["col"] = 1,
        },
        ["end"] = {
          ["line"] = 6,
          ["col"] = 1,
        },
      },
      ["variables"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 5,
              ["col"] = 7,
            },
            ["end"] = {
              ["line"] = 5,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "float",
        },
      },
      ["init"] = {
        [1] = {
          ["type"] = "NumericLiteral",
          ["is_lua53_feature"] = false,
          ["raw"] = "3.14159",
          ["value"] = 3.14159,
        },
      },
      ["type"] = "LocalStatement",
    },
    [3] = {
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["value"] = " Decimal float",
            ["line"] = 5,
            ["col"] = 33,
            ["type"] = "COMMENT",
            ["raw"] = "-- Decimal float",
          },
        },
      },
      ["loc"] = {
        ["start"] = {
          ["line"] = 6,
          ["col"] = 1,
        },
        ["end"] = {
          ["line"] = 7,
          ["col"] = 1,
        },
      },
      ["variables"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 6,
              ["col"] = 7,
            },
            ["end"] = {
              ["line"] = 6,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "hex",
        },
      },
      ["init"] = {
        [1] = {
          ["type"] = "NumericLiteral",
          ["is_lua53_feature"] = false,
          ["raw"] = "0xFF",
          ["value"] = 255,
        },
      },
      ["type"] = "LocalStatement",
    },
    [4] = {
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["value"] = " Hexadecimal integer (255)",
            ["line"] = 6,
            ["col"] = 33,
            ["type"] = "COMMENT",
            ["raw"] = "-- Hexadecimal integer (255)",
          },
        },
      },
      ["loc"] = {
        ["start"] = {
          ["line"] = 7,
          ["col"] = 1,
        },
        ["end"] = {
          ["line"] = 9,
          ["col"] = 1,
        },
      },
      ["variables"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 7,
              ["col"] = 7,
            },
            ["end"] = {
              ["line"] = 7,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "hex_float",
        },
      },
      ["init"] = {
        [1] = {
          ["type"] = "NumericLiteral",
          ["is_lua53_feature"] = true,
          ["raw"] = "0x1p8",
          ["value"] = 256.0,
        },
      },
      ["type"] = "LocalStatement",
    },
    [5] = {
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["value"] = " Hex float (256.0) - Lua 5.3 feature",
            ["line"] = 7,
            ["col"] = 33,
            ["type"] = "COMMENT",
            ["raw"] = "-- Hex float (256.0) - Lua 5.3 feature",
          },
        },
      },
      ["loc"] = {
        ["start"] = {
          ["line"] = 9,
          ["col"] = 1,
        },
        ["end"] = {
          ["line"] = 10,
          ["col"] = 1,
        },
      },
      ["variables"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 9,
              ["col"] = 7,
            },
            ["end"] = {
              ["line"] = 9,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "band",
        },
      },
      ["init"] = {
        [1] = {
          ["lua53_feature"] = true,
          ["swap_operands"] = false,
          ["left"] = {
            ["type"] = "NumericLiteral",
            ["is_lua53_feature"] = false,
            ["raw"] = "0xFF",
            ["value"] = 255,
          },
          ["operator"] = "&",
          ["type"] = "BinaryExpression",
          ["substituted_operator"] = "&",
          ["right"] = {
            ["type"] = "NumericLiteral",
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["value"] = 15,
          },
          ["metamethod"] = "__band",
        },
      },
      ["type"] = "LocalStatement",
    },
    [6] = {
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["value"] = " Bitwise AND: 15",
            ["line"] = 9,
            ["col"] = 33,
            ["type"] = "COMMENT",
            ["raw"] = "-- Bitwise AND: 15",
          },
        },
      },
      ["loc"] = {
        ["start"] = {
          ["line"] = 10,
          ["col"] = 1,
        },
        ["end"] = {
          ["line"] = 11,
          ["col"] = 1,
        },
      },
      ["variables"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 10,
              ["col"] = 7,
            },
            ["end"] = {
              ["line"] = 10,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "bor",
        },
      },
      ["init"] = {
        [1] = {
          ["lua53_feature"] = true,
          ["swap_operands"] = false,
          ["left"] = {
            ["type"] = "NumericLiteral",
            ["is_lua53_feature"] = false,
            ["raw"] = "0xF0",
            ["value"] = 240,
          },
          ["operator"] = "|",
          ["type"] = "BinaryExpression",
          ["substituted_operator"] = "|",
          ["right"] = {
            ["type"] = "NumericLiteral",
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["value"] = 15,
          },
          ["metamethod"] = "__bor",
        },
      },
      ["type"] = "LocalStatement",
    },
    [7] = {
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["value"] = " Bitwise OR: 255 ",
            ["line"] = 10,
            ["col"] = 33,
            ["type"] = "COMMENT",
            ["raw"] = "-- Bitwise OR: 255 ",
          },
        },
      },
      ["loc"] = {
        ["start"] = {
          ["line"] = 11,
          ["col"] = 1,
        },
        ["end"] = {
          ["line"] = 12,
          ["col"] = 1,
        },
      },
      ["variables"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 11,
              ["col"] = 7,
            },
            ["end"] = {
              ["line"] = 11,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "bxor",
        },
      },
      ["init"] = {
        [1] = {
          ["lua53_feature"] = true,
          ["swap_operands"] = false,
          ["left"] = {
            ["type"] = "NumericLiteral",
            ["is_lua53_feature"] = false,
            ["raw"] = "0xFF",
            ["value"] = 255,
          },
          ["operator"] = "~",
          ["type"] = "BinaryExpression",
          ["substituted_operator"] = "~",
          ["right"] = {
            ["type"] = "NumericLiteral",
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["value"] = 15,
          },
          ["metamethod"] = "__bxor",
        },
      },
      ["type"] = "LocalStatement",
    },
    [8] = {
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["value"] = " Bitwise XOR: 240",
            ["line"] = 11,
            ["col"] = 33,
            ["type"] = "COMMENT",
            ["raw"] = "-- Bitwise XOR: 240",
          },
        },
      },
      ["loc"] = {
        ["start"] = {
          ["line"] = 12,
          ["col"] = 1,
        },
        ["end"] = {
          ["line"] = 13,
          ["col"] = 1,
        },
      },
      ["variables"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 12,
              ["col"] = 7,
            },
            ["end"] = {
              ["line"] = 12,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "bnot",
        },
      },
      ["init"] = {
        [1] = {
          ["loc"] = {
            ["start"] = {
              ["line"] = 12,
              ["col"] = 14,
            },
            ["end"] = {
              ["line"] = 12,
              ["col"] = 14,
            },
          },
          ["is_lua53_feature"] = true,
          ["type"] = "UnaryExpression",
          ["argument"] = {
            ["type"] = "NumericLiteral",
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["value"] = 15,
          },
          ["operator"] = "~",
          ["metamethod"] = "__bnot",
        },
      },
      ["type"] = "LocalStatement",
    },
    [9] = {
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["value"] = " Bitwise NOT: -16",
            ["line"] = 12,
            ["col"] = 33,
            ["type"] = "COMMENT",
            ["raw"] = "-- Bitwise NOT: -16",
          },
        },
      },
      ["loc"] = {
        ["start"] = {
          ["line"] = 13,
          ["col"] = 1,
        },
        ["end"] = {
          ["line"] = 14,
          ["col"] = 1,
        },
      },
      ["variables"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 13,
              ["col"] = 7,
            },
            ["end"] = {
              ["line"] = 13,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "shl",
        },
      },
      ["init"] = {
        [1] = {
          ["lua53_feature"] = true,
          ["swap_operands"] = false,
          ["left"] = {
            ["type"] = "NumericLiteral",
            ["is_lua53_feature"] = false,
            ["raw"] = "1",
            ["value"] = 1,
          },
          ["operator"] = "<<",
          ["type"] = "BinaryExpression",
          ["substituted_operator"] = "<<",
          ["right"] = {
            ["type"] = "NumericLiteral",
            ["is_lua53_feature"] = false,
            ["raw"] = "3",
            ["value"] = 3,
          },
          ["metamethod"] = "__shl",
        },
      },
      ["type"] = "LocalStatement",
    },
    [10] = {
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["value"] = " Shift left: 8",
            ["line"] = 13,
            ["col"] = 33,
            ["type"] = "COMMENT",
            ["raw"] = "-- Shift left: 8",
          },
        },
      },
      ["loc"] = {
        ["start"] = {
          ["line"] = 14,
          ["col"] = 1,
        },
        ["end"] = {
          ["line"] = 16,
          ["col"] = 1,
        },
      },
      ["variables"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 14,
              ["col"] = 7,
            },
            ["end"] = {
              ["line"] = 14,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "shr",
        },
      },
      ["init"] = {
        [1] = {
          ["lua53_feature"] = true,
          ["swap_operands"] = false,
          ["left"] = {
            ["type"] = "NumericLiteral",
            ["is_lua53_feature"] = false,
            ["raw"] = "0x80",
            ["value"] = 128,
          },
          ["operator"] = ">>",
          ["type"] = "BinaryExpression",
          ["substituted_operator"] = ">>",
          ["right"] = {
            ["type"] = "NumericLiteral",
            ["is_lua53_feature"] = false,
            ["raw"] = "3",
            ["value"] = 3,
          },
          ["metamethod"] = "__shr",
        },
      },
      ["type"] = "LocalStatement",
    },
    [11] = {
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["value"] = " Shift right: 16",
            ["line"] = 14,
            ["col"] = 33,
            ["type"] = "COMMENT",
            ["raw"] = "-- Shift right: 16",
          },
        },
      },
      ["loc"] = {
        ["start"] = {
          ["line"] = 16,
          ["col"] = 1,
        },
        ["end"] = {
          ["line"] = 18,
          ["col"] = 1,
        },
      },
      ["variables"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 16,
              ["col"] = 7,
            },
            ["end"] = {
              ["line"] = 16,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "idiv",
        },
      },
      ["init"] = {
        [1] = {
          ["lua53_feature"] = true,
          ["swap_operands"] = false,
          ["left"] = {
            ["type"] = "NumericLiteral",
            ["is_lua53_feature"] = false,
            ["raw"] = "10",
            ["value"] = 10,
          },
          ["operator"] = "//",
          ["type"] = "BinaryExpression",
          ["substituted_operator"] = "//",
          ["right"] = {
            ["type"] = "NumericLiteral",
            ["is_lua53_feature"] = false,
            ["raw"] = "3",
            ["value"] = 3,
          },
          ["metamethod"] = "__idiv",
        },
      },
      ["type"] = "LocalStatement",
    },
    [12] = {
      ["parameters"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 18,
              ["col"] = 28,
            },
            ["end"] = {
              ["line"] = 18,
              ["col"] = 28,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "a",
        },
        [2] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 18,
              ["col"] = 31,
            },
            ["end"] = {
              ["line"] = 18,
              ["col"] = 31,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "b",
        },
      },
      ["isLocal"] = true,
      ["body"] = {
        [1] = {
          ["comments"] = {
            ["leading"] = {
              [1] = {
                ["value"] = " Integer division: 3",
                ["line"] = 16,
                ["col"] = 33,
                ["type"] = "COMMENT",
                ["raw"] = "-- Integer division: 3",
              },
            },
          },
          ["loc"] = {
            ["start"] = {
              ["line"] = 19,
              ["col"] = 5,
            },
            ["end"] = {
              ["line"] = 20,
              ["col"] = 5,
            },
          },
          ["variables"] = {
            [1] = {
              ["type"] = "Identifier",
              ["loc"] = {
                ["start"] = {
                  ["line"] = 19,
                  ["col"] = 11,
                },
                ["end"] = {
                  ["line"] = 19,
                  ["col"] = 11,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "results",
            },
          },
          ["init"] = {
            [1] = {
              ["type"] = "TableConstructorExpression",
              ["has_metamethods"] = false,
              ["fields"] = {
              },
              ["metamethods"] = {
              },
            },
          },
          ["type"] = "LocalStatement",
        },
        [2] = {
          ["metamethod_ops"] = {
          },
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["lua53_feature"] = true,
              ["swap_operands"] = false,
              ["left"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 20,
                    ["col"] = 20,
                  },
                  ["end"] = {
                    ["line"] = 20,
                    ["col"] = 20,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "a",
              },
              ["operator"] = "&",
              ["type"] = "BinaryExpression",
              ["substituted_operator"] = "&",
              ["right"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 20,
                    ["col"] = 24,
                  },
                  ["end"] = {
                    ["line"] = 20,
                    ["col"] = 24,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "b",
              },
              ["metamethod"] = "__band",
            },
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["type"] = "MemberExpression",
              ["identifier"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 20,
                    ["col"] = 13,
                  },
                  ["end"] = {
                    ["line"] = 20,
                    ["col"] = 13,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "band",
              },
              ["indexer"] = ".",
              ["base"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 20,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 20,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "results",
              },
            },
          },
        },
        [3] = {
          ["metamethod_ops"] = {
          },
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["lua53_feature"] = true,
              ["swap_operands"] = false,
              ["left"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 21,
                    ["col"] = 19,
                  },
                  ["end"] = {
                    ["line"] = 21,
                    ["col"] = 19,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "a",
              },
              ["operator"] = "|",
              ["type"] = "BinaryExpression",
              ["substituted_operator"] = "|",
              ["right"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 21,
                    ["col"] = 23,
                  },
                  ["end"] = {
                    ["line"] = 21,
                    ["col"] = 23,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "b",
              },
              ["metamethod"] = "__bor",
            },
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["type"] = "MemberExpression",
              ["identifier"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 21,
                    ["col"] = 13,
                  },
                  ["end"] = {
                    ["line"] = 21,
                    ["col"] = 13,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "bor",
              },
              ["indexer"] = ".",
              ["base"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 21,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 21,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "results",
              },
            },
          },
        },
        [4] = {
          ["metamethod_ops"] = {
          },
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["lua53_feature"] = true,
              ["swap_operands"] = false,
              ["left"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 22,
                    ["col"] = 20,
                  },
                  ["end"] = {
                    ["line"] = 22,
                    ["col"] = 20,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "a",
              },
              ["operator"] = "~",
              ["type"] = "BinaryExpression",
              ["substituted_operator"] = "~",
              ["right"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 22,
                    ["col"] = 24,
                  },
                  ["end"] = {
                    ["line"] = 22,
                    ["col"] = 24,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "b",
              },
              ["metamethod"] = "__bxor",
            },
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["type"] = "MemberExpression",
              ["identifier"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 22,
                    ["col"] = 13,
                  },
                  ["end"] = {
                    ["line"] = 22,
                    ["col"] = 13,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "bxor",
              },
              ["indexer"] = ".",
              ["base"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 22,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 22,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "results",
              },
            },
          },
        },
        [5] = {
          ["metamethod_ops"] = {
          },
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["loc"] = {
                ["start"] = {
                  ["line"] = 23,
                  ["col"] = 20,
                },
                ["end"] = {
                  ["line"] = 23,
                  ["col"] = 20,
                },
              },
              ["is_lua53_feature"] = true,
              ["type"] = "UnaryExpression",
              ["argument"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 23,
                    ["col"] = 21,
                  },
                  ["end"] = {
                    ["line"] = 23,
                    ["col"] = 21,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "a",
              },
              ["operator"] = "~",
              ["metamethod"] = "__bnot",
            },
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["type"] = "MemberExpression",
              ["identifier"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 23,
                    ["col"] = 13,
                  },
                  ["end"] = {
                    ["line"] = 23,
                    ["col"] = 13,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "bnot",
              },
              ["indexer"] = ".",
              ["base"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 23,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 23,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "results",
              },
            },
          },
        },
        [6] = {
          ["metamethod_ops"] = {
          },
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["lua53_feature"] = true,
              ["swap_operands"] = false,
              ["left"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 24,
                    ["col"] = 19,
                  },
                  ["end"] = {
                    ["line"] = 24,
                    ["col"] = 19,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "a",
              },
              ["operator"] = "<<",
              ["type"] = "BinaryExpression",
              ["substituted_operator"] = "<<",
              ["right"] = {
                ["type"] = "NumericLiteral",
                ["is_lua53_feature"] = false,
                ["raw"] = "2",
                ["value"] = 2,
              },
              ["metamethod"] = "__shl",
            },
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["type"] = "MemberExpression",
              ["identifier"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 24,
                    ["col"] = 13,
                  },
                  ["end"] = {
                    ["line"] = 24,
                    ["col"] = 13,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "shl",
              },
              ["indexer"] = ".",
              ["base"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 24,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 24,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "results",
              },
            },
          },
        },
        [7] = {
          ["metamethod_ops"] = {
          },
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["lua53_feature"] = true,
              ["swap_operands"] = false,
              ["left"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 25,
                    ["col"] = 19,
                  },
                  ["end"] = {
                    ["line"] = 25,
                    ["col"] = 19,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "a",
              },
              ["operator"] = ">>",
              ["type"] = "BinaryExpression",
              ["substituted_operator"] = ">>",
              ["right"] = {
                ["type"] = "NumericLiteral",
                ["is_lua53_feature"] = false,
                ["raw"] = "1",
                ["value"] = 1,
              },
              ["metamethod"] = "__shr",
            },
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["type"] = "MemberExpression",
              ["identifier"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 25,
                    ["col"] = 13,
                  },
                  ["end"] = {
                    ["line"] = 25,
                    ["col"] = 13,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "shr",
              },
              ["indexer"] = ".",
              ["base"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 25,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 25,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "results",
              },
            },
          },
        },
        [8] = {
          ["metamethod_ops"] = {
          },
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["lua53_feature"] = true,
              ["swap_operands"] = false,
              ["left"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 26,
                    ["col"] = 20,
                  },
                  ["end"] = {
                    ["line"] = 26,
                    ["col"] = 20,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "a",
              },
              ["operator"] = "//",
              ["type"] = "BinaryExpression",
              ["substituted_operator"] = "//",
              ["right"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 26,
                    ["col"] = 25,
                  },
                  ["end"] = {
                    ["line"] = 26,
                    ["col"] = 25,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "b",
              },
              ["metamethod"] = "__idiv",
            },
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["type"] = "MemberExpression",
              ["identifier"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 26,
                    ["col"] = 13,
                  },
                  ["end"] = {
                    ["line"] = 26,
                    ["col"] = 13,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "idiv",
              },
              ["indexer"] = ".",
              ["base"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 26,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 26,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "results",
              },
            },
          },
        },
        [9] = {
          ["type"] = "ReturnStatement",
          ["arguments"] = {
            [1] = {
              ["type"] = "Identifier",
              ["loc"] = {
                ["start"] = {
                  ["line"] = 27,
                  ["col"] = 12,
                },
                ["end"] = {
                  ["line"] = 27,
                  ["col"] = 12,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "results",
            },
          },
        },
      },
      ["type"] = "FunctionDeclaration",
      ["identifier"] = {
        ["type"] = "Identifier",
        ["loc"] = {
          ["start"] = {
            ["line"] = 18,
            ["col"] = 16,
          },
          ["end"] = {
            ["line"] = 18,
            ["col"] = 16,
          },
        },
        ["attributes"] = {
        },
        ["name"] = "bitwise_ops",
      },
    },
    [13] = {
      ["comments"] = {
      },
      ["loc"] = {
        ["start"] = {
          ["line"] = 30,
          ["col"] = 1,
        },
        ["end"] = {
          ["line"] = 32,
          ["col"] = 1,
        },
      },
      ["variables"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 30,
              ["col"] = 7,
            },
            ["end"] = {
              ["line"] = 30,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "complex",
        },
      },
      ["init"] = {
        [1] = {
          ["lua53_feature"] = true,
          ["swap_operands"] = false,
          ["left"] = {
            ["lua53_feature"] = true,
            ["swap_operands"] = false,
            ["left"] = {
              ["lua53_feature"] = true,
              ["swap_operands"] = false,
              ["left"] = {
                ["type"] = "NumericLiteral",
                ["is_lua53_feature"] = false,
                ["raw"] = "0xFF",
                ["value"] = 255,
              },
              ["operator"] = "&",
              ["type"] = "BinaryExpression",
              ["substituted_operator"] = "&",
              ["right"] = {
                ["type"] = "NumericLiteral",
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["value"] = 15,
              },
              ["metamethod"] = "__band",
            },
            ["operator"] = "<<",
            ["type"] = "BinaryExpression",
            ["substituted_operator"] = "<<",
            ["right"] = {
              ["type"] = "NumericLiteral",
              ["is_lua53_feature"] = false,
              ["raw"] = "2",
              ["value"] = 2,
            },
            ["metamethod"] = "__shl",
          },
          ["operator"] = "|",
          ["type"] = "BinaryExpression",
          ["substituted_operator"] = "|",
          ["right"] = {
            ["lua53_feature"] = true,
            ["swap_operands"] = false,
            ["left"] = {
              ["lua53_feature"] = true,
              ["swap_operands"] = false,
              ["left"] = {
                ["type"] = "NumericLiteral",
                ["is_lua53_feature"] = false,
                ["raw"] = "0xF0",
                ["value"] = 240,
              },
              ["operator"] = "&",
              ["type"] = "BinaryExpression",
              ["substituted_operator"] = "&",
              ["right"] = {
                ["type"] = "NumericLiteral",
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["value"] = 15,
              },
              ["metamethod"] = "__band",
            },
            ["operator"] = ">>",
            ["type"] = "BinaryExpression",
            ["substituted_operator"] = ">>",
            ["right"] = {
              ["type"] = "NumericLiteral",
              ["is_lua53_feature"] = false,
              ["raw"] = "1",
              ["value"] = 1,
            },
            ["metamethod"] = "__shr",
          },
          ["metamethod"] = "__bor",
        },
      },
      ["type"] = "LocalStatement",
    },
    [14] = {
      ["comments"] = {
      },
      ["loc"] = {
        ["start"] = {
          ["line"] = 32,
          ["col"] = 1,
        },
        ["end"] = {
          ["line"] = 34,
          ["col"] = 1,
        },
      },
      ["variables"] = {
        [1] = {
          ["type"] = "Identifier",
          ["loc"] = {
            ["start"] = {
              ["line"] = 32,
              ["col"] = 7,
            },
            ["end"] = {
              ["line"] = 32,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "pi_hex",
        },
      },
      ["init"] = {
        [1] = {
          ["type"] = "NumericLiteral",
          ["is_lua53_feature"] = true,
          ["raw"] = "0x1.921fb54442d18p+1",
          ["value"] = 3.1415926535898,
        },
      },
      ["type"] = "LocalStatement",
    },
    [15] = {
      ["type"] = "ReturnStatement",
      ["arguments"] = {
        [1] = {
          ["type"] = "TableConstructorExpression",
          ["has_metamethods"] = false,
          ["fields"] = {
            [1] = {
              ["type"] = "TableKeyString",
              ["value"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 35,
                    ["col"] = 11,
                  },
                  ["end"] = {
                    ["line"] = 35,
                    ["col"] = 11,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "num",
              },
              ["key"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 35,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 35,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "num",
              },
            },
            [2] = {
              ["type"] = "TableKeyString",
              ["value"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 36,
                    ["col"] = 13,
                  },
                  ["end"] = {
                    ["line"] = 36,
                    ["col"] = 13,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "float",
              },
              ["key"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 36,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 36,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "float",
              },
            },
            [3] = {
              ["type"] = "TableKeyString",
              ["value"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 37,
                    ["col"] = 11,
                  },
                  ["end"] = {
                    ["line"] = 37,
                    ["col"] = 11,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "hex",
              },
              ["key"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 37,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 37,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "hex",
              },
            },
            [4] = {
              ["type"] = "TableKeyString",
              ["value"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 38,
                    ["col"] = 17,
                  },
                  ["end"] = {
                    ["line"] = 38,
                    ["col"] = 17,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "hex_float",
              },
              ["key"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 38,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 38,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "hex_float",
              },
            },
            [5] = {
              ["type"] = "TableKeyString",
              ["value"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 39,
                    ["col"] = 14,
                  },
                  ["end"] = {
                    ["line"] = 39,
                    ["col"] = 14,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "pi_hex",
              },
              ["key"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 39,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 39,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "pi_hex",
              },
            },
            [6] = {
              ["type"] = "TableKeyString",
              ["value"] = {
                ["type"] = "TableConstructorExpression",
                ["has_metamethods"] = false,
                ["fields"] = {
                  [1] = {
                    ["type"] = "TableKeyString",
                    ["value"] = {
                      ["type"] = "Identifier",
                      ["loc"] = {
                        ["start"] = {
                          ["line"] = 41,
                          ["col"] = 16,
                        },
                        ["end"] = {
                          ["line"] = 41,
                          ["col"] = 16,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "band",
                    },
                    ["key"] = {
                      ["type"] = "Identifier",
                      ["loc"] = {
                        ["start"] = {
                          ["line"] = 41,
                          ["col"] = 9,
                        },
                        ["end"] = {
                          ["line"] = 41,
                          ["col"] = 9,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "band",
                    },
                  },
                  [2] = {
                    ["type"] = "TableKeyString",
                    ["value"] = {
                      ["type"] = "Identifier",
                      ["loc"] = {
                        ["start"] = {
                          ["line"] = 42,
                          ["col"] = 15,
                        },
                        ["end"] = {
                          ["line"] = 42,
                          ["col"] = 15,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "bor",
                    },
                    ["key"] = {
                      ["type"] = "Identifier",
                      ["loc"] = {
                        ["start"] = {
                          ["line"] = 42,
                          ["col"] = 9,
                        },
                        ["end"] = {
                          ["line"] = 42,
                          ["col"] = 9,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "bor",
                    },
                  },
                  [3] = {
                    ["type"] = "TableKeyString",
                    ["value"] = {
                      ["type"] = "Identifier",
                      ["loc"] = {
                        ["start"] = {
                          ["line"] = 43,
                          ["col"] = 16,
                        },
                        ["end"] = {
                          ["line"] = 43,
                          ["col"] = 16,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "bxor",
                    },
                    ["key"] = {
                      ["type"] = "Identifier",
                      ["loc"] = {
                        ["start"] = {
                          ["line"] = 43,
                          ["col"] = 9,
                        },
                        ["end"] = {
                          ["line"] = 43,
                          ["col"] = 9,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "bxor",
                    },
                  },
                  [4] = {
                    ["type"] = "TableKeyString",
                    ["value"] = {
                      ["type"] = "Identifier",
                      ["loc"] = {
                        ["start"] = {
                          ["line"] = 44,
                          ["col"] = 16,
                        },
                        ["end"] = {
                          ["line"] = 44,
                          ["col"] = 16,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "bnot",
                    },
                    ["key"] = {
                      ["type"] = "Identifier",
                      ["loc"] = {
                        ["start"] = {
                          ["line"] = 44,
                          ["col"] = 9,
                        },
                        ["end"] = {
                          ["line"] = 44,
                          ["col"] = 9,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "bnot",
                    },
                  },
                  [5] = {
                    ["type"] = "TableKeyString",
                    ["value"] = {
                      ["type"] = "Identifier",
                      ["loc"] = {
                        ["start"] = {
                          ["line"] = 45,
                          ["col"] = 15,
                        },
                        ["end"] = {
                          ["line"] = 45,
                          ["col"] = 15,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "shl",
                    },
                    ["key"] = {
                      ["type"] = "Identifier",
                      ["loc"] = {
                        ["start"] = {
                          ["line"] = 45,
                          ["col"] = 9,
                        },
                        ["end"] = {
                          ["line"] = 45,
                          ["col"] = 9,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "shl",
                    },
                  },
                  [6] = {
                    ["type"] = "TableKeyString",
                    ["value"] = {
                      ["type"] = "Identifier",
                      ["loc"] = {
                        ["start"] = {
                          ["line"] = 46,
                          ["col"] = 15,
                        },
                        ["end"] = {
                          ["line"] = 46,
                          ["col"] = 15,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "shr",
                    },
                    ["key"] = {
                      ["type"] = "Identifier",
                      ["loc"] = {
                        ["start"] = {
                          ["line"] = 46,
                          ["col"] = 9,
                        },
                        ["end"] = {
                          ["line"] = 46,
                          ["col"] = 9,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "shr",
                    },
                  },
                },
                ["metamethods"] = {
                },
              },
              ["key"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 40,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 40,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "bitwise",
              },
            },
            [7] = {
              ["type"] = "TableKeyString",
              ["value"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 48,
                    ["col"] = 12,
                  },
                  ["end"] = {
                    ["line"] = 48,
                    ["col"] = 12,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "idiv",
              },
              ["key"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 48,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 48,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "idiv",
              },
            },
            [8] = {
              ["type"] = "TableKeyString",
              ["value"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 49,
                    ["col"] = 15,
                  },
                  ["end"] = {
                    ["line"] = 49,
                    ["col"] = 15,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "complex",
              },
              ["key"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 49,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 49,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "complex",
              },
            },
            [9] = {
              ["type"] = "TableKeyString",
              ["value"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 50,
                    ["col"] = 19,
                  },
                  ["end"] = {
                    ["line"] = 50,
                    ["col"] = 19,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "_VERSION",
              },
              ["key"] = {
                ["type"] = "Identifier",
                ["loc"] = {
                  ["start"] = {
                    ["line"] = 50,
                    ["col"] = 5,
                  },
                  ["end"] = {
                    ["line"] = 50,
                    ["col"] = 5,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "lua_version",
              },
            },
          },
          ["metamethods"] = {
          },
        },
      },
    },
  },
},
  tokens = {
  [1] = {
    ["value"] = "local",
    ["line"] = 4,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [2] = {
    ["value"] = "num",
    ["line"] = 4,
    ["col"] = 7,
    ["type"] = "IDENTIFIER",
    ["raw"] = "num",
  },
  [3] = {
    ["value"] = "=",
    ["line"] = 4,
    ["col"] = 11,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [4] = {
    ["value"] = 42,
    ["line"] = 4,
    ["col"] = 13,
    ["type"] = "NUMBER",
    ["raw"] = "42",
  },
  [5] = {
    ["value"] = "local",
    ["line"] = 5,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [6] = {
    ["value"] = "float",
    ["line"] = 5,
    ["col"] = 7,
    ["type"] = "IDENTIFIER",
    ["raw"] = "float",
  },
  [7] = {
    ["value"] = "=",
    ["line"] = 5,
    ["col"] = 13,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [8] = {
    ["value"] = 3.14159,
    ["line"] = 5,
    ["col"] = 15,
    ["type"] = "NUMBER",
    ["raw"] = "3.14159",
  },
  [9] = {
    ["value"] = "local",
    ["line"] = 6,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [10] = {
    ["value"] = "hex",
    ["line"] = 6,
    ["col"] = 7,
    ["type"] = "IDENTIFIER",
    ["raw"] = "hex",
  },
  [11] = {
    ["value"] = "=",
    ["line"] = 6,
    ["col"] = 11,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [12] = {
    ["value"] = 255,
    ["line"] = 6,
    ["col"] = 13,
    ["type"] = "NUMBER",
    ["raw"] = "0xFF",
  },
  [13] = {
    ["value"] = "local",
    ["line"] = 7,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [14] = {
    ["value"] = "hex_float",
    ["line"] = 7,
    ["col"] = 7,
    ["type"] = "IDENTIFIER",
    ["raw"] = "hex_float",
  },
  [15] = {
    ["value"] = "=",
    ["line"] = 7,
    ["col"] = 17,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [16] = {
    ["value"] = 256.0,
    ["line"] = 7,
    ["col"] = 19,
    ["type"] = "NUMBER",
    ["raw"] = "0x1p8",
  },
  [17] = {
    ["value"] = "local",
    ["line"] = 9,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [18] = {
    ["value"] = "band",
    ["line"] = 9,
    ["col"] = 7,
    ["type"] = "IDENTIFIER",
    ["raw"] = "band",
  },
  [19] = {
    ["value"] = "=",
    ["line"] = 9,
    ["col"] = 12,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [20] = {
    ["value"] = 255,
    ["line"] = 9,
    ["col"] = 14,
    ["type"] = "NUMBER",
    ["raw"] = "0xFF",
  },
  [21] = {
    ["value"] = "&",
    ["line"] = 9,
    ["col"] = 19,
    ["type"] = "BAND",
    ["raw"] = "&",
  },
  [22] = {
    ["value"] = 15,
    ["line"] = 9,
    ["col"] = 21,
    ["type"] = "NUMBER",
    ["raw"] = "0x0F",
  },
  [23] = {
    ["value"] = "local",
    ["line"] = 10,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [24] = {
    ["value"] = "bor",
    ["line"] = 10,
    ["col"] = 7,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bor",
  },
  [25] = {
    ["value"] = "=",
    ["line"] = 10,
    ["col"] = 11,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [26] = {
    ["value"] = 240,
    ["line"] = 10,
    ["col"] = 13,
    ["type"] = "NUMBER",
    ["raw"] = "0xF0",
  },
  [27] = {
    ["value"] = "|",
    ["line"] = 10,
    ["col"] = 18,
    ["type"] = "BOR",
    ["raw"] = "|",
  },
  [28] = {
    ["value"] = 15,
    ["line"] = 10,
    ["col"] = 20,
    ["type"] = "NUMBER",
    ["raw"] = "0x0F",
  },
  [29] = {
    ["value"] = "local",
    ["line"] = 11,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [30] = {
    ["value"] = "bxor",
    ["line"] = 11,
    ["col"] = 7,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bxor",
  },
  [31] = {
    ["value"] = "=",
    ["line"] = 11,
    ["col"] = 12,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [32] = {
    ["value"] = 255,
    ["line"] = 11,
    ["col"] = 14,
    ["type"] = "NUMBER",
    ["raw"] = "0xFF",
  },
  [33] = {
    ["value"] = "~",
    ["line"] = 11,
    ["col"] = 19,
    ["type"] = "BXOR",
    ["raw"] = "~",
  },
  [34] = {
    ["value"] = 15,
    ["line"] = 11,
    ["col"] = 21,
    ["type"] = "NUMBER",
    ["raw"] = "0x0F",
  },
  [35] = {
    ["value"] = "local",
    ["line"] = 12,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [36] = {
    ["value"] = "bnot",
    ["line"] = 12,
    ["col"] = 7,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bnot",
  },
  [37] = {
    ["value"] = "=",
    ["line"] = 12,
    ["col"] = 12,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [38] = {
    ["value"] = "~",
    ["line"] = 12,
    ["col"] = 14,
    ["type"] = "BXOR",
    ["raw"] = "~",
  },
  [39] = {
    ["value"] = 15,
    ["line"] = 12,
    ["col"] = 15,
    ["type"] = "NUMBER",
    ["raw"] = "0x0F",
  },
  [40] = {
    ["value"] = "local",
    ["line"] = 13,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [41] = {
    ["value"] = "shl",
    ["line"] = 13,
    ["col"] = 7,
    ["type"] = "IDENTIFIER",
    ["raw"] = "shl",
  },
  [42] = {
    ["value"] = "=",
    ["line"] = 13,
    ["col"] = 11,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [43] = {
    ["value"] = 1,
    ["line"] = 13,
    ["col"] = 13,
    ["type"] = "NUMBER",
    ["raw"] = "1",
  },
  [44] = {
    ["value"] = "<<",
    ["line"] = 13,
    ["col"] = 15,
    ["type"] = "SHL",
    ["raw"] = "<<",
  },
  [45] = {
    ["value"] = 3,
    ["line"] = 13,
    ["col"] = 18,
    ["type"] = "NUMBER",
    ["raw"] = "3",
  },
  [46] = {
    ["value"] = "local",
    ["line"] = 14,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [47] = {
    ["value"] = "shr",
    ["line"] = 14,
    ["col"] = 7,
    ["type"] = "IDENTIFIER",
    ["raw"] = "shr",
  },
  [48] = {
    ["value"] = "=",
    ["line"] = 14,
    ["col"] = 11,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [49] = {
    ["value"] = 128,
    ["line"] = 14,
    ["col"] = 13,
    ["type"] = "NUMBER",
    ["raw"] = "0x80",
  },
  [50] = {
    ["value"] = ">>",
    ["line"] = 14,
    ["col"] = 18,
    ["type"] = "SHR",
    ["raw"] = ">>",
  },
  [51] = {
    ["value"] = 3,
    ["line"] = 14,
    ["col"] = 21,
    ["type"] = "NUMBER",
    ["raw"] = "3",
  },
  [52] = {
    ["value"] = "local",
    ["line"] = 16,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [53] = {
    ["value"] = "idiv",
    ["line"] = 16,
    ["col"] = 7,
    ["type"] = "IDENTIFIER",
    ["raw"] = "idiv",
  },
  [54] = {
    ["value"] = "=",
    ["line"] = 16,
    ["col"] = 12,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [55] = {
    ["value"] = 10,
    ["line"] = 16,
    ["col"] = 14,
    ["type"] = "NUMBER",
    ["raw"] = "10",
  },
  [56] = {
    ["value"] = "//",
    ["line"] = 16,
    ["col"] = 17,
    ["type"] = "IDIV",
    ["raw"] = "//",
  },
  [57] = {
    ["value"] = 3,
    ["line"] = 16,
    ["col"] = 20,
    ["type"] = "NUMBER",
    ["raw"] = "3",
  },
  [58] = {
    ["value"] = "local",
    ["line"] = 18,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [59] = {
    ["value"] = "function",
    ["line"] = 18,
    ["col"] = 7,
    ["type"] = "KEYWORD",
    ["raw"] = "function",
  },
  [60] = {
    ["value"] = "bitwise_ops",
    ["line"] = 18,
    ["col"] = 16,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bitwise_ops",
  },
  [61] = {
    ["value"] = "(",
    ["line"] = 18,
    ["col"] = 27,
    ["type"] = "LPAREN",
    ["raw"] = "(",
  },
  [62] = {
    ["value"] = "a",
    ["line"] = 18,
    ["col"] = 28,
    ["type"] = "IDENTIFIER",
    ["raw"] = "a",
  },
  [63] = {
    ["value"] = ",",
    ["line"] = 18,
    ["col"] = 29,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [64] = {
    ["value"] = "b",
    ["line"] = 18,
    ["col"] = 31,
    ["type"] = "IDENTIFIER",
    ["raw"] = "b",
  },
  [65] = {
    ["value"] = ")",
    ["line"] = 18,
    ["col"] = 32,
    ["type"] = "RPAREN",
    ["raw"] = ")",
  },
  [66] = {
    ["value"] = "local",
    ["line"] = 19,
    ["col"] = 5,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [67] = {
    ["value"] = "results",
    ["line"] = 19,
    ["col"] = 11,
    ["type"] = "IDENTIFIER",
    ["raw"] = "results",
  },
  [68] = {
    ["value"] = "=",
    ["line"] = 19,
    ["col"] = 19,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [69] = {
    ["value"] = "{",
    ["line"] = 19,
    ["col"] = 21,
    ["type"] = "LBRACE",
    ["raw"] = "{",
  },
  [70] = {
    ["value"] = "}",
    ["line"] = 19,
    ["col"] = 22,
    ["type"] = "RBRACE",
    ["raw"] = "}",
  },
  [71] = {
    ["value"] = "results",
    ["line"] = 20,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "results",
  },
  [72] = {
    ["value"] = ".",
    ["line"] = 20,
    ["col"] = 12,
    ["type"] = "DOT",
    ["raw"] = ".",
  },
  [73] = {
    ["value"] = "band",
    ["line"] = 20,
    ["col"] = 13,
    ["type"] = "IDENTIFIER",
    ["raw"] = "band",
  },
  [74] = {
    ["value"] = "=",
    ["line"] = 20,
    ["col"] = 18,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [75] = {
    ["value"] = "a",
    ["line"] = 20,
    ["col"] = 20,
    ["type"] = "IDENTIFIER",
    ["raw"] = "a",
  },
  [76] = {
    ["value"] = "&",
    ["line"] = 20,
    ["col"] = 22,
    ["type"] = "BAND",
    ["raw"] = "&",
  },
  [77] = {
    ["value"] = "b",
    ["line"] = 20,
    ["col"] = 24,
    ["type"] = "IDENTIFIER",
    ["raw"] = "b",
  },
  [78] = {
    ["value"] = "results",
    ["line"] = 21,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "results",
  },
  [79] = {
    ["value"] = ".",
    ["line"] = 21,
    ["col"] = 12,
    ["type"] = "DOT",
    ["raw"] = ".",
  },
  [80] = {
    ["value"] = "bor",
    ["line"] = 21,
    ["col"] = 13,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bor",
  },
  [81] = {
    ["value"] = "=",
    ["line"] = 21,
    ["col"] = 17,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [82] = {
    ["value"] = "a",
    ["line"] = 21,
    ["col"] = 19,
    ["type"] = "IDENTIFIER",
    ["raw"] = "a",
  },
  [83] = {
    ["value"] = "|",
    ["line"] = 21,
    ["col"] = 21,
    ["type"] = "BOR",
    ["raw"] = "|",
  },
  [84] = {
    ["value"] = "b",
    ["line"] = 21,
    ["col"] = 23,
    ["type"] = "IDENTIFIER",
    ["raw"] = "b",
  },
  [85] = {
    ["value"] = "results",
    ["line"] = 22,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "results",
  },
  [86] = {
    ["value"] = ".",
    ["line"] = 22,
    ["col"] = 12,
    ["type"] = "DOT",
    ["raw"] = ".",
  },
  [87] = {
    ["value"] = "bxor",
    ["line"] = 22,
    ["col"] = 13,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bxor",
  },
  [88] = {
    ["value"] = "=",
    ["line"] = 22,
    ["col"] = 18,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [89] = {
    ["value"] = "a",
    ["line"] = 22,
    ["col"] = 20,
    ["type"] = "IDENTIFIER",
    ["raw"] = "a",
  },
  [90] = {
    ["value"] = "~",
    ["line"] = 22,
    ["col"] = 22,
    ["type"] = "BXOR",
    ["raw"] = "~",
  },
  [91] = {
    ["value"] = "b",
    ["line"] = 22,
    ["col"] = 24,
    ["type"] = "IDENTIFIER",
    ["raw"] = "b",
  },
  [92] = {
    ["value"] = "results",
    ["line"] = 23,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "results",
  },
  [93] = {
    ["value"] = ".",
    ["line"] = 23,
    ["col"] = 12,
    ["type"] = "DOT",
    ["raw"] = ".",
  },
  [94] = {
    ["value"] = "bnot",
    ["line"] = 23,
    ["col"] = 13,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bnot",
  },
  [95] = {
    ["value"] = "=",
    ["line"] = 23,
    ["col"] = 18,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [96] = {
    ["value"] = "~",
    ["line"] = 23,
    ["col"] = 20,
    ["type"] = "BXOR",
    ["raw"] = "~",
  },
  [97] = {
    ["value"] = "a",
    ["line"] = 23,
    ["col"] = 21,
    ["type"] = "IDENTIFIER",
    ["raw"] = "a",
  },
  [98] = {
    ["value"] = "results",
    ["line"] = 24,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "results",
  },
  [99] = {
    ["value"] = ".",
    ["line"] = 24,
    ["col"] = 12,
    ["type"] = "DOT",
    ["raw"] = ".",
  },
  [100] = {
    ["value"] = "shl",
    ["line"] = 24,
    ["col"] = 13,
    ["type"] = "IDENTIFIER",
    ["raw"] = "shl",
  },
  [101] = {
    ["value"] = "=",
    ["line"] = 24,
    ["col"] = 17,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [102] = {
    ["value"] = "a",
    ["line"] = 24,
    ["col"] = 19,
    ["type"] = "IDENTIFIER",
    ["raw"] = "a",
  },
  [103] = {
    ["value"] = "<<",
    ["line"] = 24,
    ["col"] = 21,
    ["type"] = "SHL",
    ["raw"] = "<<",
  },
  [104] = {
    ["value"] = 2,
    ["line"] = 24,
    ["col"] = 24,
    ["type"] = "NUMBER",
    ["raw"] = "2",
  },
  [105] = {
    ["value"] = "results",
    ["line"] = 25,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "results",
  },
  [106] = {
    ["value"] = ".",
    ["line"] = 25,
    ["col"] = 12,
    ["type"] = "DOT",
    ["raw"] = ".",
  },
  [107] = {
    ["value"] = "shr",
    ["line"] = 25,
    ["col"] = 13,
    ["type"] = "IDENTIFIER",
    ["raw"] = "shr",
  },
  [108] = {
    ["value"] = "=",
    ["line"] = 25,
    ["col"] = 17,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [109] = {
    ["value"] = "a",
    ["line"] = 25,
    ["col"] = 19,
    ["type"] = "IDENTIFIER",
    ["raw"] = "a",
  },
  [110] = {
    ["value"] = ">>",
    ["line"] = 25,
    ["col"] = 21,
    ["type"] = "SHR",
    ["raw"] = ">>",
  },
  [111] = {
    ["value"] = 1,
    ["line"] = 25,
    ["col"] = 24,
    ["type"] = "NUMBER",
    ["raw"] = "1",
  },
  [112] = {
    ["value"] = "results",
    ["line"] = 26,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "results",
  },
  [113] = {
    ["value"] = ".",
    ["line"] = 26,
    ["col"] = 12,
    ["type"] = "DOT",
    ["raw"] = ".",
  },
  [114] = {
    ["value"] = "idiv",
    ["line"] = 26,
    ["col"] = 13,
    ["type"] = "IDENTIFIER",
    ["raw"] = "idiv",
  },
  [115] = {
    ["value"] = "=",
    ["line"] = 26,
    ["col"] = 18,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [116] = {
    ["value"] = "a",
    ["line"] = 26,
    ["col"] = 20,
    ["type"] = "IDENTIFIER",
    ["raw"] = "a",
  },
  [117] = {
    ["value"] = "//",
    ["line"] = 26,
    ["col"] = 22,
    ["type"] = "IDIV",
    ["raw"] = "//",
  },
  [118] = {
    ["value"] = "b",
    ["line"] = 26,
    ["col"] = 25,
    ["type"] = "IDENTIFIER",
    ["raw"] = "b",
  },
  [119] = {
    ["value"] = "return",
    ["line"] = 27,
    ["col"] = 5,
    ["type"] = "KEYWORD",
    ["raw"] = "return",
  },
  [120] = {
    ["value"] = "results",
    ["line"] = 27,
    ["col"] = 12,
    ["type"] = "IDENTIFIER",
    ["raw"] = "results",
  },
  [121] = {
    ["value"] = "end",
    ["line"] = 28,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "end",
  },
  [122] = {
    ["value"] = "local",
    ["line"] = 30,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [123] = {
    ["value"] = "complex",
    ["line"] = 30,
    ["col"] = 7,
    ["type"] = "IDENTIFIER",
    ["raw"] = "complex",
  },
  [124] = {
    ["value"] = "=",
    ["line"] = 30,
    ["col"] = 15,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [125] = {
    ["value"] = "(",
    ["line"] = 30,
    ["col"] = 17,
    ["type"] = "LPAREN",
    ["raw"] = "(",
  },
  [126] = {
    ["value"] = "(",
    ["line"] = 30,
    ["col"] = 18,
    ["type"] = "LPAREN",
    ["raw"] = "(",
  },
  [127] = {
    ["value"] = 255,
    ["line"] = 30,
    ["col"] = 19,
    ["type"] = "NUMBER",
    ["raw"] = "0xFF",
  },
  [128] = {
    ["value"] = "&",
    ["line"] = 30,
    ["col"] = 24,
    ["type"] = "BAND",
    ["raw"] = "&",
  },
  [129] = {
    ["value"] = 15,
    ["line"] = 30,
    ["col"] = 26,
    ["type"] = "NUMBER",
    ["raw"] = "0x0F",
  },
  [130] = {
    ["value"] = ")",
    ["line"] = 30,
    ["col"] = 30,
    ["type"] = "RPAREN",
    ["raw"] = ")",
  },
  [131] = {
    ["value"] = "<<",
    ["line"] = 30,
    ["col"] = 32,
    ["type"] = "SHL",
    ["raw"] = "<<",
  },
  [132] = {
    ["value"] = 2,
    ["line"] = 30,
    ["col"] = 35,
    ["type"] = "NUMBER",
    ["raw"] = "2",
  },
  [133] = {
    ["value"] = ")",
    ["line"] = 30,
    ["col"] = 36,
    ["type"] = "RPAREN",
    ["raw"] = ")",
  },
  [134] = {
    ["value"] = "|",
    ["line"] = 30,
    ["col"] = 38,
    ["type"] = "BOR",
    ["raw"] = "|",
  },
  [135] = {
    ["value"] = "(",
    ["line"] = 30,
    ["col"] = 40,
    ["type"] = "LPAREN",
    ["raw"] = "(",
  },
  [136] = {
    ["value"] = "(",
    ["line"] = 30,
    ["col"] = 41,
    ["type"] = "LPAREN",
    ["raw"] = "(",
  },
  [137] = {
    ["value"] = 240,
    ["line"] = 30,
    ["col"] = 42,
    ["type"] = "NUMBER",
    ["raw"] = "0xF0",
  },
  [138] = {
    ["value"] = "&",
    ["line"] = 30,
    ["col"] = 47,
    ["type"] = "BAND",
    ["raw"] = "&",
  },
  [139] = {
    ["value"] = 15,
    ["line"] = 30,
    ["col"] = 49,
    ["type"] = "NUMBER",
    ["raw"] = "0x0F",
  },
  [140] = {
    ["value"] = ")",
    ["line"] = 30,
    ["col"] = 53,
    ["type"] = "RPAREN",
    ["raw"] = ")",
  },
  [141] = {
    ["value"] = ">>",
    ["line"] = 30,
    ["col"] = 55,
    ["type"] = "SHR",
    ["raw"] = ">>",
  },
  [142] = {
    ["value"] = 1,
    ["line"] = 30,
    ["col"] = 58,
    ["type"] = "NUMBER",
    ["raw"] = "1",
  },
  [143] = {
    ["value"] = ")",
    ["line"] = 30,
    ["col"] = 59,
    ["type"] = "RPAREN",
    ["raw"] = ")",
  },
  [144] = {
    ["value"] = "local",
    ["line"] = 32,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "local",
  },
  [145] = {
    ["value"] = "pi_hex",
    ["line"] = 32,
    ["col"] = 7,
    ["type"] = "IDENTIFIER",
    ["raw"] = "pi_hex",
  },
  [146] = {
    ["value"] = "=",
    ["line"] = 32,
    ["col"] = 14,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [147] = {
    ["value"] = 3.1415926535898,
    ["line"] = 32,
    ["col"] = 16,
    ["type"] = "NUMBER",
    ["raw"] = "0x1.921fb54442d18p+1",
  },
  [148] = {
    ["value"] = "return",
    ["line"] = 34,
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["raw"] = "return",
  },
  [149] = {
    ["value"] = "{",
    ["line"] = 34,
    ["col"] = 8,
    ["type"] = "LBRACE",
    ["raw"] = "{",
  },
  [150] = {
    ["value"] = "num",
    ["line"] = 35,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "num",
  },
  [151] = {
    ["value"] = "=",
    ["line"] = 35,
    ["col"] = 9,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [152] = {
    ["value"] = "num",
    ["line"] = 35,
    ["col"] = 11,
    ["type"] = "IDENTIFIER",
    ["raw"] = "num",
  },
  [153] = {
    ["value"] = ",",
    ["line"] = 35,
    ["col"] = 14,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [154] = {
    ["value"] = "float",
    ["line"] = 36,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "float",
  },
  [155] = {
    ["value"] = "=",
    ["line"] = 36,
    ["col"] = 11,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [156] = {
    ["value"] = "float",
    ["line"] = 36,
    ["col"] = 13,
    ["type"] = "IDENTIFIER",
    ["raw"] = "float",
  },
  [157] = {
    ["value"] = ",",
    ["line"] = 36,
    ["col"] = 18,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [158] = {
    ["value"] = "hex",
    ["line"] = 37,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "hex",
  },
  [159] = {
    ["value"] = "=",
    ["line"] = 37,
    ["col"] = 9,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [160] = {
    ["value"] = "hex",
    ["line"] = 37,
    ["col"] = 11,
    ["type"] = "IDENTIFIER",
    ["raw"] = "hex",
  },
  [161] = {
    ["value"] = ",",
    ["line"] = 37,
    ["col"] = 14,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [162] = {
    ["value"] = "hex_float",
    ["line"] = 38,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "hex_float",
  },
  [163] = {
    ["value"] = "=",
    ["line"] = 38,
    ["col"] = 15,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [164] = {
    ["value"] = "hex_float",
    ["line"] = 38,
    ["col"] = 17,
    ["type"] = "IDENTIFIER",
    ["raw"] = "hex_float",
  },
  [165] = {
    ["value"] = ",",
    ["line"] = 38,
    ["col"] = 26,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [166] = {
    ["value"] = "pi_hex",
    ["line"] = 39,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "pi_hex",
  },
  [167] = {
    ["value"] = "=",
    ["line"] = 39,
    ["col"] = 12,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [168] = {
    ["value"] = "pi_hex",
    ["line"] = 39,
    ["col"] = 14,
    ["type"] = "IDENTIFIER",
    ["raw"] = "pi_hex",
  },
  [169] = {
    ["value"] = ",",
    ["line"] = 39,
    ["col"] = 20,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [170] = {
    ["value"] = "bitwise",
    ["line"] = 40,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bitwise",
  },
  [171] = {
    ["value"] = "=",
    ["line"] = 40,
    ["col"] = 13,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [172] = {
    ["value"] = "{",
    ["line"] = 40,
    ["col"] = 15,
    ["type"] = "LBRACE",
    ["raw"] = "{",
  },
  [173] = {
    ["value"] = "band",
    ["line"] = 41,
    ["col"] = 9,
    ["type"] = "IDENTIFIER",
    ["raw"] = "band",
  },
  [174] = {
    ["value"] = "=",
    ["line"] = 41,
    ["col"] = 14,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [175] = {
    ["value"] = "band",
    ["line"] = 41,
    ["col"] = 16,
    ["type"] = "IDENTIFIER",
    ["raw"] = "band",
  },
  [176] = {
    ["value"] = ",",
    ["line"] = 41,
    ["col"] = 20,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [177] = {
    ["value"] = "bor",
    ["line"] = 42,
    ["col"] = 9,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bor",
  },
  [178] = {
    ["value"] = "=",
    ["line"] = 42,
    ["col"] = 13,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [179] = {
    ["value"] = "bor",
    ["line"] = 42,
    ["col"] = 15,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bor",
  },
  [180] = {
    ["value"] = ",",
    ["line"] = 42,
    ["col"] = 18,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [181] = {
    ["value"] = "bxor",
    ["line"] = 43,
    ["col"] = 9,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bxor",
  },
  [182] = {
    ["value"] = "=",
    ["line"] = 43,
    ["col"] = 14,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [183] = {
    ["value"] = "bxor",
    ["line"] = 43,
    ["col"] = 16,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bxor",
  },
  [184] = {
    ["value"] = ",",
    ["line"] = 43,
    ["col"] = 20,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [185] = {
    ["value"] = "bnot",
    ["line"] = 44,
    ["col"] = 9,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bnot",
  },
  [186] = {
    ["value"] = "=",
    ["line"] = 44,
    ["col"] = 14,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [187] = {
    ["value"] = "bnot",
    ["line"] = 44,
    ["col"] = 16,
    ["type"] = "IDENTIFIER",
    ["raw"] = "bnot",
  },
  [188] = {
    ["value"] = ",",
    ["line"] = 44,
    ["col"] = 20,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [189] = {
    ["value"] = "shl",
    ["line"] = 45,
    ["col"] = 9,
    ["type"] = "IDENTIFIER",
    ["raw"] = "shl",
  },
  [190] = {
    ["value"] = "=",
    ["line"] = 45,
    ["col"] = 13,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [191] = {
    ["value"] = "shl",
    ["line"] = 45,
    ["col"] = 15,
    ["type"] = "IDENTIFIER",
    ["raw"] = "shl",
  },
  [192] = {
    ["value"] = ",",
    ["line"] = 45,
    ["col"] = 18,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [193] = {
    ["value"] = "shr",
    ["line"] = 46,
    ["col"] = 9,
    ["type"] = "IDENTIFIER",
    ["raw"] = "shr",
  },
  [194] = {
    ["value"] = "=",
    ["line"] = 46,
    ["col"] = 13,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [195] = {
    ["value"] = "shr",
    ["line"] = 46,
    ["col"] = 15,
    ["type"] = "IDENTIFIER",
    ["raw"] = "shr",
  },
  [196] = {
    ["value"] = "}",
    ["line"] = 47,
    ["col"] = 5,
    ["type"] = "RBRACE",
    ["raw"] = "}",
  },
  [197] = {
    ["value"] = ",",
    ["line"] = 47,
    ["col"] = 6,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [198] = {
    ["value"] = "idiv",
    ["line"] = 48,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "idiv",
  },
  [199] = {
    ["value"] = "=",
    ["line"] = 48,
    ["col"] = 10,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [200] = {
    ["value"] = "idiv",
    ["line"] = 48,
    ["col"] = 12,
    ["type"] = "IDENTIFIER",
    ["raw"] = "idiv",
  },
  [201] = {
    ["value"] = ",",
    ["line"] = 48,
    ["col"] = 16,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [202] = {
    ["value"] = "complex",
    ["line"] = 49,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "complex",
  },
  [203] = {
    ["value"] = "=",
    ["line"] = 49,
    ["col"] = 13,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [204] = {
    ["value"] = "complex",
    ["line"] = 49,
    ["col"] = 15,
    ["type"] = "IDENTIFIER",
    ["raw"] = "complex",
  },
  [205] = {
    ["value"] = ",",
    ["line"] = 49,
    ["col"] = 22,
    ["type"] = "COMMA",
    ["raw"] = ",",
  },
  [206] = {
    ["value"] = "lua_version",
    ["line"] = 50,
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["raw"] = "lua_version",
  },
  [207] = {
    ["value"] = "=",
    ["line"] = 50,
    ["col"] = 17,
    ["type"] = "ASSIGN",
    ["raw"] = "=",
  },
  [208] = {
    ["value"] = "_VERSION",
    ["line"] = 50,
    ["col"] = 19,
    ["type"] = "IDENTIFIER",
    ["raw"] = "_VERSION",
  },
  [209] = {
    ["value"] = "}",
    ["line"] = 51,
    ["col"] = 1,
    ["type"] = "RBRACE",
    ["raw"] = "}",
  },
  [210] = {
    ["value"] = "",
    ["line"] = 52,
    ["col"] = 1,
    ["type"] = "EOF",
    ["raw"] = "",
  },
}
}