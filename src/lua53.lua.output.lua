return {
  ast = {
  ["comments"] = {
  },
  ["type"] = "Chunk",
  ["body"] = {
    [1] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 6,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 5,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = false,
          ["value"] = 42,
          ["type"] = "NumericLiteral",
          ["raw"] = "42",
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["name"] = "num",
          ["loc"] = {
            ["end"] = {
              ["line"] = 5,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 5,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
    },
    [2] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 7,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 6,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = false,
          ["value"] = 3.14159,
          ["type"] = "NumericLiteral",
          ["raw"] = "3.14159",
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["name"] = "float",
          ["loc"] = {
            ["end"] = {
              ["line"] = 6,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 6,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
    },
    [3] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 8,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 7,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = false,
          ["value"] = 255,
          ["type"] = "NumericLiteral",
          ["raw"] = "0xFF",
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["name"] = "hex",
          ["loc"] = {
            ["end"] = {
              ["line"] = 7,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 7,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
    },
    [4] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 11,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 8,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["value"] = 256.0,
          ["type"] = "NumericLiteral",
          ["raw"] = "0x1p8",
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["name"] = "hex_float",
          ["loc"] = {
            ["end"] = {
              ["line"] = 8,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 8,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
    },
    [5] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 12,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 11,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["operator"] = "&",
          ["type"] = "BinaryExpression",
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 15,
            ["type"] = "NumericLiteral",
            ["raw"] = "0x0F",
          },
          ["original_left"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 255,
            ["type"] = "NumericLiteral",
            ["raw"] = "0xFF",
          },
          ["lua53_feature"] = true,
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 255,
            ["type"] = "NumericLiteral",
            ["raw"] = "0xFF",
          },
          ["substituted_operator"] = "&",
          ["has_metamethod"] = true,
          ["negate_result"] = false,
          ["swap_operands"] = false,
          ["potential_metamethod"] = "__band",
          ["original_right"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 15,
            ["type"] = "NumericLiteral",
            ["raw"] = "0x0F",
          },
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["name"] = "band",
          ["loc"] = {
            ["end"] = {
              ["line"] = 11,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 11,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
    },
    [6] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 13,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 12,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["operator"] = "|",
          ["type"] = "BinaryExpression",
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 15,
            ["type"] = "NumericLiteral",
            ["raw"] = "0x0F",
          },
          ["original_left"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 240,
            ["type"] = "NumericLiteral",
            ["raw"] = "0xF0",
          },
          ["lua53_feature"] = true,
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 240,
            ["type"] = "NumericLiteral",
            ["raw"] = "0xF0",
          },
          ["substituted_operator"] = "|",
          ["has_metamethod"] = true,
          ["negate_result"] = false,
          ["swap_operands"] = false,
          ["potential_metamethod"] = "__bor",
          ["original_right"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 15,
            ["type"] = "NumericLiteral",
            ["raw"] = "0x0F",
          },
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["name"] = "bor",
          ["loc"] = {
            ["end"] = {
              ["line"] = 12,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 12,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
    },
    [7] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 14,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 13,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["operator"] = "~",
          ["type"] = "BinaryExpression",
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 15,
            ["type"] = "NumericLiteral",
            ["raw"] = "0x0F",
          },
          ["original_left"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 255,
            ["type"] = "NumericLiteral",
            ["raw"] = "0xFF",
          },
          ["lua53_feature"] = true,
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 255,
            ["type"] = "NumericLiteral",
            ["raw"] = "0xFF",
          },
          ["substituted_operator"] = "~",
          ["has_metamethod"] = true,
          ["negate_result"] = false,
          ["swap_operands"] = false,
          ["potential_metamethod"] = "__bxor",
          ["original_right"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 15,
            ["type"] = "NumericLiteral",
            ["raw"] = "0x0F",
          },
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["name"] = "bxor",
          ["loc"] = {
            ["end"] = {
              ["line"] = 13,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 13,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
    },
    [8] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 15,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 14,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["operator"] = "~",
          ["type"] = "UnaryExpression",
          ["has_metamethod"] = true,
          ["argument"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 15,
            ["type"] = "NumericLiteral",
            ["raw"] = "0x0F",
          },
          ["potential_metamethod"] = "__bnot",
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["name"] = "bnot",
          ["loc"] = {
            ["end"] = {
              ["line"] = 14,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 14,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
    },
    [9] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 16,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 15,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["operator"] = "<<",
          ["type"] = "BinaryExpression",
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 3,
            ["type"] = "NumericLiteral",
            ["raw"] = "3",
          },
          ["original_left"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 1,
            ["type"] = "NumericLiteral",
            ["raw"] = "1",
          },
          ["lua53_feature"] = true,
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 1,
            ["type"] = "NumericLiteral",
            ["raw"] = "1",
          },
          ["substituted_operator"] = "<<",
          ["has_metamethod"] = true,
          ["negate_result"] = false,
          ["swap_operands"] = false,
          ["potential_metamethod"] = "__shl",
          ["original_right"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 3,
            ["type"] = "NumericLiteral",
            ["raw"] = "3",
          },
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["name"] = "shl",
          ["loc"] = {
            ["end"] = {
              ["line"] = 15,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 15,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
    },
    [10] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 19,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 16,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["operator"] = ">>",
          ["type"] = "BinaryExpression",
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 3,
            ["type"] = "NumericLiteral",
            ["raw"] = "3",
          },
          ["original_left"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 128,
            ["type"] = "NumericLiteral",
            ["raw"] = "0x80",
          },
          ["lua53_feature"] = true,
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 128,
            ["type"] = "NumericLiteral",
            ["raw"] = "0x80",
          },
          ["substituted_operator"] = ">>",
          ["has_metamethod"] = true,
          ["negate_result"] = false,
          ["swap_operands"] = false,
          ["potential_metamethod"] = "__shr",
          ["original_right"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 3,
            ["type"] = "NumericLiteral",
            ["raw"] = "3",
          },
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["name"] = "shr",
          ["loc"] = {
            ["end"] = {
              ["line"] = 16,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 16,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
    },
    [11] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 22,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 19,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["operator"] = "//",
          ["type"] = "BinaryExpression",
          ["right"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 3,
            ["type"] = "NumericLiteral",
            ["raw"] = "3",
          },
          ["original_left"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 10,
            ["type"] = "NumericLiteral",
            ["raw"] = "10",
          },
          ["lua53_feature"] = true,
          ["left"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 10,
            ["type"] = "NumericLiteral",
            ["raw"] = "10",
          },
          ["substituted_operator"] = "//",
          ["has_metamethod"] = true,
          ["negate_result"] = false,
          ["swap_operands"] = false,
          ["potential_metamethod"] = "__idiv",
          ["original_right"] = {
            ["is_lua53_feature"] = false,
            ["value"] = 3,
            ["type"] = "NumericLiteral",
            ["raw"] = "3",
          },
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["name"] = "idiv",
          ["loc"] = {
            ["end"] = {
              ["line"] = 19,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 19,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
    },
    [12] = {
      ["type"] = "FunctionDeclaration",
      ["body"] = {
        [1] = {
          ["loc"] = {
            ["end"] = {
              ["line"] = 24,
              ["col"] = 5,
            },
            ["start"] = {
              ["line"] = 23,
              ["col"] = 5,
            },
          },
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
          ["type"] = "LocalStatement",
          ["variables"] = {
            [1] = {
              ["name"] = "results",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 23,
                  ["col"] = 11,
                },
                ["start"] = {
                  ["line"] = 23,
                  ["col"] = 11,
                },
              },
              ["type"] = "Identifier",
              ["attributes"] = {
              },
            },
          },
        },
        [2] = {
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["identifier"] = {
                ["name"] = "band",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 24,
                    ["col"] = 13,
                  },
                  ["start"] = {
                    ["line"] = 24,
                    ["col"] = 13,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 24,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 24,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["init"] = {
            [1] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "&",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["name"] = "b",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 24,
                    ["col"] = 24,
                  },
                  ["start"] = {
                    ["line"] = 24,
                    ["col"] = 24,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["original_left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 24,
                    ["col"] = 20,
                  },
                  ["start"] = {
                    ["line"] = 24,
                    ["col"] = 20,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 24,
                    ["col"] = 20,
                  },
                  ["start"] = {
                    ["line"] = 24,
                    ["col"] = 20,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["substituted_operator"] = "&",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__band",
              ["original_right"] = {
                ["name"] = "b",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 24,
                    ["col"] = 24,
                  },
                  ["start"] = {
                    ["line"] = 24,
                    ["col"] = 24,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
        },
        [3] = {
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["identifier"] = {
                ["name"] = "bor",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 25,
                    ["col"] = 13,
                  },
                  ["start"] = {
                    ["line"] = 25,
                    ["col"] = 13,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 25,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 25,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["init"] = {
            [1] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "|",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["name"] = "b",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 25,
                    ["col"] = 23,
                  },
                  ["start"] = {
                    ["line"] = 25,
                    ["col"] = 23,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["original_left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 25,
                    ["col"] = 19,
                  },
                  ["start"] = {
                    ["line"] = 25,
                    ["col"] = 19,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 25,
                    ["col"] = 19,
                  },
                  ["start"] = {
                    ["line"] = 25,
                    ["col"] = 19,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["substituted_operator"] = "|",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__bor",
              ["original_right"] = {
                ["name"] = "b",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 25,
                    ["col"] = 23,
                  },
                  ["start"] = {
                    ["line"] = 25,
                    ["col"] = 23,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
        },
        [4] = {
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["identifier"] = {
                ["name"] = "bxor",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 26,
                    ["col"] = 13,
                  },
                  ["start"] = {
                    ["line"] = 26,
                    ["col"] = 13,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 26,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 26,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["init"] = {
            [1] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "~",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["name"] = "b",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 26,
                    ["col"] = 24,
                  },
                  ["start"] = {
                    ["line"] = 26,
                    ["col"] = 24,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["original_left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 26,
                    ["col"] = 20,
                  },
                  ["start"] = {
                    ["line"] = 26,
                    ["col"] = 20,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 26,
                    ["col"] = 20,
                  },
                  ["start"] = {
                    ["line"] = 26,
                    ["col"] = 20,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["substituted_operator"] = "~",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__bxor",
              ["original_right"] = {
                ["name"] = "b",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 26,
                    ["col"] = 24,
                  },
                  ["start"] = {
                    ["line"] = 26,
                    ["col"] = 24,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
        },
        [5] = {
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["identifier"] = {
                ["name"] = "bnot",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 27,
                    ["col"] = 13,
                  },
                  ["start"] = {
                    ["line"] = 27,
                    ["col"] = 13,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 27,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 27,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["init"] = {
            [1] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "~",
              ["type"] = "UnaryExpression",
              ["has_metamethod"] = true,
              ["argument"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 27,
                    ["col"] = 21,
                  },
                  ["start"] = {
                    ["line"] = 27,
                    ["col"] = 21,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["potential_metamethod"] = "__bnot",
            },
          },
        },
        [6] = {
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["identifier"] = {
                ["name"] = "shl",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 28,
                    ["col"] = 13,
                  },
                  ["start"] = {
                    ["line"] = 28,
                    ["col"] = 13,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 28,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 28,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["init"] = {
            [1] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "<<",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 2,
                ["type"] = "NumericLiteral",
                ["raw"] = "2",
              },
              ["original_left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 28,
                    ["col"] = 19,
                  },
                  ["start"] = {
                    ["line"] = 28,
                    ["col"] = 19,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 28,
                    ["col"] = 19,
                  },
                  ["start"] = {
                    ["line"] = 28,
                    ["col"] = 19,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["substituted_operator"] = "<<",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__shl",
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 2,
                ["type"] = "NumericLiteral",
                ["raw"] = "2",
              },
            },
          },
        },
        [7] = {
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["identifier"] = {
                ["name"] = "shr",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 29,
                    ["col"] = 13,
                  },
                  ["start"] = {
                    ["line"] = 29,
                    ["col"] = 13,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 29,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 29,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["init"] = {
            [1] = {
              ["is_lua53_feature"] = true,
              ["operator"] = ">>",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 1,
                ["type"] = "NumericLiteral",
                ["raw"] = "1",
              },
              ["original_left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 29,
                    ["col"] = 19,
                  },
                  ["start"] = {
                    ["line"] = 29,
                    ["col"] = 19,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 29,
                    ["col"] = 19,
                  },
                  ["start"] = {
                    ["line"] = 29,
                    ["col"] = 19,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["substituted_operator"] = ">>",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__shr",
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 1,
                ["type"] = "NumericLiteral",
                ["raw"] = "1",
              },
            },
          },
        },
        [8] = {
          ["type"] = "AssignmentStatement",
          ["metamethod_ops"] = {
          },
          ["has_metamethods"] = false,
          ["variables"] = {
            [1] = {
              ["identifier"] = {
                ["name"] = "idiv",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 30,
                    ["col"] = 13,
                  },
                  ["start"] = {
                    ["line"] = 30,
                    ["col"] = 13,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
              ["base"] = {
                ["name"] = "results",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 30,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 30,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
          },
          ["init"] = {
            [1] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "//",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["name"] = "b",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 30,
                    ["col"] = 25,
                  },
                  ["start"] = {
                    ["line"] = 30,
                    ["col"] = 25,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["original_left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 30,
                    ["col"] = 20,
                  },
                  ["start"] = {
                    ["line"] = 30,
                    ["col"] = 20,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["name"] = "a",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 30,
                    ["col"] = 20,
                  },
                  ["start"] = {
                    ["line"] = 30,
                    ["col"] = 20,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["substituted_operator"] = "//",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__idiv",
              ["original_right"] = {
                ["name"] = "b",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 30,
                    ["col"] = 25,
                  },
                  ["start"] = {
                    ["line"] = 30,
                    ["col"] = 25,
                  },
                },
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
              ["name"] = "results",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 31,
                  ["col"] = 12,
                },
                ["start"] = {
                  ["line"] = 31,
                  ["col"] = 12,
                },
              },
              ["type"] = "Identifier",
              ["attributes"] = {
              },
            },
          },
        },
      },
      ["isLocal"] = true,
      ["parameters"] = {
        [1] = {
          ["name"] = "a",
          ["loc"] = {
            ["end"] = {
              ["line"] = 22,
              ["col"] = 28,
            },
            ["start"] = {
              ["line"] = 22,
              ["col"] = 28,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
        [2] = {
          ["name"] = "b",
          ["loc"] = {
            ["end"] = {
              ["line"] = 22,
              ["col"] = 31,
            },
            ["start"] = {
              ["line"] = 22,
              ["col"] = 31,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
      ["identifier"] = {
        ["name"] = "bitwise_ops",
        ["loc"] = {
          ["end"] = {
            ["line"] = 22,
            ["col"] = 16,
          },
          ["start"] = {
            ["line"] = 22,
            ["col"] = 16,
          },
        },
        ["type"] = "Identifier",
        ["attributes"] = {
        },
      },
    },
    [13] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 38,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 35,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["operator"] = "|",
          ["type"] = "BinaryExpression",
          ["right"] = {
            ["is_lua53_feature"] = true,
            ["operator"] = ">>",
            ["type"] = "BinaryExpression",
            ["right"] = {
              ["is_lua53_feature"] = false,
              ["value"] = 1,
              ["type"] = "NumericLiteral",
              ["raw"] = "1",
            },
            ["original_left"] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "&",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 240,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xF0",
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 240,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xF0",
              },
              ["substituted_operator"] = "&",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__band",
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
            },
            ["lua53_feature"] = true,
            ["left"] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "&",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 240,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xF0",
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 240,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xF0",
              },
              ["substituted_operator"] = "&",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__band",
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
            },
            ["substituted_operator"] = ">>",
            ["has_metamethod"] = true,
            ["negate_result"] = false,
            ["swap_operands"] = false,
            ["potential_metamethod"] = "__shr",
            ["original_right"] = {
              ["is_lua53_feature"] = false,
              ["value"] = 1,
              ["type"] = "NumericLiteral",
              ["raw"] = "1",
            },
          },
          ["original_left"] = {
            ["is_lua53_feature"] = true,
            ["operator"] = "<<",
            ["type"] = "BinaryExpression",
            ["right"] = {
              ["is_lua53_feature"] = false,
              ["value"] = 2,
              ["type"] = "NumericLiteral",
              ["raw"] = "2",
            },
            ["original_left"] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "&",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 255,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xFF",
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 255,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xFF",
              },
              ["substituted_operator"] = "&",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__band",
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
            },
            ["lua53_feature"] = true,
            ["left"] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "&",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 255,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xFF",
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 255,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xFF",
              },
              ["substituted_operator"] = "&",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__band",
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
            },
            ["substituted_operator"] = "<<",
            ["has_metamethod"] = true,
            ["negate_result"] = false,
            ["swap_operands"] = false,
            ["potential_metamethod"] = "__shl",
            ["original_right"] = {
              ["is_lua53_feature"] = false,
              ["value"] = 2,
              ["type"] = "NumericLiteral",
              ["raw"] = "2",
            },
          },
          ["lua53_feature"] = true,
          ["left"] = {
            ["is_lua53_feature"] = true,
            ["operator"] = "<<",
            ["type"] = "BinaryExpression",
            ["right"] = {
              ["is_lua53_feature"] = false,
              ["value"] = 2,
              ["type"] = "NumericLiteral",
              ["raw"] = "2",
            },
            ["original_left"] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "&",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 255,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xFF",
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 255,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xFF",
              },
              ["substituted_operator"] = "&",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__band",
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
            },
            ["lua53_feature"] = true,
            ["left"] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "&",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 255,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xFF",
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 255,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xFF",
              },
              ["substituted_operator"] = "&",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__band",
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
            },
            ["substituted_operator"] = "<<",
            ["has_metamethod"] = true,
            ["negate_result"] = false,
            ["swap_operands"] = false,
            ["potential_metamethod"] = "__shl",
            ["original_right"] = {
              ["is_lua53_feature"] = false,
              ["value"] = 2,
              ["type"] = "NumericLiteral",
              ["raw"] = "2",
            },
          },
          ["substituted_operator"] = "|",
          ["has_metamethod"] = true,
          ["negate_result"] = false,
          ["swap_operands"] = false,
          ["potential_metamethod"] = "__bor",
          ["original_right"] = {
            ["is_lua53_feature"] = true,
            ["operator"] = ">>",
            ["type"] = "BinaryExpression",
            ["right"] = {
              ["is_lua53_feature"] = false,
              ["value"] = 1,
              ["type"] = "NumericLiteral",
              ["raw"] = "1",
            },
            ["original_left"] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "&",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 240,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xF0",
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 240,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xF0",
              },
              ["substituted_operator"] = "&",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__band",
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
            },
            ["lua53_feature"] = true,
            ["left"] = {
              ["is_lua53_feature"] = true,
              ["operator"] = "&",
              ["type"] = "BinaryExpression",
              ["right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
              ["original_left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 240,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xF0",
              },
              ["lua53_feature"] = true,
              ["left"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 240,
                ["type"] = "NumericLiteral",
                ["raw"] = "0xF0",
              },
              ["substituted_operator"] = "&",
              ["has_metamethod"] = true,
              ["negate_result"] = false,
              ["swap_operands"] = false,
              ["potential_metamethod"] = "__band",
              ["original_right"] = {
                ["is_lua53_feature"] = false,
                ["value"] = 15,
                ["type"] = "NumericLiteral",
                ["raw"] = "0x0F",
              },
            },
            ["substituted_operator"] = ">>",
            ["has_metamethod"] = true,
            ["negate_result"] = false,
            ["swap_operands"] = false,
            ["potential_metamethod"] = "__shr",
            ["original_right"] = {
              ["is_lua53_feature"] = false,
              ["value"] = 1,
              ["type"] = "NumericLiteral",
              ["raw"] = "1",
            },
          },
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["name"] = "complex",
          ["loc"] = {
            ["end"] = {
              ["line"] = 35,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 35,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
        },
      },
    },
    [14] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 41,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 38,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["is_lua53_feature"] = true,
          ["value"] = 3.1415926535898,
          ["type"] = "NumericLiteral",
          ["raw"] = "0x1.921fb54442d18p+1",
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["name"] = "pi_hex",
          ["loc"] = {
            ["end"] = {
              ["line"] = 38,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 38,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
          ["attributes"] = {
          },
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
                ["name"] = "num",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 42,
                    ["col"] = 11,
                  },
                  ["start"] = {
                    ["line"] = 42,
                    ["col"] = 11,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
                ["name"] = "num",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 42,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 42,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [2] = {
              ["value"] = {
                ["name"] = "float",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 43,
                    ["col"] = 13,
                  },
                  ["start"] = {
                    ["line"] = 43,
                    ["col"] = 13,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
                ["name"] = "float",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 43,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 43,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [3] = {
              ["value"] = {
                ["name"] = "hex",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 44,
                    ["col"] = 11,
                  },
                  ["start"] = {
                    ["line"] = 44,
                    ["col"] = 11,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
                ["name"] = "hex",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 44,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 44,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [4] = {
              ["value"] = {
                ["name"] = "hex_float",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 45,
                    ["col"] = 17,
                  },
                  ["start"] = {
                    ["line"] = 45,
                    ["col"] = 17,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
                ["name"] = "hex_float",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 45,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 45,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [5] = {
              ["value"] = {
                ["name"] = "pi_hex",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 46,
                    ["col"] = 14,
                  },
                  ["start"] = {
                    ["line"] = 46,
                    ["col"] = 14,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
                ["name"] = "pi_hex",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 46,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 46,
                    ["col"] = 5,
                  },
                },
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
                      ["name"] = "band",
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 48,
                          ["col"] = 16,
                        },
                        ["start"] = {
                          ["line"] = 48,
                          ["col"] = 16,
                        },
                      },
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                    ["type"] = "TableKeyString",
                    ["key"] = {
                      ["name"] = "band",
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 48,
                          ["col"] = 9,
                        },
                        ["start"] = {
                          ["line"] = 48,
                          ["col"] = 9,
                        },
                      },
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                  },
                  [2] = {
                    ["value"] = {
                      ["name"] = "bor",
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 49,
                          ["col"] = 15,
                        },
                        ["start"] = {
                          ["line"] = 49,
                          ["col"] = 15,
                        },
                      },
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                    ["type"] = "TableKeyString",
                    ["key"] = {
                      ["name"] = "bor",
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 49,
                          ["col"] = 9,
                        },
                        ["start"] = {
                          ["line"] = 49,
                          ["col"] = 9,
                        },
                      },
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                  },
                  [3] = {
                    ["value"] = {
                      ["name"] = "bxor",
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 50,
                          ["col"] = 16,
                        },
                        ["start"] = {
                          ["line"] = 50,
                          ["col"] = 16,
                        },
                      },
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                    ["type"] = "TableKeyString",
                    ["key"] = {
                      ["name"] = "bxor",
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 50,
                          ["col"] = 9,
                        },
                        ["start"] = {
                          ["line"] = 50,
                          ["col"] = 9,
                        },
                      },
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                  },
                  [4] = {
                    ["value"] = {
                      ["name"] = "bnot",
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 51,
                          ["col"] = 16,
                        },
                        ["start"] = {
                          ["line"] = 51,
                          ["col"] = 16,
                        },
                      },
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                    ["type"] = "TableKeyString",
                    ["key"] = {
                      ["name"] = "bnot",
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 51,
                          ["col"] = 9,
                        },
                        ["start"] = {
                          ["line"] = 51,
                          ["col"] = 9,
                        },
                      },
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                  },
                  [5] = {
                    ["value"] = {
                      ["name"] = "shl",
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 52,
                          ["col"] = 15,
                        },
                        ["start"] = {
                          ["line"] = 52,
                          ["col"] = 15,
                        },
                      },
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                    ["type"] = "TableKeyString",
                    ["key"] = {
                      ["name"] = "shl",
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 52,
                          ["col"] = 9,
                        },
                        ["start"] = {
                          ["line"] = 52,
                          ["col"] = 9,
                        },
                      },
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                  },
                  [6] = {
                    ["value"] = {
                      ["name"] = "shr",
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 53,
                          ["col"] = 15,
                        },
                        ["start"] = {
                          ["line"] = 53,
                          ["col"] = 15,
                        },
                      },
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                    ["type"] = "TableKeyString",
                    ["key"] = {
                      ["name"] = "shr",
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 53,
                          ["col"] = 9,
                        },
                        ["start"] = {
                          ["line"] = 53,
                          ["col"] = 9,
                        },
                      },
                      ["type"] = "Identifier",
                      ["attributes"] = {
                      },
                    },
                  },
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
                ["name"] = "bitwise",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 47,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 47,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [7] = {
              ["value"] = {
                ["name"] = "idiv",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 55,
                    ["col"] = 12,
                  },
                  ["start"] = {
                    ["line"] = 55,
                    ["col"] = 12,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
                ["name"] = "idiv",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 55,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 55,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [8] = {
              ["value"] = {
                ["name"] = "complex",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 56,
                    ["col"] = 15,
                  },
                  ["start"] = {
                    ["line"] = 56,
                    ["col"] = 15,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
                ["name"] = "complex",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 56,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 56,
                    ["col"] = 5,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
            },
            [9] = {
              ["value"] = {
                ["name"] = "_VERSION",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 57,
                    ["col"] = 19,
                  },
                  ["start"] = {
                    ["line"] = 57,
                    ["col"] = 19,
                  },
                },
                ["type"] = "Identifier",
                ["attributes"] = {
                },
              },
              ["type"] = "TableKeyString",
              ["key"] = {
                ["name"] = "lua_version",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 57,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 57,
                    ["col"] = 5,
                  },
                },
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
},
  tokens = {
  [1] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 5,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [2] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 5,
    ["value"] = "num",
    ["raw"] = "num",
  },
  [3] = {
    ["type"] = "ASSIGN",
    ["col"] = 11,
    ["line"] = 5,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [4] = {
    ["type"] = "NUMBER",
    ["col"] = 13,
    ["line"] = 5,
    ["value"] = 42,
    ["raw"] = "42",
  },
  [5] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 6,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [6] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 6,
    ["value"] = "float",
    ["raw"] = "float",
  },
  [7] = {
    ["type"] = "ASSIGN",
    ["col"] = 13,
    ["line"] = 6,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [8] = {
    ["type"] = "NUMBER",
    ["col"] = 15,
    ["line"] = 6,
    ["value"] = 3.14159,
    ["raw"] = "3.14159",
  },
  [9] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 7,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [10] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 7,
    ["value"] = "hex",
    ["raw"] = "hex",
  },
  [11] = {
    ["type"] = "ASSIGN",
    ["col"] = 11,
    ["line"] = 7,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [12] = {
    ["type"] = "NUMBER",
    ["col"] = 13,
    ["line"] = 7,
    ["value"] = 255,
    ["raw"] = "0xFF",
  },
  [13] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 8,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [14] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 8,
    ["value"] = "hex_float",
    ["raw"] = "hex_float",
  },
  [15] = {
    ["type"] = "ASSIGN",
    ["col"] = 17,
    ["line"] = 8,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [16] = {
    ["type"] = "NUMBER",
    ["col"] = 19,
    ["line"] = 8,
    ["value"] = 256.0,
    ["raw"] = "0x1p8",
  },
  [17] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 11,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [18] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 11,
    ["value"] = "band",
    ["raw"] = "band",
  },
  [19] = {
    ["type"] = "ASSIGN",
    ["col"] = 12,
    ["line"] = 11,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [20] = {
    ["type"] = "NUMBER",
    ["col"] = 14,
    ["line"] = 11,
    ["value"] = 255,
    ["raw"] = "0xFF",
  },
  [21] = {
    ["type"] = "BAND",
    ["col"] = 19,
    ["line"] = 11,
    ["value"] = "&",
    ["raw"] = "&",
  },
  [22] = {
    ["type"] = "NUMBER",
    ["col"] = 21,
    ["line"] = 11,
    ["value"] = 15,
    ["raw"] = "0x0F",
  },
  [23] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 12,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [24] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 12,
    ["value"] = "bor",
    ["raw"] = "bor",
  },
  [25] = {
    ["type"] = "ASSIGN",
    ["col"] = 11,
    ["line"] = 12,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [26] = {
    ["type"] = "NUMBER",
    ["col"] = 13,
    ["line"] = 12,
    ["value"] = 240,
    ["raw"] = "0xF0",
  },
  [27] = {
    ["type"] = "BOR",
    ["col"] = 18,
    ["line"] = 12,
    ["value"] = "|",
    ["raw"] = "|",
  },
  [28] = {
    ["type"] = "NUMBER",
    ["col"] = 20,
    ["line"] = 12,
    ["value"] = 15,
    ["raw"] = "0x0F",
  },
  [29] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 13,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [30] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 13,
    ["value"] = "bxor",
    ["raw"] = "bxor",
  },
  [31] = {
    ["type"] = "ASSIGN",
    ["col"] = 12,
    ["line"] = 13,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [32] = {
    ["type"] = "NUMBER",
    ["col"] = 14,
    ["line"] = 13,
    ["value"] = 255,
    ["raw"] = "0xFF",
  },
  [33] = {
    ["type"] = "BXOR",
    ["col"] = 19,
    ["line"] = 13,
    ["value"] = "~",
    ["raw"] = "~",
  },
  [34] = {
    ["type"] = "NUMBER",
    ["col"] = 21,
    ["line"] = 13,
    ["value"] = 15,
    ["raw"] = "0x0F",
  },
  [35] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 14,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [36] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 14,
    ["value"] = "bnot",
    ["raw"] = "bnot",
  },
  [37] = {
    ["type"] = "ASSIGN",
    ["col"] = 12,
    ["line"] = 14,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [38] = {
    ["type"] = "BXOR",
    ["col"] = 14,
    ["line"] = 14,
    ["value"] = "~",
    ["raw"] = "~",
  },
  [39] = {
    ["type"] = "NUMBER",
    ["col"] = 15,
    ["line"] = 14,
    ["value"] = 15,
    ["raw"] = "0x0F",
  },
  [40] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 15,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [41] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 15,
    ["value"] = "shl",
    ["raw"] = "shl",
  },
  [42] = {
    ["type"] = "ASSIGN",
    ["col"] = 11,
    ["line"] = 15,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [43] = {
    ["type"] = "NUMBER",
    ["col"] = 13,
    ["line"] = 15,
    ["value"] = 1,
    ["raw"] = "1",
  },
  [44] = {
    ["type"] = "SHL",
    ["col"] = 15,
    ["line"] = 15,
    ["value"] = "<<",
    ["raw"] = "<<",
  },
  [45] = {
    ["type"] = "NUMBER",
    ["col"] = 18,
    ["line"] = 15,
    ["value"] = 3,
    ["raw"] = "3",
  },
  [46] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 16,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [47] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 16,
    ["value"] = "shr",
    ["raw"] = "shr",
  },
  [48] = {
    ["type"] = "ASSIGN",
    ["col"] = 11,
    ["line"] = 16,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [49] = {
    ["type"] = "NUMBER",
    ["col"] = 13,
    ["line"] = 16,
    ["value"] = 128,
    ["raw"] = "0x80",
  },
  [50] = {
    ["type"] = "SHR",
    ["col"] = 18,
    ["line"] = 16,
    ["value"] = ">>",
    ["raw"] = ">>",
  },
  [51] = {
    ["type"] = "NUMBER",
    ["col"] = 21,
    ["line"] = 16,
    ["value"] = 3,
    ["raw"] = "3",
  },
  [52] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 19,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [53] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 19,
    ["value"] = "idiv",
    ["raw"] = "idiv",
  },
  [54] = {
    ["type"] = "ASSIGN",
    ["col"] = 12,
    ["line"] = 19,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [55] = {
    ["type"] = "NUMBER",
    ["col"] = 14,
    ["line"] = 19,
    ["value"] = 10,
    ["raw"] = "10",
  },
  [56] = {
    ["type"] = "IDIV",
    ["col"] = 17,
    ["line"] = 19,
    ["value"] = "//",
    ["raw"] = "//",
  },
  [57] = {
    ["type"] = "NUMBER",
    ["col"] = 20,
    ["line"] = 19,
    ["value"] = 3,
    ["raw"] = "3",
  },
  [58] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 22,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [59] = {
    ["type"] = "KEYWORD",
    ["col"] = 7,
    ["line"] = 22,
    ["value"] = "function",
    ["raw"] = "function",
  },
  [60] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 16,
    ["line"] = 22,
    ["value"] = "bitwise_ops",
    ["raw"] = "bitwise_ops",
  },
  [61] = {
    ["type"] = "LPAREN",
    ["col"] = 27,
    ["line"] = 22,
    ["value"] = "(",
    ["raw"] = "(",
  },
  [62] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 28,
    ["line"] = 22,
    ["value"] = "a",
    ["raw"] = "a",
  },
  [63] = {
    ["type"] = "COMMA",
    ["col"] = 29,
    ["line"] = 22,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [64] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 31,
    ["line"] = 22,
    ["value"] = "b",
    ["raw"] = "b",
  },
  [65] = {
    ["type"] = "RPAREN",
    ["col"] = 32,
    ["line"] = 22,
    ["value"] = ")",
    ["raw"] = ")",
  },
  [66] = {
    ["type"] = "KEYWORD",
    ["col"] = 5,
    ["line"] = 23,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [67] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 11,
    ["line"] = 23,
    ["value"] = "results",
    ["raw"] = "results",
  },
  [68] = {
    ["type"] = "ASSIGN",
    ["col"] = 19,
    ["line"] = 23,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [69] = {
    ["type"] = "LBRACE",
    ["col"] = 21,
    ["line"] = 23,
    ["value"] = "{",
    ["raw"] = "{",
  },
  [70] = {
    ["type"] = "RBRACE",
    ["col"] = 22,
    ["line"] = 23,
    ["value"] = "}",
    ["raw"] = "}",
  },
  [71] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 24,
    ["value"] = "results",
    ["raw"] = "results",
  },
  [72] = {
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 24,
    ["value"] = ".",
    ["raw"] = ".",
  },
  [73] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 24,
    ["value"] = "band",
    ["raw"] = "band",
  },
  [74] = {
    ["type"] = "ASSIGN",
    ["col"] = 18,
    ["line"] = 24,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [75] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 20,
    ["line"] = 24,
    ["value"] = "a",
    ["raw"] = "a",
  },
  [76] = {
    ["type"] = "BAND",
    ["col"] = 22,
    ["line"] = 24,
    ["value"] = "&",
    ["raw"] = "&",
  },
  [77] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 24,
    ["line"] = 24,
    ["value"] = "b",
    ["raw"] = "b",
  },
  [78] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 25,
    ["value"] = "results",
    ["raw"] = "results",
  },
  [79] = {
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 25,
    ["value"] = ".",
    ["raw"] = ".",
  },
  [80] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 25,
    ["value"] = "bor",
    ["raw"] = "bor",
  },
  [81] = {
    ["type"] = "ASSIGN",
    ["col"] = 17,
    ["line"] = 25,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [82] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 19,
    ["line"] = 25,
    ["value"] = "a",
    ["raw"] = "a",
  },
  [83] = {
    ["type"] = "BOR",
    ["col"] = 21,
    ["line"] = 25,
    ["value"] = "|",
    ["raw"] = "|",
  },
  [84] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 23,
    ["line"] = 25,
    ["value"] = "b",
    ["raw"] = "b",
  },
  [85] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 26,
    ["value"] = "results",
    ["raw"] = "results",
  },
  [86] = {
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 26,
    ["value"] = ".",
    ["raw"] = ".",
  },
  [87] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 26,
    ["value"] = "bxor",
    ["raw"] = "bxor",
  },
  [88] = {
    ["type"] = "ASSIGN",
    ["col"] = 18,
    ["line"] = 26,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [89] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 20,
    ["line"] = 26,
    ["value"] = "a",
    ["raw"] = "a",
  },
  [90] = {
    ["type"] = "BXOR",
    ["col"] = 22,
    ["line"] = 26,
    ["value"] = "~",
    ["raw"] = "~",
  },
  [91] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 24,
    ["line"] = 26,
    ["value"] = "b",
    ["raw"] = "b",
  },
  [92] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 27,
    ["value"] = "results",
    ["raw"] = "results",
  },
  [93] = {
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 27,
    ["value"] = ".",
    ["raw"] = ".",
  },
  [94] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 27,
    ["value"] = "bnot",
    ["raw"] = "bnot",
  },
  [95] = {
    ["type"] = "ASSIGN",
    ["col"] = 18,
    ["line"] = 27,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [96] = {
    ["type"] = "BXOR",
    ["col"] = 20,
    ["line"] = 27,
    ["value"] = "~",
    ["raw"] = "~",
  },
  [97] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 21,
    ["line"] = 27,
    ["value"] = "a",
    ["raw"] = "a",
  },
  [98] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 28,
    ["value"] = "results",
    ["raw"] = "results",
  },
  [99] = {
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 28,
    ["value"] = ".",
    ["raw"] = ".",
  },
  [100] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 28,
    ["value"] = "shl",
    ["raw"] = "shl",
  },
  [101] = {
    ["type"] = "ASSIGN",
    ["col"] = 17,
    ["line"] = 28,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [102] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 19,
    ["line"] = 28,
    ["value"] = "a",
    ["raw"] = "a",
  },
  [103] = {
    ["type"] = "SHL",
    ["col"] = 21,
    ["line"] = 28,
    ["value"] = "<<",
    ["raw"] = "<<",
  },
  [104] = {
    ["type"] = "NUMBER",
    ["col"] = 24,
    ["line"] = 28,
    ["value"] = 2,
    ["raw"] = "2",
  },
  [105] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 29,
    ["value"] = "results",
    ["raw"] = "results",
  },
  [106] = {
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 29,
    ["value"] = ".",
    ["raw"] = ".",
  },
  [107] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 29,
    ["value"] = "shr",
    ["raw"] = "shr",
  },
  [108] = {
    ["type"] = "ASSIGN",
    ["col"] = 17,
    ["line"] = 29,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [109] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 19,
    ["line"] = 29,
    ["value"] = "a",
    ["raw"] = "a",
  },
  [110] = {
    ["type"] = "SHR",
    ["col"] = 21,
    ["line"] = 29,
    ["value"] = ">>",
    ["raw"] = ">>",
  },
  [111] = {
    ["type"] = "NUMBER",
    ["col"] = 24,
    ["line"] = 29,
    ["value"] = 1,
    ["raw"] = "1",
  },
  [112] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 30,
    ["value"] = "results",
    ["raw"] = "results",
  },
  [113] = {
    ["type"] = "DOT",
    ["col"] = 12,
    ["line"] = 30,
    ["value"] = ".",
    ["raw"] = ".",
  },
  [114] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 30,
    ["value"] = "idiv",
    ["raw"] = "idiv",
  },
  [115] = {
    ["type"] = "ASSIGN",
    ["col"] = 18,
    ["line"] = 30,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [116] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 20,
    ["line"] = 30,
    ["value"] = "a",
    ["raw"] = "a",
  },
  [117] = {
    ["type"] = "IDIV",
    ["col"] = 22,
    ["line"] = 30,
    ["value"] = "//",
    ["raw"] = "//",
  },
  [118] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 25,
    ["line"] = 30,
    ["value"] = "b",
    ["raw"] = "b",
  },
  [119] = {
    ["type"] = "KEYWORD",
    ["col"] = 5,
    ["line"] = 31,
    ["value"] = "return",
    ["raw"] = "return",
  },
  [120] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 12,
    ["line"] = 31,
    ["value"] = "results",
    ["raw"] = "results",
  },
  [121] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 32,
    ["value"] = "end",
    ["raw"] = "end",
  },
  [122] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 35,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [123] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 35,
    ["value"] = "complex",
    ["raw"] = "complex",
  },
  [124] = {
    ["type"] = "ASSIGN",
    ["col"] = 15,
    ["line"] = 35,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [125] = {
    ["type"] = "LPAREN",
    ["col"] = 17,
    ["line"] = 35,
    ["value"] = "(",
    ["raw"] = "(",
  },
  [126] = {
    ["type"] = "LPAREN",
    ["col"] = 18,
    ["line"] = 35,
    ["value"] = "(",
    ["raw"] = "(",
  },
  [127] = {
    ["type"] = "NUMBER",
    ["col"] = 19,
    ["line"] = 35,
    ["value"] = 255,
    ["raw"] = "0xFF",
  },
  [128] = {
    ["type"] = "BAND",
    ["col"] = 24,
    ["line"] = 35,
    ["value"] = "&",
    ["raw"] = "&",
  },
  [129] = {
    ["type"] = "NUMBER",
    ["col"] = 26,
    ["line"] = 35,
    ["value"] = 15,
    ["raw"] = "0x0F",
  },
  [130] = {
    ["type"] = "RPAREN",
    ["col"] = 30,
    ["line"] = 35,
    ["value"] = ")",
    ["raw"] = ")",
  },
  [131] = {
    ["type"] = "SHL",
    ["col"] = 32,
    ["line"] = 35,
    ["value"] = "<<",
    ["raw"] = "<<",
  },
  [132] = {
    ["type"] = "NUMBER",
    ["col"] = 35,
    ["line"] = 35,
    ["value"] = 2,
    ["raw"] = "2",
  },
  [133] = {
    ["type"] = "RPAREN",
    ["col"] = 36,
    ["line"] = 35,
    ["value"] = ")",
    ["raw"] = ")",
  },
  [134] = {
    ["type"] = "BOR",
    ["col"] = 38,
    ["line"] = 35,
    ["value"] = "|",
    ["raw"] = "|",
  },
  [135] = {
    ["type"] = "LPAREN",
    ["col"] = 40,
    ["line"] = 35,
    ["value"] = "(",
    ["raw"] = "(",
  },
  [136] = {
    ["type"] = "LPAREN",
    ["col"] = 41,
    ["line"] = 35,
    ["value"] = "(",
    ["raw"] = "(",
  },
  [137] = {
    ["type"] = "NUMBER",
    ["col"] = 42,
    ["line"] = 35,
    ["value"] = 240,
    ["raw"] = "0xF0",
  },
  [138] = {
    ["type"] = "BAND",
    ["col"] = 47,
    ["line"] = 35,
    ["value"] = "&",
    ["raw"] = "&",
  },
  [139] = {
    ["type"] = "NUMBER",
    ["col"] = 49,
    ["line"] = 35,
    ["value"] = 15,
    ["raw"] = "0x0F",
  },
  [140] = {
    ["type"] = "RPAREN",
    ["col"] = 53,
    ["line"] = 35,
    ["value"] = ")",
    ["raw"] = ")",
  },
  [141] = {
    ["type"] = "SHR",
    ["col"] = 55,
    ["line"] = 35,
    ["value"] = ">>",
    ["raw"] = ">>",
  },
  [142] = {
    ["type"] = "NUMBER",
    ["col"] = 58,
    ["line"] = 35,
    ["value"] = 1,
    ["raw"] = "1",
  },
  [143] = {
    ["type"] = "RPAREN",
    ["col"] = 59,
    ["line"] = 35,
    ["value"] = ")",
    ["raw"] = ")",
  },
  [144] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 38,
    ["value"] = "local",
    ["raw"] = "local",
  },
  [145] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 7,
    ["line"] = 38,
    ["value"] = "pi_hex",
    ["raw"] = "pi_hex",
  },
  [146] = {
    ["type"] = "ASSIGN",
    ["col"] = 14,
    ["line"] = 38,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [147] = {
    ["type"] = "NUMBER",
    ["col"] = 16,
    ["line"] = 38,
    ["value"] = 3.1415926535898,
    ["raw"] = "0x1.921fb54442d18p+1",
  },
  [148] = {
    ["type"] = "KEYWORD",
    ["col"] = 1,
    ["line"] = 41,
    ["value"] = "return",
    ["raw"] = "return",
  },
  [149] = {
    ["type"] = "LBRACE",
    ["col"] = 8,
    ["line"] = 41,
    ["value"] = "{",
    ["raw"] = "{",
  },
  [150] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 42,
    ["value"] = "num",
    ["raw"] = "num",
  },
  [151] = {
    ["type"] = "ASSIGN",
    ["col"] = 9,
    ["line"] = 42,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [152] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 11,
    ["line"] = 42,
    ["value"] = "num",
    ["raw"] = "num",
  },
  [153] = {
    ["type"] = "COMMA",
    ["col"] = 14,
    ["line"] = 42,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [154] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 43,
    ["value"] = "float",
    ["raw"] = "float",
  },
  [155] = {
    ["type"] = "ASSIGN",
    ["col"] = 11,
    ["line"] = 43,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [156] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 13,
    ["line"] = 43,
    ["value"] = "float",
    ["raw"] = "float",
  },
  [157] = {
    ["type"] = "COMMA",
    ["col"] = 18,
    ["line"] = 43,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [158] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 44,
    ["value"] = "hex",
    ["raw"] = "hex",
  },
  [159] = {
    ["type"] = "ASSIGN",
    ["col"] = 9,
    ["line"] = 44,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [160] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 11,
    ["line"] = 44,
    ["value"] = "hex",
    ["raw"] = "hex",
  },
  [161] = {
    ["type"] = "COMMA",
    ["col"] = 14,
    ["line"] = 44,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [162] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 45,
    ["value"] = "hex_float",
    ["raw"] = "hex_float",
  },
  [163] = {
    ["type"] = "ASSIGN",
    ["col"] = 15,
    ["line"] = 45,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [164] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 17,
    ["line"] = 45,
    ["value"] = "hex_float",
    ["raw"] = "hex_float",
  },
  [165] = {
    ["type"] = "COMMA",
    ["col"] = 26,
    ["line"] = 45,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [166] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 46,
    ["value"] = "pi_hex",
    ["raw"] = "pi_hex",
  },
  [167] = {
    ["type"] = "ASSIGN",
    ["col"] = 12,
    ["line"] = 46,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [168] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 14,
    ["line"] = 46,
    ["value"] = "pi_hex",
    ["raw"] = "pi_hex",
  },
  [169] = {
    ["type"] = "COMMA",
    ["col"] = 20,
    ["line"] = 46,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [170] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 47,
    ["value"] = "bitwise",
    ["raw"] = "bitwise",
  },
  [171] = {
    ["type"] = "ASSIGN",
    ["col"] = 13,
    ["line"] = 47,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [172] = {
    ["type"] = "LBRACE",
    ["col"] = 15,
    ["line"] = 47,
    ["value"] = "{",
    ["raw"] = "{",
  },
  [173] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
    ["line"] = 48,
    ["value"] = "band",
    ["raw"] = "band",
  },
  [174] = {
    ["type"] = "ASSIGN",
    ["col"] = 14,
    ["line"] = 48,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [175] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 16,
    ["line"] = 48,
    ["value"] = "band",
    ["raw"] = "band",
  },
  [176] = {
    ["type"] = "COMMA",
    ["col"] = 20,
    ["line"] = 48,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [177] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
    ["line"] = 49,
    ["value"] = "bor",
    ["raw"] = "bor",
  },
  [178] = {
    ["type"] = "ASSIGN",
    ["col"] = 13,
    ["line"] = 49,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [179] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 15,
    ["line"] = 49,
    ["value"] = "bor",
    ["raw"] = "bor",
  },
  [180] = {
    ["type"] = "COMMA",
    ["col"] = 18,
    ["line"] = 49,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [181] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
    ["line"] = 50,
    ["value"] = "bxor",
    ["raw"] = "bxor",
  },
  [182] = {
    ["type"] = "ASSIGN",
    ["col"] = 14,
    ["line"] = 50,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [183] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 16,
    ["line"] = 50,
    ["value"] = "bxor",
    ["raw"] = "bxor",
  },
  [184] = {
    ["type"] = "COMMA",
    ["col"] = 20,
    ["line"] = 50,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [185] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
    ["line"] = 51,
    ["value"] = "bnot",
    ["raw"] = "bnot",
  },
  [186] = {
    ["type"] = "ASSIGN",
    ["col"] = 14,
    ["line"] = 51,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [187] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 16,
    ["line"] = 51,
    ["value"] = "bnot",
    ["raw"] = "bnot",
  },
  [188] = {
    ["type"] = "COMMA",
    ["col"] = 20,
    ["line"] = 51,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [189] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
    ["line"] = 52,
    ["value"] = "shl",
    ["raw"] = "shl",
  },
  [190] = {
    ["type"] = "ASSIGN",
    ["col"] = 13,
    ["line"] = 52,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [191] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 15,
    ["line"] = 52,
    ["value"] = "shl",
    ["raw"] = "shl",
  },
  [192] = {
    ["type"] = "COMMA",
    ["col"] = 18,
    ["line"] = 52,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [193] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 9,
    ["line"] = 53,
    ["value"] = "shr",
    ["raw"] = "shr",
  },
  [194] = {
    ["type"] = "ASSIGN",
    ["col"] = 13,
    ["line"] = 53,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [195] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 15,
    ["line"] = 53,
    ["value"] = "shr",
    ["raw"] = "shr",
  },
  [196] = {
    ["type"] = "RBRACE",
    ["col"] = 5,
    ["line"] = 54,
    ["value"] = "}",
    ["raw"] = "}",
  },
  [197] = {
    ["type"] = "COMMA",
    ["col"] = 6,
    ["line"] = 54,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [198] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 55,
    ["value"] = "idiv",
    ["raw"] = "idiv",
  },
  [199] = {
    ["type"] = "ASSIGN",
    ["col"] = 10,
    ["line"] = 55,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [200] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 12,
    ["line"] = 55,
    ["value"] = "idiv",
    ["raw"] = "idiv",
  },
  [201] = {
    ["type"] = "COMMA",
    ["col"] = 16,
    ["line"] = 55,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [202] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 56,
    ["value"] = "complex",
    ["raw"] = "complex",
  },
  [203] = {
    ["type"] = "ASSIGN",
    ["col"] = 13,
    ["line"] = 56,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [204] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 15,
    ["line"] = 56,
    ["value"] = "complex",
    ["raw"] = "complex",
  },
  [205] = {
    ["type"] = "COMMA",
    ["col"] = 22,
    ["line"] = 56,
    ["value"] = ",",
    ["raw"] = ",",
  },
  [206] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 5,
    ["line"] = 57,
    ["value"] = "lua_version",
    ["raw"] = "lua_version",
  },
  [207] = {
    ["type"] = "ASSIGN",
    ["col"] = 17,
    ["line"] = 57,
    ["value"] = "=",
    ["raw"] = "=",
  },
  [208] = {
    ["type"] = "IDENTIFIER",
    ["col"] = 19,
    ["line"] = 57,
    ["value"] = "_VERSION",
    ["raw"] = "_VERSION",
  },
  [209] = {
    ["type"] = "RBRACE",
    ["col"] = 1,
    ["line"] = 58,
    ["value"] = "}",
    ["raw"] = "}",
  },
  [210] = {
    ["type"] = "EOF",
    ["col"] = 1,
    ["line"] = 59,
    ["value"] = "",
    ["raw"] = "",
  },
}
}