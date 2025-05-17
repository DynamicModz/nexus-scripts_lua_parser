return {
  ast = {
  ["body"] = {
    [1] = {
      ["variables"] = {
        [1] = {
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
          ["name"] = "num",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["line"] = 1,
            ["raw"] = "--[[[\
    Dev : NexusScripts\
]]",
            ["value"] = "[[[\
    Dev : NexusScripts\
]]",
            ["type"] = "COMMENT",
            ["col"] = 1,
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
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = false,
          ["raw"] = "42",
          ["type"] = "NumericLiteral",
          ["value"] = 42,
        },
      },
    },
    [2] = {
      ["variables"] = {
        [1] = {
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
          ["name"] = "float",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["line"] = 4,
            ["raw"] = "-- Integer",
            ["value"] = " Integer",
            ["type"] = "COMMENT",
            ["col"] = 33,
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
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = false,
          ["raw"] = "3.14159",
          ["type"] = "NumericLiteral",
          ["value"] = 3.14159,
        },
      },
    },
    [3] = {
      ["variables"] = {
        [1] = {
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
          ["name"] = "hex",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["line"] = 5,
            ["raw"] = "-- Decimal float",
            ["value"] = " Decimal float",
            ["type"] = "COMMENT",
            ["col"] = 33,
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
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = false,
          ["raw"] = "0xFF",
          ["type"] = "NumericLiteral",
          ["value"] = 255,
        },
      },
    },
    [4] = {
      ["variables"] = {
        [1] = {
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
          ["name"] = "hex_float",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["line"] = 6,
            ["raw"] = "-- Hexadecimal integer (255)",
            ["value"] = " Hexadecimal integer (255)",
            ["type"] = "COMMENT",
            ["col"] = 33,
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
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["raw"] = "0x1p8",
          ["type"] = "NumericLiteral",
          ["value"] = 256.0,
        },
      },
    },
    [5] = {
      ["variables"] = {
        [1] = {
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
          ["name"] = "band",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["line"] = 7,
            ["raw"] = "-- Hex float (256.0) - Lua 5.3 feature",
            ["value"] = " Hex float (256.0) - Lua 5.3 feature",
            ["type"] = "COMMENT",
            ["col"] = 33,
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
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["negate_result"] = false,
          ["has_metamethod"] = true,
          ["lua53_feature"] = true,
          ["type"] = "BinaryExpression",
          ["potential_metamethod"] = "__band",
          ["original_left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0xFF",
            ["type"] = "NumericLiteral",
            ["value"] = 255,
          },
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0xFF",
            ["type"] = "NumericLiteral",
            ["value"] = 255,
          },
          ["original_right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["type"] = "NumericLiteral",
            ["value"] = 15,
          },
          ["swap_operands"] = false,
          ["operator"] = "&",
          ["is_lua53_feature"] = true,
          ["substituted_operator"] = "&",
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["type"] = "NumericLiteral",
            ["value"] = 15,
          },
        },
      },
    },
    [6] = {
      ["variables"] = {
        [1] = {
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
          ["name"] = "bor",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["line"] = 9,
            ["raw"] = "-- Bitwise AND: 15",
            ["value"] = " Bitwise AND: 15",
            ["type"] = "COMMENT",
            ["col"] = 33,
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
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["negate_result"] = false,
          ["has_metamethod"] = true,
          ["lua53_feature"] = true,
          ["type"] = "BinaryExpression",
          ["potential_metamethod"] = "__bor",
          ["original_left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0xF0",
            ["type"] = "NumericLiteral",
            ["value"] = 240,
          },
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0xF0",
            ["type"] = "NumericLiteral",
            ["value"] = 240,
          },
          ["original_right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["type"] = "NumericLiteral",
            ["value"] = 15,
          },
          ["swap_operands"] = false,
          ["operator"] = "|",
          ["is_lua53_feature"] = true,
          ["substituted_operator"] = "|",
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["type"] = "NumericLiteral",
            ["value"] = 15,
          },
        },
      },
    },
    [7] = {
      ["variables"] = {
        [1] = {
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
          ["name"] = "bxor",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["line"] = 10,
            ["raw"] = "-- Bitwise OR: 255 ",
            ["value"] = " Bitwise OR: 255 ",
            ["type"] = "COMMENT",
            ["col"] = 33,
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
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["negate_result"] = false,
          ["has_metamethod"] = true,
          ["lua53_feature"] = true,
          ["type"] = "BinaryExpression",
          ["potential_metamethod"] = "__bxor",
          ["original_left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0xFF",
            ["type"] = "NumericLiteral",
            ["value"] = 255,
          },
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0xFF",
            ["type"] = "NumericLiteral",
            ["value"] = 255,
          },
          ["original_right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["type"] = "NumericLiteral",
            ["value"] = 15,
          },
          ["swap_operands"] = false,
          ["operator"] = "~",
          ["is_lua53_feature"] = true,
          ["substituted_operator"] = "~",
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["type"] = "NumericLiteral",
            ["value"] = 15,
          },
        },
      },
    },
    [8] = {
      ["variables"] = {
        [1] = {
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
          ["name"] = "bnot",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["line"] = 11,
            ["raw"] = "-- Bitwise XOR: 240",
            ["value"] = " Bitwise XOR: 240",
            ["type"] = "COMMENT",
            ["col"] = 33,
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
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["potential_metamethod"] = "__bnot",
          ["argument"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x0F",
            ["type"] = "NumericLiteral",
            ["value"] = 15,
          },
          ["operator"] = "~",
          ["is_lua53_feature"] = true,
          ["type"] = "UnaryExpression",
          ["has_metamethod"] = true,
        },
      },
    },
    [9] = {
      ["variables"] = {
        [1] = {
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
          ["name"] = "shl",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["line"] = 12,
            ["raw"] = "-- Bitwise NOT: -16",
            ["value"] = " Bitwise NOT: -16",
            ["type"] = "COMMENT",
            ["col"] = 33,
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
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["negate_result"] = false,
          ["has_metamethod"] = true,
          ["lua53_feature"] = true,
          ["type"] = "BinaryExpression",
          ["potential_metamethod"] = "__shl",
          ["original_left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "1",
            ["type"] = "NumericLiteral",
            ["value"] = 1,
          },
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "1",
            ["type"] = "NumericLiteral",
            ["value"] = 1,
          },
          ["original_right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "3",
            ["type"] = "NumericLiteral",
            ["value"] = 3,
          },
          ["swap_operands"] = false,
          ["operator"] = "<<",
          ["is_lua53_feature"] = true,
          ["substituted_operator"] = "<<",
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "3",
            ["type"] = "NumericLiteral",
            ["value"] = 3,
          },
        },
      },
    },
    [10] = {
      ["variables"] = {
        [1] = {
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
          ["name"] = "shr",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["line"] = 13,
            ["raw"] = "-- Shift left: 8",
            ["value"] = " Shift left: 8",
            ["type"] = "COMMENT",
            ["col"] = 33,
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
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["negate_result"] = false,
          ["has_metamethod"] = true,
          ["lua53_feature"] = true,
          ["type"] = "BinaryExpression",
          ["potential_metamethod"] = "__shr",
          ["original_left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x80",
            ["type"] = "NumericLiteral",
            ["value"] = 128,
          },
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "0x80",
            ["type"] = "NumericLiteral",
            ["value"] = 128,
          },
          ["original_right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "3",
            ["type"] = "NumericLiteral",
            ["value"] = 3,
          },
          ["swap_operands"] = false,
          ["operator"] = ">>",
          ["is_lua53_feature"] = true,
          ["substituted_operator"] = ">>",
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "3",
            ["type"] = "NumericLiteral",
            ["value"] = 3,
          },
        },
      },
    },
    [11] = {
      ["variables"] = {
        [1] = {
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
          ["name"] = "idiv",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
      ["comments"] = {
        ["leading"] = {
          [1] = {
            ["line"] = 14,
            ["raw"] = "-- Shift right: 16",
            ["value"] = " Shift right: 16",
            ["type"] = "COMMENT",
            ["col"] = 33,
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
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["negate_result"] = false,
          ["has_metamethod"] = true,
          ["lua53_feature"] = true,
          ["type"] = "BinaryExpression",
          ["potential_metamethod"] = "__idiv",
          ["original_left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "10",
            ["type"] = "NumericLiteral",
            ["value"] = 10,
          },
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "10",
            ["type"] = "NumericLiteral",
            ["value"] = 10,
          },
          ["original_right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "3",
            ["type"] = "NumericLiteral",
            ["value"] = 3,
          },
          ["swap_operands"] = false,
          ["operator"] = "//",
          ["is_lua53_feature"] = true,
          ["substituted_operator"] = "//",
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["raw"] = "3",
            ["type"] = "NumericLiteral",
            ["value"] = 3,
          },
        },
      },
    },
    [12] = {
      ["body"] = {
        [1] = {
          ["variables"] = {
            [1] = {
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
              ["name"] = "results",
              ["type"] = "Identifier",
              ["attributes"] = {
              },
            },
          },
          ["comments"] = {
            ["leading"] = {
              [1] = {
                ["line"] = 16,
                ["raw"] = "-- Integer division: 3",
                ["value"] = " Integer division: 3",
                ["type"] = "COMMENT",
                ["col"] = 33,
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
          ["type"] = "LocalStatement",
          ["init"] = {
            [1] = {
              ["metamethods"] = {
              },
              ["has_metamethods"] = false,
              ["type"] = "TableConstructorExpression",
              ["fields"] = {
              },
            },
          },
        },
        [2] = {
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["indexer"] = ".",
              ["base"] = {
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
                ["name"] = "results",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "MemberExpression",
              ["identifier"] = {
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
                ["name"] = "band",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__band",
              ["original_left"] = {
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
                ["name"] = "a",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["left"] = {
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
                ["name"] = "a",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["original_right"] = {
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
                ["name"] = "b",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["swap_operands"] = false,
              ["operator"] = "&",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = "&",
              ["right"] = {
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
                ["name"] = "b",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
        },
        [3] = {
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["indexer"] = ".",
              ["base"] = {
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
                ["name"] = "results",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "MemberExpression",
              ["identifier"] = {
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
                ["name"] = "bor",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__bor",
              ["original_left"] = {
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
                ["name"] = "a",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["left"] = {
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
                ["name"] = "a",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["original_right"] = {
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
                ["name"] = "b",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["swap_operands"] = false,
              ["operator"] = "|",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = "|",
              ["right"] = {
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
                ["name"] = "b",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
        },
        [4] = {
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["indexer"] = ".",
              ["base"] = {
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
                ["name"] = "results",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "MemberExpression",
              ["identifier"] = {
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
                ["name"] = "bxor",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__bxor",
              ["original_left"] = {
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
                ["name"] = "a",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["left"] = {
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
                ["name"] = "a",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["original_right"] = {
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
                ["name"] = "b",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["swap_operands"] = false,
              ["operator"] = "~",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = "~",
              ["right"] = {
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
                ["name"] = "b",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
        },
        [5] = {
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["indexer"] = ".",
              ["base"] = {
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
                ["name"] = "results",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "MemberExpression",
              ["identifier"] = {
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
                ["name"] = "bnot",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["potential_metamethod"] = "__bnot",
              ["argument"] = {
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
                ["name"] = "a",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["operator"] = "~",
              ["is_lua53_feature"] = true,
              ["type"] = "UnaryExpression",
              ["has_metamethod"] = true,
            },
          },
        },
        [6] = {
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["indexer"] = ".",
              ["base"] = {
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
                ["name"] = "results",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "MemberExpression",
              ["identifier"] = {
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
                ["name"] = "shl",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__shl",
              ["original_left"] = {
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
                ["name"] = "a",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["left"] = {
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
                ["name"] = "a",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "2",
                ["type"] = "NumericLiteral",
                ["value"] = 2,
              },
              ["swap_operands"] = false,
              ["operator"] = "<<",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = "<<",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "2",
                ["type"] = "NumericLiteral",
                ["value"] = 2,
              },
            },
          },
        },
        [7] = {
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["indexer"] = ".",
              ["base"] = {
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
                ["name"] = "results",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "MemberExpression",
              ["identifier"] = {
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
                ["name"] = "shr",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__shr",
              ["original_left"] = {
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
                ["name"] = "a",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["left"] = {
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
                ["name"] = "a",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "1",
                ["type"] = "NumericLiteral",
                ["value"] = 1,
              },
              ["swap_operands"] = false,
              ["operator"] = ">>",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = ">>",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "1",
                ["type"] = "NumericLiteral",
                ["value"] = 1,
              },
            },
          },
        },
        [8] = {
          ["metamethod_ops"] = {
          },
          ["variables"] = {
            [1] = {
              ["indexer"] = ".",
              ["base"] = {
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
                ["name"] = "results",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "MemberExpression",
              ["identifier"] = {
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
                ["name"] = "idiv",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["has_metamethods"] = false,
          ["type"] = "AssignmentStatement",
          ["init"] = {
            [1] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__idiv",
              ["original_left"] = {
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
                ["name"] = "a",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["left"] = {
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
                ["name"] = "a",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["original_right"] = {
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
                ["name"] = "b",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["swap_operands"] = false,
              ["operator"] = "//",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = "//",
              ["right"] = {
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
                ["name"] = "b",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
        },
        [9] = {
          ["type"] = "ReturnStatement",
          ["arguments"] = {
            [1] = {
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
              ["name"] = "results",
              ["type"] = "Identifier",
              ["attributes"] = {
              },
            },
          },
        },
      },
      ["isLocal"] = true,
      ["identifier"] = {
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
        ["name"] = "bitwise_ops",
        ["type"] = "Identifier",
        ["attributes"] = {
        },
      },
      ["type"] = "FunctionDeclaration",
      ["parameters"] = {
        [1] = {
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
          ["name"] = "a",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
        [2] = {
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
          ["name"] = "b",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
    },
    [13] = {
      ["variables"] = {
        [1] = {
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
          ["name"] = "complex",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
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
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["negate_result"] = false,
          ["has_metamethod"] = true,
          ["lua53_feature"] = true,
          ["type"] = "BinaryExpression",
          ["potential_metamethod"] = "__bor",
          ["original_left"] = {
            ["negate_result"] = false,
            ["has_metamethod"] = true,
            ["lua53_feature"] = true,
            ["type"] = "BinaryExpression",
            ["potential_metamethod"] = "__shl",
            ["original_left"] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__band",
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xFF",
                ["type"] = "NumericLiteral",
                ["value"] = 255,
              },
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xFF",
                ["type"] = "NumericLiteral",
                ["value"] = 255,
              },
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
              ["swap_operands"] = false,
              ["operator"] = "&",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = "&",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
            },
            ["left"] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__band",
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xFF",
                ["type"] = "NumericLiteral",
                ["value"] = 255,
              },
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xFF",
                ["type"] = "NumericLiteral",
                ["value"] = 255,
              },
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
              ["swap_operands"] = false,
              ["operator"] = "&",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = "&",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
            },
            ["original_right"] = {
              ["is_lua53_feature"] = false,
              ["raw"] = "2",
              ["type"] = "NumericLiteral",
              ["value"] = 2,
            },
            ["swap_operands"] = false,
            ["operator"] = "<<",
            ["is_lua53_feature"] = true,
            ["substituted_operator"] = "<<",
            ["right"] = {
              ["is_lua53_feature"] = false,
              ["raw"] = "2",
              ["type"] = "NumericLiteral",
              ["value"] = 2,
            },
          },
          ["left"] = {
            ["negate_result"] = false,
            ["has_metamethod"] = true,
            ["lua53_feature"] = true,
            ["type"] = "BinaryExpression",
            ["potential_metamethod"] = "__shl",
            ["original_left"] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__band",
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xFF",
                ["type"] = "NumericLiteral",
                ["value"] = 255,
              },
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xFF",
                ["type"] = "NumericLiteral",
                ["value"] = 255,
              },
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
              ["swap_operands"] = false,
              ["operator"] = "&",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = "&",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
            },
            ["left"] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__band",
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xFF",
                ["type"] = "NumericLiteral",
                ["value"] = 255,
              },
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xFF",
                ["type"] = "NumericLiteral",
                ["value"] = 255,
              },
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
              ["swap_operands"] = false,
              ["operator"] = "&",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = "&",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
            },
            ["original_right"] = {
              ["is_lua53_feature"] = false,
              ["raw"] = "2",
              ["type"] = "NumericLiteral",
              ["value"] = 2,
            },
            ["swap_operands"] = false,
            ["operator"] = "<<",
            ["is_lua53_feature"] = true,
            ["substituted_operator"] = "<<",
            ["right"] = {
              ["is_lua53_feature"] = false,
              ["raw"] = "2",
              ["type"] = "NumericLiteral",
              ["value"] = 2,
            },
          },
          ["original_right"] = {
            ["negate_result"] = false,
            ["has_metamethod"] = true,
            ["lua53_feature"] = true,
            ["type"] = "BinaryExpression",
            ["potential_metamethod"] = "__shr",
            ["original_left"] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__band",
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xF0",
                ["type"] = "NumericLiteral",
                ["value"] = 240,
              },
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xF0",
                ["type"] = "NumericLiteral",
                ["value"] = 240,
              },
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
              ["swap_operands"] = false,
              ["operator"] = "&",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = "&",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
            },
            ["left"] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__band",
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xF0",
                ["type"] = "NumericLiteral",
                ["value"] = 240,
              },
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xF0",
                ["type"] = "NumericLiteral",
                ["value"] = 240,
              },
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
              ["swap_operands"] = false,
              ["operator"] = "&",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = "&",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
            },
            ["original_right"] = {
              ["is_lua53_feature"] = false,
              ["raw"] = "1",
              ["type"] = "NumericLiteral",
              ["value"] = 1,
            },
            ["swap_operands"] = false,
            ["operator"] = ">>",
            ["is_lua53_feature"] = true,
            ["substituted_operator"] = ">>",
            ["right"] = {
              ["is_lua53_feature"] = false,
              ["raw"] = "1",
              ["type"] = "NumericLiteral",
              ["value"] = 1,
            },
          },
          ["swap_operands"] = false,
          ["operator"] = "|",
          ["is_lua53_feature"] = true,
          ["substituted_operator"] = "|",
          ["right"] = {
            ["negate_result"] = false,
            ["has_metamethod"] = true,
            ["lua53_feature"] = true,
            ["type"] = "BinaryExpression",
            ["potential_metamethod"] = "__shr",
            ["original_left"] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__band",
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xF0",
                ["type"] = "NumericLiteral",
                ["value"] = 240,
              },
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xF0",
                ["type"] = "NumericLiteral",
                ["value"] = 240,
              },
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
              ["swap_operands"] = false,
              ["operator"] = "&",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = "&",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
            },
            ["left"] = {
              ["negate_result"] = false,
              ["has_metamethod"] = true,
              ["lua53_feature"] = true,
              ["type"] = "BinaryExpression",
              ["potential_metamethod"] = "__band",
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xF0",
                ["type"] = "NumericLiteral",
                ["value"] = 240,
              },
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0xF0",
                ["type"] = "NumericLiteral",
                ["value"] = 240,
              },
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
              ["swap_operands"] = false,
              ["operator"] = "&",
              ["is_lua53_feature"] = true,
              ["substituted_operator"] = "&",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["raw"] = "0x0F",
                ["type"] = "NumericLiteral",
                ["value"] = 15,
              },
            },
            ["original_right"] = {
              ["is_lua53_feature"] = false,
              ["raw"] = "1",
              ["type"] = "NumericLiteral",
              ["value"] = 1,
            },
            ["swap_operands"] = false,
            ["operator"] = ">>",
            ["is_lua53_feature"] = true,
            ["substituted_operator"] = ">>",
            ["right"] = {
              ["is_lua53_feature"] = false,
              ["raw"] = "1",
              ["type"] = "NumericLiteral",
              ["value"] = 1,
            },
          },
        },
      },
    },
    [14] = {
      ["variables"] = {
        [1] = {
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
          ["name"] = "pi_hex",
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
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
      ["type"] = "LocalStatement",
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["raw"] = "0x1.921fb54442d18p+1",
          ["type"] = "NumericLiteral",
          ["value"] = 3.1415926535898,
        },
      },
    },
    [15] = {
      ["type"] = "ReturnStatement",
      ["arguments"] = {
        [1] = {
          ["metamethods"] = {
          },
          ["has_metamethods"] = false,
          ["type"] = "TableConstructorExpression",
          ["fields"] = {
            [1] = {
              ["value"] = {
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
                ["name"] = "num",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
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
                ["name"] = "num",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [2] = {
              ["value"] = {
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
                ["name"] = "float",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
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
                ["name"] = "float",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [3] = {
              ["value"] = {
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
                ["name"] = "hex",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
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
                ["name"] = "hex",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [4] = {
              ["value"] = {
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
                ["name"] = "hex_float",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
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
                ["name"] = "hex_float",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [5] = {
              ["value"] = {
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
                ["name"] = "pi_hex",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
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
                ["name"] = "pi_hex",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [6] = {
              ["value"] = {
                ["metamethods"] = {
                },
                ["has_metamethods"] = false,
                ["type"] = "TableConstructorExpression",
                ["fields"] = {
                  [1] = {
                    ["value"] = {
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
                      ["name"] = "band",
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                    ["type"] = "TableKeyString",
                    ["key"] = {
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
                      ["name"] = "band",
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                  },
                  [2] = {
                    ["value"] = {
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
                      ["name"] = "bor",
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                    ["type"] = "TableKeyString",
                    ["key"] = {
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
                      ["name"] = "bor",
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                  },
                  [3] = {
                    ["value"] = {
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
                      ["name"] = "bxor",
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                    ["type"] = "TableKeyString",
                    ["key"] = {
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
                      ["name"] = "bxor",
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                  },
                  [4] = {
                    ["value"] = {
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
                      ["name"] = "bnot",
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                    ["type"] = "TableKeyString",
                    ["key"] = {
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
                      ["name"] = "bnot",
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                  },
                  [5] = {
                    ["value"] = {
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
                      ["name"] = "shl",
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                    ["type"] = "TableKeyString",
                    ["key"] = {
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
                      ["name"] = "shl",
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                  },
                  [6] = {
                    ["value"] = {
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
                      ["name"] = "shr",
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                    ["type"] = "TableKeyString",
                    ["key"] = {
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
                      ["name"] = "shr",
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                  },
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
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
                ["name"] = "bitwise",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [7] = {
              ["value"] = {
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
                ["name"] = "idiv",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
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
                ["name"] = "idiv",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [8] = {
              ["value"] = {
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
                ["name"] = "complex",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
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
                ["name"] = "complex",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [9] = {
              ["value"] = {
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
                ["name"] = "_VERSION",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
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
                ["name"] = "lua_version",
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
        },
      },
    },
  },
  ["type"] = "Chunk",
  ["comments"] = {
    [1] = {
      ["line"] = 1,
      ["raw"] = "--[[[\
    Dev : NexusScripts\
]]",
      ["value"] = "[[[\
    Dev : NexusScripts\
]]",
      ["type"] = "COMMENT",
      ["col"] = 1,
    },
    [2] = {
      ["line"] = 4,
      ["raw"] = "-- Integer",
      ["value"] = " Integer",
      ["type"] = "COMMENT",
      ["col"] = 33,
    },
    [3] = {
      ["line"] = 5,
      ["raw"] = "-- Decimal float",
      ["value"] = " Decimal float",
      ["type"] = "COMMENT",
      ["col"] = 33,
    },
    [4] = {
      ["line"] = 6,
      ["raw"] = "-- Hexadecimal integer (255)",
      ["value"] = " Hexadecimal integer (255)",
      ["type"] = "COMMENT",
      ["col"] = 33,
    },
    [5] = {
      ["line"] = 7,
      ["raw"] = "-- Hex float (256.0) - Lua 5.3 feature",
      ["value"] = " Hex float (256.0) - Lua 5.3 feature",
      ["type"] = "COMMENT",
      ["col"] = 33,
    },
    [6] = {
      ["line"] = 9,
      ["raw"] = "-- Bitwise AND: 15",
      ["value"] = " Bitwise AND: 15",
      ["type"] = "COMMENT",
      ["col"] = 33,
    },
    [7] = {
      ["line"] = 10,
      ["raw"] = "-- Bitwise OR: 255 ",
      ["value"] = " Bitwise OR: 255 ",
      ["type"] = "COMMENT",
      ["col"] = 33,
    },
    [8] = {
      ["line"] = 11,
      ["raw"] = "-- Bitwise XOR: 240",
      ["value"] = " Bitwise XOR: 240",
      ["type"] = "COMMENT",
      ["col"] = 33,
    },
    [9] = {
      ["line"] = 12,
      ["raw"] = "-- Bitwise NOT: -16",
      ["value"] = " Bitwise NOT: -16",
      ["type"] = "COMMENT",
      ["col"] = 33,
    },
    [10] = {
      ["line"] = 13,
      ["raw"] = "-- Shift left: 8",
      ["value"] = " Shift left: 8",
      ["type"] = "COMMENT",
      ["col"] = 33,
    },
    [11] = {
      ["line"] = 14,
      ["raw"] = "-- Shift right: 16",
      ["value"] = " Shift right: 16",
      ["type"] = "COMMENT",
      ["col"] = 33,
    },
    [12] = {
      ["line"] = 16,
      ["raw"] = "-- Integer division: 3",
      ["value"] = " Integer division: 3",
      ["type"] = "COMMENT",
      ["col"] = 33,
    },
    [13] = {
      ["line"] = 50,
      ["raw"] = "-- Should be \"Lua 5.3\" or later",
      ["value"] = " Should be \"Lua 5.3\" or later",
      ["type"] = "COMMENT",
      ["col"] = 28,
    },
    ["leading"] = {
      [1] = {
        ["line"] = 50,
        ["raw"] = "-- Should be \"Lua 5.3\" or later",
        ["value"] = " Should be \"Lua 5.3\" or later",
        ["type"] = "COMMENT",
        ["col"] = 28,
      },
    },
  },
},
  tokens = {
  [1] = {
    ["line"] = 4,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [2] = {
    ["line"] = 4,
    ["raw"] = "num",
    ["value"] = "num",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
  },
  [3] = {
    ["line"] = 4,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 11,
  },
  [4] = {
    ["line"] = 4,
    ["raw"] = "42",
    ["value"] = 42,
    ["type"] = "NUMBER",
    ["col"] = 13,
  },
  [5] = {
    ["line"] = 5,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [6] = {
    ["line"] = 5,
    ["raw"] = "float",
    ["value"] = "float",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
  },
  [7] = {
    ["line"] = 5,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 13,
  },
  [8] = {
    ["line"] = 5,
    ["raw"] = "3.14159",
    ["value"] = 3.14159,
    ["type"] = "NUMBER",
    ["col"] = 15,
  },
  [9] = {
    ["line"] = 6,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [10] = {
    ["line"] = 6,
    ["raw"] = "hex",
    ["value"] = "hex",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
  },
  [11] = {
    ["line"] = 6,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 11,
  },
  [12] = {
    ["line"] = 6,
    ["raw"] = "0xFF",
    ["value"] = 255,
    ["type"] = "NUMBER",
    ["col"] = 13,
  },
  [13] = {
    ["line"] = 7,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [14] = {
    ["line"] = 7,
    ["raw"] = "hex_float",
    ["value"] = "hex_float",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
  },
  [15] = {
    ["line"] = 7,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 17,
  },
  [16] = {
    ["line"] = 7,
    ["raw"] = "0x1p8",
    ["value"] = 256.0,
    ["type"] = "NUMBER",
    ["col"] = 19,
  },
  [17] = {
    ["line"] = 9,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [18] = {
    ["line"] = 9,
    ["raw"] = "band",
    ["value"] = "band",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
  },
  [19] = {
    ["line"] = 9,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 12,
  },
  [20] = {
    ["line"] = 9,
    ["raw"] = "0xFF",
    ["value"] = 255,
    ["type"] = "NUMBER",
    ["col"] = 14,
  },
  [21] = {
    ["line"] = 9,
    ["raw"] = "&",
    ["value"] = "&",
    ["type"] = "BAND",
    ["col"] = 19,
  },
  [22] = {
    ["line"] = 9,
    ["raw"] = "0x0F",
    ["value"] = 15,
    ["type"] = "NUMBER",
    ["col"] = 21,
  },
  [23] = {
    ["line"] = 10,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [24] = {
    ["line"] = 10,
    ["raw"] = "bor",
    ["value"] = "bor",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
  },
  [25] = {
    ["line"] = 10,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 11,
  },
  [26] = {
    ["line"] = 10,
    ["raw"] = "0xF0",
    ["value"] = 240,
    ["type"] = "NUMBER",
    ["col"] = 13,
  },
  [27] = {
    ["line"] = 10,
    ["raw"] = "|",
    ["value"] = "|",
    ["type"] = "BOR",
    ["col"] = 18,
  },
  [28] = {
    ["line"] = 10,
    ["raw"] = "0x0F",
    ["value"] = 15,
    ["type"] = "NUMBER",
    ["col"] = 20,
  },
  [29] = {
    ["line"] = 11,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [30] = {
    ["line"] = 11,
    ["raw"] = "bxor",
    ["value"] = "bxor",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
  },
  [31] = {
    ["line"] = 11,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 12,
  },
  [32] = {
    ["line"] = 11,
    ["raw"] = "0xFF",
    ["value"] = 255,
    ["type"] = "NUMBER",
    ["col"] = 14,
  },
  [33] = {
    ["line"] = 11,
    ["raw"] = "~",
    ["value"] = "~",
    ["type"] = "BXOR",
    ["col"] = 19,
  },
  [34] = {
    ["line"] = 11,
    ["raw"] = "0x0F",
    ["value"] = 15,
    ["type"] = "NUMBER",
    ["col"] = 21,
  },
  [35] = {
    ["line"] = 12,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [36] = {
    ["line"] = 12,
    ["raw"] = "bnot",
    ["value"] = "bnot",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
  },
  [37] = {
    ["line"] = 12,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 12,
  },
  [38] = {
    ["line"] = 12,
    ["raw"] = "~",
    ["value"] = "~",
    ["type"] = "BXOR",
    ["col"] = 14,
  },
  [39] = {
    ["line"] = 12,
    ["raw"] = "0x0F",
    ["value"] = 15,
    ["type"] = "NUMBER",
    ["col"] = 15,
  },
  [40] = {
    ["line"] = 13,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [41] = {
    ["line"] = 13,
    ["raw"] = "shl",
    ["value"] = "shl",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
  },
  [42] = {
    ["line"] = 13,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 11,
  },
  [43] = {
    ["line"] = 13,
    ["raw"] = "1",
    ["value"] = 1,
    ["type"] = "NUMBER",
    ["col"] = 13,
  },
  [44] = {
    ["line"] = 13,
    ["raw"] = "<<",
    ["value"] = "<<",
    ["type"] = "SHL",
    ["col"] = 15,
  },
  [45] = {
    ["line"] = 13,
    ["raw"] = "3",
    ["value"] = 3,
    ["type"] = "NUMBER",
    ["col"] = 18,
  },
  [46] = {
    ["line"] = 14,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [47] = {
    ["line"] = 14,
    ["raw"] = "shr",
    ["value"] = "shr",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
  },
  [48] = {
    ["line"] = 14,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 11,
  },
  [49] = {
    ["line"] = 14,
    ["raw"] = "0x80",
    ["value"] = 128,
    ["type"] = "NUMBER",
    ["col"] = 13,
  },
  [50] = {
    ["line"] = 14,
    ["raw"] = ">>",
    ["value"] = ">>",
    ["type"] = "SHR",
    ["col"] = 18,
  },
  [51] = {
    ["line"] = 14,
    ["raw"] = "3",
    ["value"] = 3,
    ["type"] = "NUMBER",
    ["col"] = 21,
  },
  [52] = {
    ["line"] = 16,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [53] = {
    ["line"] = 16,
    ["raw"] = "idiv",
    ["value"] = "idiv",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
  },
  [54] = {
    ["line"] = 16,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 12,
  },
  [55] = {
    ["line"] = 16,
    ["raw"] = "10",
    ["value"] = 10,
    ["type"] = "NUMBER",
    ["col"] = 14,
  },
  [56] = {
    ["line"] = 16,
    ["raw"] = "//",
    ["value"] = "//",
    ["type"] = "IDIV",
    ["col"] = 17,
  },
  [57] = {
    ["line"] = 16,
    ["raw"] = "3",
    ["value"] = 3,
    ["type"] = "NUMBER",
    ["col"] = 20,
  },
  [58] = {
    ["line"] = 18,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [59] = {
    ["line"] = 18,
    ["raw"] = "function",
    ["value"] = "function",
    ["type"] = "KEYWORD",
    ["col"] = 7,
  },
  [60] = {
    ["line"] = 18,
    ["raw"] = "bitwise_ops",
    ["value"] = "bitwise_ops",
    ["type"] = "IDENTIFIER",
    ["col"] = 16,
  },
  [61] = {
    ["line"] = 18,
    ["raw"] = "(",
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["col"] = 27,
  },
  [62] = {
    ["line"] = 18,
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 28,
  },
  [63] = {
    ["line"] = 18,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 29,
  },
  [64] = {
    ["line"] = 18,
    ["raw"] = "b",
    ["value"] = "b",
    ["type"] = "IDENTIFIER",
    ["col"] = 31,
  },
  [65] = {
    ["line"] = 18,
    ["raw"] = ")",
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["col"] = 32,
  },
  [66] = {
    ["line"] = 19,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 5,
  },
  [67] = {
    ["line"] = 19,
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 11,
  },
  [68] = {
    ["line"] = 19,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 19,
  },
  [69] = {
    ["line"] = 19,
    ["raw"] = "{",
    ["value"] = "{",
    ["type"] = "LBRACE",
    ["col"] = 21,
  },
  [70] = {
    ["line"] = 19,
    ["raw"] = "}",
    ["value"] = "}",
    ["type"] = "RBRACE",
    ["col"] = 22,
  },
  [71] = {
    ["line"] = 20,
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [72] = {
    ["line"] = 20,
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
  },
  [73] = {
    ["line"] = 20,
    ["raw"] = "band",
    ["value"] = "band",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
  },
  [74] = {
    ["line"] = 20,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 18,
  },
  [75] = {
    ["line"] = 20,
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 20,
  },
  [76] = {
    ["line"] = 20,
    ["raw"] = "&",
    ["value"] = "&",
    ["type"] = "BAND",
    ["col"] = 22,
  },
  [77] = {
    ["line"] = 20,
    ["raw"] = "b",
    ["value"] = "b",
    ["type"] = "IDENTIFIER",
    ["col"] = 24,
  },
  [78] = {
    ["line"] = 21,
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [79] = {
    ["line"] = 21,
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
  },
  [80] = {
    ["line"] = 21,
    ["raw"] = "bor",
    ["value"] = "bor",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
  },
  [81] = {
    ["line"] = 21,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 17,
  },
  [82] = {
    ["line"] = 21,
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 19,
  },
  [83] = {
    ["line"] = 21,
    ["raw"] = "|",
    ["value"] = "|",
    ["type"] = "BOR",
    ["col"] = 21,
  },
  [84] = {
    ["line"] = 21,
    ["raw"] = "b",
    ["value"] = "b",
    ["type"] = "IDENTIFIER",
    ["col"] = 23,
  },
  [85] = {
    ["line"] = 22,
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [86] = {
    ["line"] = 22,
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
  },
  [87] = {
    ["line"] = 22,
    ["raw"] = "bxor",
    ["value"] = "bxor",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
  },
  [88] = {
    ["line"] = 22,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 18,
  },
  [89] = {
    ["line"] = 22,
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 20,
  },
  [90] = {
    ["line"] = 22,
    ["raw"] = "~",
    ["value"] = "~",
    ["type"] = "BXOR",
    ["col"] = 22,
  },
  [91] = {
    ["line"] = 22,
    ["raw"] = "b",
    ["value"] = "b",
    ["type"] = "IDENTIFIER",
    ["col"] = 24,
  },
  [92] = {
    ["line"] = 23,
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [93] = {
    ["line"] = 23,
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
  },
  [94] = {
    ["line"] = 23,
    ["raw"] = "bnot",
    ["value"] = "bnot",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
  },
  [95] = {
    ["line"] = 23,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 18,
  },
  [96] = {
    ["line"] = 23,
    ["raw"] = "~",
    ["value"] = "~",
    ["type"] = "BXOR",
    ["col"] = 20,
  },
  [97] = {
    ["line"] = 23,
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 21,
  },
  [98] = {
    ["line"] = 24,
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [99] = {
    ["line"] = 24,
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
  },
  [100] = {
    ["line"] = 24,
    ["raw"] = "shl",
    ["value"] = "shl",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
  },
  [101] = {
    ["line"] = 24,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 17,
  },
  [102] = {
    ["line"] = 24,
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 19,
  },
  [103] = {
    ["line"] = 24,
    ["raw"] = "<<",
    ["value"] = "<<",
    ["type"] = "SHL",
    ["col"] = 21,
  },
  [104] = {
    ["line"] = 24,
    ["raw"] = "2",
    ["value"] = 2,
    ["type"] = "NUMBER",
    ["col"] = 24,
  },
  [105] = {
    ["line"] = 25,
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [106] = {
    ["line"] = 25,
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
  },
  [107] = {
    ["line"] = 25,
    ["raw"] = "shr",
    ["value"] = "shr",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
  },
  [108] = {
    ["line"] = 25,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 17,
  },
  [109] = {
    ["line"] = 25,
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 19,
  },
  [110] = {
    ["line"] = 25,
    ["raw"] = ">>",
    ["value"] = ">>",
    ["type"] = "SHR",
    ["col"] = 21,
  },
  [111] = {
    ["line"] = 25,
    ["raw"] = "1",
    ["value"] = 1,
    ["type"] = "NUMBER",
    ["col"] = 24,
  },
  [112] = {
    ["line"] = 26,
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [113] = {
    ["line"] = 26,
    ["raw"] = ".",
    ["value"] = ".",
    ["type"] = "DOT",
    ["col"] = 12,
  },
  [114] = {
    ["line"] = 26,
    ["raw"] = "idiv",
    ["value"] = "idiv",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
  },
  [115] = {
    ["line"] = 26,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 18,
  },
  [116] = {
    ["line"] = 26,
    ["raw"] = "a",
    ["value"] = "a",
    ["type"] = "IDENTIFIER",
    ["col"] = 20,
  },
  [117] = {
    ["line"] = 26,
    ["raw"] = "//",
    ["value"] = "//",
    ["type"] = "IDIV",
    ["col"] = 22,
  },
  [118] = {
    ["line"] = 26,
    ["raw"] = "b",
    ["value"] = "b",
    ["type"] = "IDENTIFIER",
    ["col"] = 25,
  },
  [119] = {
    ["line"] = 27,
    ["raw"] = "return",
    ["value"] = "return",
    ["type"] = "KEYWORD",
    ["col"] = 5,
  },
  [120] = {
    ["line"] = 27,
    ["raw"] = "results",
    ["value"] = "results",
    ["type"] = "IDENTIFIER",
    ["col"] = 12,
  },
  [121] = {
    ["line"] = 28,
    ["raw"] = "end",
    ["value"] = "end",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [122] = {
    ["line"] = 30,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [123] = {
    ["line"] = 30,
    ["raw"] = "complex",
    ["value"] = "complex",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
  },
  [124] = {
    ["line"] = 30,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 15,
  },
  [125] = {
    ["line"] = 30,
    ["raw"] = "(",
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["col"] = 17,
  },
  [126] = {
    ["line"] = 30,
    ["raw"] = "(",
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["col"] = 18,
  },
  [127] = {
    ["line"] = 30,
    ["raw"] = "0xFF",
    ["value"] = 255,
    ["type"] = "NUMBER",
    ["col"] = 19,
  },
  [128] = {
    ["line"] = 30,
    ["raw"] = "&",
    ["value"] = "&",
    ["type"] = "BAND",
    ["col"] = 24,
  },
  [129] = {
    ["line"] = 30,
    ["raw"] = "0x0F",
    ["value"] = 15,
    ["type"] = "NUMBER",
    ["col"] = 26,
  },
  [130] = {
    ["line"] = 30,
    ["raw"] = ")",
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["col"] = 30,
  },
  [131] = {
    ["line"] = 30,
    ["raw"] = "<<",
    ["value"] = "<<",
    ["type"] = "SHL",
    ["col"] = 32,
  },
  [132] = {
    ["line"] = 30,
    ["raw"] = "2",
    ["value"] = 2,
    ["type"] = "NUMBER",
    ["col"] = 35,
  },
  [133] = {
    ["line"] = 30,
    ["raw"] = ")",
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["col"] = 36,
  },
  [134] = {
    ["line"] = 30,
    ["raw"] = "|",
    ["value"] = "|",
    ["type"] = "BOR",
    ["col"] = 38,
  },
  [135] = {
    ["line"] = 30,
    ["raw"] = "(",
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["col"] = 40,
  },
  [136] = {
    ["line"] = 30,
    ["raw"] = "(",
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["col"] = 41,
  },
  [137] = {
    ["line"] = 30,
    ["raw"] = "0xF0",
    ["value"] = 240,
    ["type"] = "NUMBER",
    ["col"] = 42,
  },
  [138] = {
    ["line"] = 30,
    ["raw"] = "&",
    ["value"] = "&",
    ["type"] = "BAND",
    ["col"] = 47,
  },
  [139] = {
    ["line"] = 30,
    ["raw"] = "0x0F",
    ["value"] = 15,
    ["type"] = "NUMBER",
    ["col"] = 49,
  },
  [140] = {
    ["line"] = 30,
    ["raw"] = ")",
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["col"] = 53,
  },
  [141] = {
    ["line"] = 30,
    ["raw"] = ">>",
    ["value"] = ">>",
    ["type"] = "SHR",
    ["col"] = 55,
  },
  [142] = {
    ["line"] = 30,
    ["raw"] = "1",
    ["value"] = 1,
    ["type"] = "NUMBER",
    ["col"] = 58,
  },
  [143] = {
    ["line"] = 30,
    ["raw"] = ")",
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["col"] = 59,
  },
  [144] = {
    ["line"] = 32,
    ["raw"] = "local",
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [145] = {
    ["line"] = 32,
    ["raw"] = "pi_hex",
    ["value"] = "pi_hex",
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
  },
  [146] = {
    ["line"] = 32,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 14,
  },
  [147] = {
    ["line"] = 32,
    ["raw"] = "0x1.921fb54442d18p+1",
    ["value"] = 3.1415926535898,
    ["type"] = "NUMBER",
    ["col"] = 16,
  },
  [148] = {
    ["line"] = 34,
    ["raw"] = "return",
    ["value"] = "return",
    ["type"] = "KEYWORD",
    ["col"] = 1,
  },
  [149] = {
    ["line"] = 34,
    ["raw"] = "{",
    ["value"] = "{",
    ["type"] = "LBRACE",
    ["col"] = 8,
  },
  [150] = {
    ["line"] = 35,
    ["raw"] = "num",
    ["value"] = "num",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [151] = {
    ["line"] = 35,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 9,
  },
  [152] = {
    ["line"] = 35,
    ["raw"] = "num",
    ["value"] = "num",
    ["type"] = "IDENTIFIER",
    ["col"] = 11,
  },
  [153] = {
    ["line"] = 35,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 14,
  },
  [154] = {
    ["line"] = 36,
    ["raw"] = "float",
    ["value"] = "float",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [155] = {
    ["line"] = 36,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 11,
  },
  [156] = {
    ["line"] = 36,
    ["raw"] = "float",
    ["value"] = "float",
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
  },
  [157] = {
    ["line"] = 36,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 18,
  },
  [158] = {
    ["line"] = 37,
    ["raw"] = "hex",
    ["value"] = "hex",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [159] = {
    ["line"] = 37,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 9,
  },
  [160] = {
    ["line"] = 37,
    ["raw"] = "hex",
    ["value"] = "hex",
    ["type"] = "IDENTIFIER",
    ["col"] = 11,
  },
  [161] = {
    ["line"] = 37,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 14,
  },
  [162] = {
    ["line"] = 38,
    ["raw"] = "hex_float",
    ["value"] = "hex_float",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [163] = {
    ["line"] = 38,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 15,
  },
  [164] = {
    ["line"] = 38,
    ["raw"] = "hex_float",
    ["value"] = "hex_float",
    ["type"] = "IDENTIFIER",
    ["col"] = 17,
  },
  [165] = {
    ["line"] = 38,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 26,
  },
  [166] = {
    ["line"] = 39,
    ["raw"] = "pi_hex",
    ["value"] = "pi_hex",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [167] = {
    ["line"] = 39,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 12,
  },
  [168] = {
    ["line"] = 39,
    ["raw"] = "pi_hex",
    ["value"] = "pi_hex",
    ["type"] = "IDENTIFIER",
    ["col"] = 14,
  },
  [169] = {
    ["line"] = 39,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 20,
  },
  [170] = {
    ["line"] = 40,
    ["raw"] = "bitwise",
    ["value"] = "bitwise",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [171] = {
    ["line"] = 40,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 13,
  },
  [172] = {
    ["line"] = 40,
    ["raw"] = "{",
    ["value"] = "{",
    ["type"] = "LBRACE",
    ["col"] = 15,
  },
  [173] = {
    ["line"] = 41,
    ["raw"] = "band",
    ["value"] = "band",
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
  },
  [174] = {
    ["line"] = 41,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 14,
  },
  [175] = {
    ["line"] = 41,
    ["raw"] = "band",
    ["value"] = "band",
    ["type"] = "IDENTIFIER",
    ["col"] = 16,
  },
  [176] = {
    ["line"] = 41,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 20,
  },
  [177] = {
    ["line"] = 42,
    ["raw"] = "bor",
    ["value"] = "bor",
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
  },
  [178] = {
    ["line"] = 42,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 13,
  },
  [179] = {
    ["line"] = 42,
    ["raw"] = "bor",
    ["value"] = "bor",
    ["type"] = "IDENTIFIER",
    ["col"] = 15,
  },
  [180] = {
    ["line"] = 42,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 18,
  },
  [181] = {
    ["line"] = 43,
    ["raw"] = "bxor",
    ["value"] = "bxor",
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
  },
  [182] = {
    ["line"] = 43,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 14,
  },
  [183] = {
    ["line"] = 43,
    ["raw"] = "bxor",
    ["value"] = "bxor",
    ["type"] = "IDENTIFIER",
    ["col"] = 16,
  },
  [184] = {
    ["line"] = 43,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 20,
  },
  [185] = {
    ["line"] = 44,
    ["raw"] = "bnot",
    ["value"] = "bnot",
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
  },
  [186] = {
    ["line"] = 44,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 14,
  },
  [187] = {
    ["line"] = 44,
    ["raw"] = "bnot",
    ["value"] = "bnot",
    ["type"] = "IDENTIFIER",
    ["col"] = 16,
  },
  [188] = {
    ["line"] = 44,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 20,
  },
  [189] = {
    ["line"] = 45,
    ["raw"] = "shl",
    ["value"] = "shl",
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
  },
  [190] = {
    ["line"] = 45,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 13,
  },
  [191] = {
    ["line"] = 45,
    ["raw"] = "shl",
    ["value"] = "shl",
    ["type"] = "IDENTIFIER",
    ["col"] = 15,
  },
  [192] = {
    ["line"] = 45,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 18,
  },
  [193] = {
    ["line"] = 46,
    ["raw"] = "shr",
    ["value"] = "shr",
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
  },
  [194] = {
    ["line"] = 46,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 13,
  },
  [195] = {
    ["line"] = 46,
    ["raw"] = "shr",
    ["value"] = "shr",
    ["type"] = "IDENTIFIER",
    ["col"] = 15,
  },
  [196] = {
    ["line"] = 47,
    ["raw"] = "}",
    ["value"] = "}",
    ["type"] = "RBRACE",
    ["col"] = 5,
  },
  [197] = {
    ["line"] = 47,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 6,
  },
  [198] = {
    ["line"] = 48,
    ["raw"] = "idiv",
    ["value"] = "idiv",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [199] = {
    ["line"] = 48,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 10,
  },
  [200] = {
    ["line"] = 48,
    ["raw"] = "idiv",
    ["value"] = "idiv",
    ["type"] = "IDENTIFIER",
    ["col"] = 12,
  },
  [201] = {
    ["line"] = 48,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 16,
  },
  [202] = {
    ["line"] = 49,
    ["raw"] = "complex",
    ["value"] = "complex",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [203] = {
    ["line"] = 49,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 13,
  },
  [204] = {
    ["line"] = 49,
    ["raw"] = "complex",
    ["value"] = "complex",
    ["type"] = "IDENTIFIER",
    ["col"] = 15,
  },
  [205] = {
    ["line"] = 49,
    ["raw"] = ",",
    ["value"] = ",",
    ["type"] = "COMMA",
    ["col"] = 22,
  },
  [206] = {
    ["line"] = 50,
    ["raw"] = "lua_version",
    ["value"] = "lua_version",
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
  },
  [207] = {
    ["line"] = 50,
    ["raw"] = "=",
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["col"] = 17,
  },
  [208] = {
    ["line"] = 50,
    ["raw"] = "_VERSION",
    ["value"] = "_VERSION",
    ["type"] = "IDENTIFIER",
    ["col"] = 19,
  },
  [209] = {
    ["line"] = 51,
    ["raw"] = "}",
    ["value"] = "}",
    ["type"] = "RBRACE",
    ["col"] = 1,
  },
  [210] = {
    ["line"] = 52,
    ["raw"] = "",
    ["value"] = "",
    ["type"] = "EOF",
    ["col"] = 1,
  },
}
}