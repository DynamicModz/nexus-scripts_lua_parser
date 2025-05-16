return {
  ast = {
  ["comments"] = {
  },
  ["type"] = "Chunk",
  ["body"] = {
    [1] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 2,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 1,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["value"] = "User",
          ["type"] = "StringLiteral",
          ["raw"] = "\"User\"",
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["attributes"] = {
          },
          ["name"] = "name",
          ["type"] = "Identifier",
          ["loc"] = {
            ["end"] = {
              ["line"] = 1,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 1,
              ["col"] = 7,
            },
          },
        },
      },
    },
    [2] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 3,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 2,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["value"] = 25,
          ["type"] = "NumericLiteral",
          ["raw"] = "25",
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["attributes"] = {
          },
          ["name"] = "age",
          ["type"] = "Identifier",
          ["loc"] = {
            ["end"] = {
              ["line"] = 2,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 2,
              ["col"] = 7,
            },
          },
        },
      },
    },
    [3] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 4,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 3,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["value"] = 19.99,
          ["type"] = "NumericLiteral",
          ["raw"] = "19.99",
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["attributes"] = {
          },
          ["name"] = "price",
          ["type"] = "Identifier",
          ["loc"] = {
            ["end"] = {
              ["line"] = 3,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 3,
              ["col"] = 7,
            },
          },
        },
      },
    },
    [4] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 6,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 4,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["type"] = "BooleanLiteral",
          ["value"] = true,
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["attributes"] = {
          },
          ["name"] = "is_active",
          ["type"] = "Identifier",
          ["loc"] = {
            ["end"] = {
              ["line"] = 4,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 4,
              ["col"] = 7,
            },
          },
        },
      },
    },
    [5] = {
      ["type"] = "CallStatement",
      ["expression"] = {
        ["arguments"] = {
          [1] = {
            ["value"] = "Hello, welcome to Lua!",
            ["type"] = "StringLiteral",
            ["raw"] = "\"Hello, welcome to Lua!\"",
          },
        },
        ["base"] = {
          ["attributes"] = {
          },
          ["name"] = "print",
          ["type"] = "Identifier",
          ["loc"] = {
            ["end"] = {
              ["line"] = 6,
              ["col"] = 1,
            },
            ["start"] = {
              ["line"] = 6,
              ["col"] = 1,
            },
          },
        },
        ["is_method_call"] = false,
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
        ["potential_metamethod"] = "__call",
      },
    },
    [6] = {
      ["type"] = "CallStatement",
      ["expression"] = {
        ["arguments"] = {
          [1] = {
            ["original_left"] = {
              ["value"] = "Name: ",
              ["type"] = "StringLiteral",
              ["raw"] = "\"Name: \"",
            },
            ["negate_result"] = false,
            ["original_right"] = {
              ["attributes"] = {
              },
              ["name"] = "name",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 7,
                  ["col"] = 19,
                },
                ["start"] = {
                  ["line"] = 7,
                  ["col"] = 19,
                },
              },
            },
            ["left"] = {
              ["value"] = "Name: ",
              ["type"] = "StringLiteral",
              ["raw"] = "\"Name: \"",
            },
            ["operator"] = "..",
            ["potential_metamethod"] = "__concat",
            ["substituted_operator"] = "..",
            ["swap_operands"] = false,
            ["right"] = {
              ["attributes"] = {
              },
              ["name"] = "name",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 7,
                  ["col"] = 19,
                },
                ["start"] = {
                  ["line"] = 7,
                  ["col"] = 19,
                },
              },
            },
            ["type"] = "BinaryExpression",
            ["has_metamethod"] = true,
          },
        },
        ["base"] = {
          ["attributes"] = {
          },
          ["name"] = "print",
          ["type"] = "Identifier",
          ["loc"] = {
            ["end"] = {
              ["line"] = 7,
              ["col"] = 1,
            },
            ["start"] = {
              ["line"] = 7,
              ["col"] = 1,
            },
          },
        },
        ["is_method_call"] = false,
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
        ["potential_metamethod"] = "__call",
      },
    },
    [7] = {
      ["type"] = "CallStatement",
      ["expression"] = {
        ["arguments"] = {
          [1] = {
            ["original_left"] = {
              ["value"] = "Age: ",
              ["type"] = "StringLiteral",
              ["raw"] = "\"Age: \"",
            },
            ["negate_result"] = false,
            ["original_right"] = {
              ["attributes"] = {
              },
              ["name"] = "age",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 8,
                  ["col"] = 18,
                },
                ["start"] = {
                  ["line"] = 8,
                  ["col"] = 18,
                },
              },
            },
            ["left"] = {
              ["value"] = "Age: ",
              ["type"] = "StringLiteral",
              ["raw"] = "\"Age: \"",
            },
            ["operator"] = "..",
            ["potential_metamethod"] = "__concat",
            ["substituted_operator"] = "..",
            ["swap_operands"] = false,
            ["right"] = {
              ["attributes"] = {
              },
              ["name"] = "age",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 8,
                  ["col"] = 18,
                },
                ["start"] = {
                  ["line"] = 8,
                  ["col"] = 18,
                },
              },
            },
            ["type"] = "BinaryExpression",
            ["has_metamethod"] = true,
          },
        },
        ["base"] = {
          ["attributes"] = {
          },
          ["name"] = "print",
          ["type"] = "Identifier",
          ["loc"] = {
            ["end"] = {
              ["line"] = 8,
              ["col"] = 1,
            },
            ["start"] = {
              ["line"] = 8,
              ["col"] = 1,
            },
          },
        },
        ["is_method_call"] = false,
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
        ["potential_metamethod"] = "__call",
      },
    },
    [8] = {
      ["type"] = "CallStatement",
      ["expression"] = {
        ["arguments"] = {
          [1] = {
            ["original_left"] = {
              ["value"] = "Price: $",
              ["type"] = "StringLiteral",
              ["raw"] = "\"Price: $\"",
            },
            ["negate_result"] = false,
            ["original_right"] = {
              ["attributes"] = {
              },
              ["name"] = "price",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 9,
                  ["col"] = 21,
                },
                ["start"] = {
                  ["line"] = 9,
                  ["col"] = 21,
                },
              },
            },
            ["left"] = {
              ["value"] = "Price: $",
              ["type"] = "StringLiteral",
              ["raw"] = "\"Price: $\"",
            },
            ["operator"] = "..",
            ["potential_metamethod"] = "__concat",
            ["substituted_operator"] = "..",
            ["swap_operands"] = false,
            ["right"] = {
              ["attributes"] = {
              },
              ["name"] = "price",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 9,
                  ["col"] = 21,
                },
                ["start"] = {
                  ["line"] = 9,
                  ["col"] = 21,
                },
              },
            },
            ["type"] = "BinaryExpression",
            ["has_metamethod"] = true,
          },
        },
        ["base"] = {
          ["attributes"] = {
          },
          ["name"] = "print",
          ["type"] = "Identifier",
          ["loc"] = {
            ["end"] = {
              ["line"] = 9,
              ["col"] = 1,
            },
            ["start"] = {
              ["line"] = 9,
              ["col"] = 1,
            },
          },
        },
        ["is_method_call"] = false,
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
        ["potential_metamethod"] = "__call",
      },
    },
    [9] = {
      ["type"] = "IfStatement",
      ["clauses"] = {
        [1] = {
          ["body"] = {
            [1] = {
              ["type"] = "CallStatement",
              ["expression"] = {
                ["arguments"] = {
                  [1] = {
                    ["value"] = "Status: Active",
                    ["type"] = "StringLiteral",
                    ["raw"] = "\"Status: Active\"",
                  },
                },
                ["base"] = {
                  ["attributes"] = {
                  },
                  ["name"] = "print",
                  ["type"] = "Identifier",
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 12,
                      ["col"] = 5,
                    },
                    ["start"] = {
                      ["line"] = 12,
                      ["col"] = 5,
                    },
                  },
                },
                ["is_method_call"] = false,
                ["has_metamethod"] = true,
                ["type"] = "CallExpression",
                ["potential_metamethod"] = "__call",
              },
            },
          },
          ["type"] = "IfClause",
          ["condition"] = {
            ["attributes"] = {
            },
            ["name"] = "is_active",
            ["type"] = "Identifier",
            ["loc"] = {
              ["end"] = {
                ["line"] = 11,
                ["col"] = 4,
              },
              ["start"] = {
                ["line"] = 11,
                ["col"] = 4,
              },
            },
          },
        },
        [2] = {
          ["type"] = "ElseClause",
          ["body"] = {
            [1] = {
              ["type"] = "CallStatement",
              ["expression"] = {
                ["arguments"] = {
                  [1] = {
                    ["value"] = "Status: Inactive",
                    ["type"] = "StringLiteral",
                    ["raw"] = "\"Status: Inactive\"",
                  },
                },
                ["base"] = {
                  ["attributes"] = {
                  },
                  ["name"] = "print",
                  ["type"] = "Identifier",
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 14,
                      ["col"] = 5,
                    },
                    ["start"] = {
                      ["line"] = 14,
                      ["col"] = 5,
                    },
                  },
                },
                ["is_method_call"] = false,
                ["has_metamethod"] = true,
                ["type"] = "CallExpression",
                ["potential_metamethod"] = "__call",
              },
            },
          },
        },
      },
    },
    [10] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 18,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 17,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["value"] = 0.08,
          ["type"] = "NumericLiteral",
          ["raw"] = "0.08",
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["attributes"] = {
          },
          ["name"] = "tax_rate",
          ["type"] = "Identifier",
          ["loc"] = {
            ["end"] = {
              ["line"] = 17,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 17,
              ["col"] = 7,
            },
          },
        },
      },
    },
    [11] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 19,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 18,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["original_left"] = {
            ["attributes"] = {
            },
            ["name"] = "price",
            ["type"] = "Identifier",
            ["loc"] = {
              ["end"] = {
                ["line"] = 18,
                ["col"] = 21,
              },
              ["start"] = {
                ["line"] = 18,
                ["col"] = 21,
              },
            },
          },
          ["negate_result"] = false,
          ["original_right"] = {
            ["original_left"] = {
              ["attributes"] = {
              },
              ["name"] = "price",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 18,
                  ["col"] = 30,
                },
                ["start"] = {
                  ["line"] = 18,
                  ["col"] = 30,
                },
              },
            },
            ["negate_result"] = false,
            ["original_right"] = {
              ["attributes"] = {
              },
              ["name"] = "tax_rate",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 18,
                  ["col"] = 38,
                },
                ["start"] = {
                  ["line"] = 18,
                  ["col"] = 38,
                },
              },
            },
            ["left"] = {
              ["attributes"] = {
              },
              ["name"] = "price",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 18,
                  ["col"] = 30,
                },
                ["start"] = {
                  ["line"] = 18,
                  ["col"] = 30,
                },
              },
            },
            ["operator"] = "*",
            ["potential_metamethod"] = "__mul",
            ["substituted_operator"] = "*",
            ["swap_operands"] = false,
            ["right"] = {
              ["attributes"] = {
              },
              ["name"] = "tax_rate",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 18,
                  ["col"] = 38,
                },
                ["start"] = {
                  ["line"] = 18,
                  ["col"] = 38,
                },
              },
            },
            ["type"] = "BinaryExpression",
            ["has_metamethod"] = true,
          },
          ["left"] = {
            ["attributes"] = {
            },
            ["name"] = "price",
            ["type"] = "Identifier",
            ["loc"] = {
              ["end"] = {
                ["line"] = 18,
                ["col"] = 21,
              },
              ["start"] = {
                ["line"] = 18,
                ["col"] = 21,
              },
            },
          },
          ["operator"] = "+",
          ["potential_metamethod"] = "__add",
          ["substituted_operator"] = "+",
          ["swap_operands"] = false,
          ["right"] = {
            ["original_left"] = {
              ["attributes"] = {
              },
              ["name"] = "price",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 18,
                  ["col"] = 30,
                },
                ["start"] = {
                  ["line"] = 18,
                  ["col"] = 30,
                },
              },
            },
            ["negate_result"] = false,
            ["original_right"] = {
              ["attributes"] = {
              },
              ["name"] = "tax_rate",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 18,
                  ["col"] = 38,
                },
                ["start"] = {
                  ["line"] = 18,
                  ["col"] = 38,
                },
              },
            },
            ["left"] = {
              ["attributes"] = {
              },
              ["name"] = "price",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 18,
                  ["col"] = 30,
                },
                ["start"] = {
                  ["line"] = 18,
                  ["col"] = 30,
                },
              },
            },
            ["operator"] = "*",
            ["potential_metamethod"] = "__mul",
            ["substituted_operator"] = "*",
            ["swap_operands"] = false,
            ["right"] = {
              ["attributes"] = {
              },
              ["name"] = "tax_rate",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 18,
                  ["col"] = 38,
                },
                ["start"] = {
                  ["line"] = 18,
                  ["col"] = 38,
                },
              },
            },
            ["type"] = "BinaryExpression",
            ["has_metamethod"] = true,
          },
          ["type"] = "BinaryExpression",
          ["has_metamethod"] = true,
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["attributes"] = {
          },
          ["name"] = "total_price",
          ["type"] = "Identifier",
          ["loc"] = {
            ["end"] = {
              ["line"] = 18,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 18,
              ["col"] = 7,
            },
          },
        },
      },
    },
    [12] = {
      ["type"] = "CallStatement",
      ["expression"] = {
        ["arguments"] = {
          [1] = {
            ["original_left"] = {
              ["value"] = "Total price with tax: $",
              ["type"] = "StringLiteral",
              ["raw"] = "\"Total price with tax: $\"",
            },
            ["negate_result"] = false,
            ["original_right"] = {
              ["attributes"] = {
              },
              ["name"] = "total_price",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 19,
                  ["col"] = 36,
                },
                ["start"] = {
                  ["line"] = 19,
                  ["col"] = 36,
                },
              },
            },
            ["left"] = {
              ["value"] = "Total price with tax: $",
              ["type"] = "StringLiteral",
              ["raw"] = "\"Total price with tax: $\"",
            },
            ["operator"] = "..",
            ["potential_metamethod"] = "__concat",
            ["substituted_operator"] = "..",
            ["swap_operands"] = false,
            ["right"] = {
              ["attributes"] = {
              },
              ["name"] = "total_price",
              ["type"] = "Identifier",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 19,
                  ["col"] = 36,
                },
                ["start"] = {
                  ["line"] = 19,
                  ["col"] = 36,
                },
              },
            },
            ["type"] = "BinaryExpression",
            ["has_metamethod"] = true,
          },
        },
        ["base"] = {
          ["attributes"] = {
          },
          ["name"] = "print",
          ["type"] = "Identifier",
          ["loc"] = {
            ["end"] = {
              ["line"] = 19,
              ["col"] = 1,
            },
            ["start"] = {
              ["line"] = 19,
              ["col"] = 1,
            },
          },
        },
        ["is_method_call"] = false,
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
        ["potential_metamethod"] = "__call",
      },
    },
    [13] = {
      ["loc"] = {
        ["end"] = {
          ["line"] = 22,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 21,
          ["col"] = 1,
        },
      },
      ["init"] = {
        [1] = {
          ["original_left"] = {
            ["value"] = "Have a ",
            ["type"] = "StringLiteral",
            ["raw"] = "\"Have a \"",
          },
          ["negate_result"] = false,
          ["original_right"] = {
            ["original_left"] = {
              ["value"] = "nice ",
              ["type"] = "StringLiteral",
              ["raw"] = "\"nice \"",
            },
            ["negate_result"] = false,
            ["original_right"] = {
              ["value"] = "day!",
              ["type"] = "StringLiteral",
              ["raw"] = "\"day!\"",
            },
            ["left"] = {
              ["value"] = "nice ",
              ["type"] = "StringLiteral",
              ["raw"] = "\"nice \"",
            },
            ["operator"] = "..",
            ["potential_metamethod"] = "__concat",
            ["substituted_operator"] = "..",
            ["swap_operands"] = false,
            ["right"] = {
              ["value"] = "day!",
              ["type"] = "StringLiteral",
              ["raw"] = "\"day!\"",
            },
            ["type"] = "BinaryExpression",
            ["has_metamethod"] = true,
          },
          ["left"] = {
            ["value"] = "Have a ",
            ["type"] = "StringLiteral",
            ["raw"] = "\"Have a \"",
          },
          ["operator"] = "..",
          ["potential_metamethod"] = "__concat",
          ["substituted_operator"] = "..",
          ["swap_operands"] = false,
          ["right"] = {
            ["original_left"] = {
              ["value"] = "nice ",
              ["type"] = "StringLiteral",
              ["raw"] = "\"nice \"",
            },
            ["negate_result"] = false,
            ["original_right"] = {
              ["value"] = "day!",
              ["type"] = "StringLiteral",
              ["raw"] = "\"day!\"",
            },
            ["left"] = {
              ["value"] = "nice ",
              ["type"] = "StringLiteral",
              ["raw"] = "\"nice \"",
            },
            ["operator"] = "..",
            ["potential_metamethod"] = "__concat",
            ["substituted_operator"] = "..",
            ["swap_operands"] = false,
            ["right"] = {
              ["value"] = "day!",
              ["type"] = "StringLiteral",
              ["raw"] = "\"day!\"",
            },
            ["type"] = "BinaryExpression",
            ["has_metamethod"] = true,
          },
          ["type"] = "BinaryExpression",
          ["has_metamethod"] = true,
        },
      },
      ["type"] = "LocalStatement",
      ["variables"] = {
        [1] = {
          ["attributes"] = {
          },
          ["name"] = "greeting",
          ["type"] = "Identifier",
          ["loc"] = {
            ["end"] = {
              ["line"] = 21,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 21,
              ["col"] = 7,
            },
          },
        },
      },
    },
    [14] = {
      ["type"] = "CallStatement",
      ["expression"] = {
        ["arguments"] = {
          [1] = {
            ["attributes"] = {
            },
            ["name"] = "greeting",
            ["type"] = "Identifier",
            ["loc"] = {
              ["end"] = {
                ["line"] = 22,
                ["col"] = 7,
              },
              ["start"] = {
                ["line"] = 22,
                ["col"] = 7,
              },
            },
          },
        },
        ["base"] = {
          ["attributes"] = {
          },
          ["name"] = "print",
          ["type"] = "Identifier",
          ["loc"] = {
            ["end"] = {
              ["line"] = 22,
              ["col"] = 1,
            },
            ["start"] = {
              ["line"] = 22,
              ["col"] = 1,
            },
          },
        },
        ["is_method_call"] = false,
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
        ["potential_metamethod"] = "__call",
      },
    },
  },
},
  tokens = {
  [1] = {
    ["raw"] = "local",
    ["col"] = 1,
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["line"] = 1,
  },
  [2] = {
    ["raw"] = "name",
    ["col"] = 7,
    ["value"] = "name",
    ["type"] = "IDENTIFIER",
    ["line"] = 1,
  },
  [3] = {
    ["raw"] = "=",
    ["col"] = 12,
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["line"] = 1,
  },
  [4] = {
    ["raw"] = "\"User\"",
    ["col"] = 14,
    ["value"] = "User",
    ["type"] = "STRING",
    ["line"] = 1,
  },
  [5] = {
    ["raw"] = "local",
    ["col"] = 1,
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["line"] = 2,
  },
  [6] = {
    ["raw"] = "age",
    ["col"] = 7,
    ["value"] = "age",
    ["type"] = "IDENTIFIER",
    ["line"] = 2,
  },
  [7] = {
    ["raw"] = "=",
    ["col"] = 11,
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["line"] = 2,
  },
  [8] = {
    ["raw"] = "25",
    ["col"] = 13,
    ["value"] = 25,
    ["type"] = "NUMBER",
    ["line"] = 2,
  },
  [9] = {
    ["raw"] = "local",
    ["col"] = 1,
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["line"] = 3,
  },
  [10] = {
    ["raw"] = "price",
    ["col"] = 7,
    ["value"] = "price",
    ["type"] = "IDENTIFIER",
    ["line"] = 3,
  },
  [11] = {
    ["raw"] = "=",
    ["col"] = 13,
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["line"] = 3,
  },
  [12] = {
    ["raw"] = "19.99",
    ["col"] = 15,
    ["value"] = 19.99,
    ["type"] = "NUMBER",
    ["line"] = 3,
  },
  [13] = {
    ["raw"] = "local",
    ["col"] = 1,
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["line"] = 4,
  },
  [14] = {
    ["raw"] = "is_active",
    ["col"] = 7,
    ["value"] = "is_active",
    ["type"] = "IDENTIFIER",
    ["line"] = 4,
  },
  [15] = {
    ["raw"] = "=",
    ["col"] = 17,
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["line"] = 4,
  },
  [16] = {
    ["raw"] = "true",
    ["col"] = 19,
    ["value"] = true,
    ["type"] = "TRUE",
    ["line"] = 4,
  },
  [17] = {
    ["raw"] = "print",
    ["col"] = 1,
    ["value"] = "print",
    ["type"] = "IDENTIFIER",
    ["line"] = 6,
  },
  [18] = {
    ["raw"] = "(",
    ["col"] = 6,
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["line"] = 6,
  },
  [19] = {
    ["raw"] = "\"Hello, welcome to Lua!\"",
    ["col"] = 7,
    ["value"] = "Hello, welcome to Lua!",
    ["type"] = "STRING",
    ["line"] = 6,
  },
  [20] = {
    ["raw"] = ")",
    ["col"] = 31,
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["line"] = 6,
  },
  [21] = {
    ["raw"] = "print",
    ["col"] = 1,
    ["value"] = "print",
    ["type"] = "IDENTIFIER",
    ["line"] = 7,
  },
  [22] = {
    ["raw"] = "(",
    ["col"] = 6,
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["line"] = 7,
  },
  [23] = {
    ["raw"] = "\"Name: \"",
    ["col"] = 7,
    ["value"] = "Name: ",
    ["type"] = "STRING",
    ["line"] = 7,
  },
  [24] = {
    ["raw"] = "..",
    ["col"] = 16,
    ["value"] = "..",
    ["type"] = "CONCAT",
    ["line"] = 7,
  },
  [25] = {
    ["raw"] = "name",
    ["col"] = 19,
    ["value"] = "name",
    ["type"] = "IDENTIFIER",
    ["line"] = 7,
  },
  [26] = {
    ["raw"] = ")",
    ["col"] = 23,
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["line"] = 7,
  },
  [27] = {
    ["raw"] = "print",
    ["col"] = 1,
    ["value"] = "print",
    ["type"] = "IDENTIFIER",
    ["line"] = 8,
  },
  [28] = {
    ["raw"] = "(",
    ["col"] = 6,
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["line"] = 8,
  },
  [29] = {
    ["raw"] = "\"Age: \"",
    ["col"] = 7,
    ["value"] = "Age: ",
    ["type"] = "STRING",
    ["line"] = 8,
  },
  [30] = {
    ["raw"] = "..",
    ["col"] = 15,
    ["value"] = "..",
    ["type"] = "CONCAT",
    ["line"] = 8,
  },
  [31] = {
    ["raw"] = "age",
    ["col"] = 18,
    ["value"] = "age",
    ["type"] = "IDENTIFIER",
    ["line"] = 8,
  },
  [32] = {
    ["raw"] = ")",
    ["col"] = 21,
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["line"] = 8,
  },
  [33] = {
    ["raw"] = "print",
    ["col"] = 1,
    ["value"] = "print",
    ["type"] = "IDENTIFIER",
    ["line"] = 9,
  },
  [34] = {
    ["raw"] = "(",
    ["col"] = 6,
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["line"] = 9,
  },
  [35] = {
    ["raw"] = "\"Price: $\"",
    ["col"] = 7,
    ["value"] = "Price: $",
    ["type"] = "STRING",
    ["line"] = 9,
  },
  [36] = {
    ["raw"] = "..",
    ["col"] = 18,
    ["value"] = "..",
    ["type"] = "CONCAT",
    ["line"] = 9,
  },
  [37] = {
    ["raw"] = "price",
    ["col"] = 21,
    ["value"] = "price",
    ["type"] = "IDENTIFIER",
    ["line"] = 9,
  },
  [38] = {
    ["raw"] = ")",
    ["col"] = 26,
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["line"] = 9,
  },
  [39] = {
    ["raw"] = "if",
    ["col"] = 1,
    ["value"] = "if",
    ["type"] = "KEYWORD",
    ["line"] = 11,
  },
  [40] = {
    ["raw"] = "is_active",
    ["col"] = 4,
    ["value"] = "is_active",
    ["type"] = "IDENTIFIER",
    ["line"] = 11,
  },
  [41] = {
    ["raw"] = "then",
    ["col"] = 14,
    ["value"] = "then",
    ["type"] = "KEYWORD",
    ["line"] = 11,
  },
  [42] = {
    ["raw"] = "print",
    ["col"] = 5,
    ["value"] = "print",
    ["type"] = "IDENTIFIER",
    ["line"] = 12,
  },
  [43] = {
    ["raw"] = "(",
    ["col"] = 10,
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["line"] = 12,
  },
  [44] = {
    ["raw"] = "\"Status: Active\"",
    ["col"] = 11,
    ["value"] = "Status: Active",
    ["type"] = "STRING",
    ["line"] = 12,
  },
  [45] = {
    ["raw"] = ")",
    ["col"] = 27,
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["line"] = 12,
  },
  [46] = {
    ["raw"] = "else",
    ["col"] = 1,
    ["value"] = "else",
    ["type"] = "KEYWORD",
    ["line"] = 13,
  },
  [47] = {
    ["raw"] = "print",
    ["col"] = 5,
    ["value"] = "print",
    ["type"] = "IDENTIFIER",
    ["line"] = 14,
  },
  [48] = {
    ["raw"] = "(",
    ["col"] = 10,
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["line"] = 14,
  },
  [49] = {
    ["raw"] = "\"Status: Inactive\"",
    ["col"] = 11,
    ["value"] = "Status: Inactive",
    ["type"] = "STRING",
    ["line"] = 14,
  },
  [50] = {
    ["raw"] = ")",
    ["col"] = 29,
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["line"] = 14,
  },
  [51] = {
    ["raw"] = "end",
    ["col"] = 1,
    ["value"] = "end",
    ["type"] = "KEYWORD",
    ["line"] = 15,
  },
  [52] = {
    ["raw"] = "local",
    ["col"] = 1,
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["line"] = 17,
  },
  [53] = {
    ["raw"] = "tax_rate",
    ["col"] = 7,
    ["value"] = "tax_rate",
    ["type"] = "IDENTIFIER",
    ["line"] = 17,
  },
  [54] = {
    ["raw"] = "=",
    ["col"] = 16,
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["line"] = 17,
  },
  [55] = {
    ["raw"] = "0.08",
    ["col"] = 18,
    ["value"] = 0.08,
    ["type"] = "NUMBER",
    ["line"] = 17,
  },
  [56] = {
    ["raw"] = "local",
    ["col"] = 1,
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["line"] = 18,
  },
  [57] = {
    ["raw"] = "total_price",
    ["col"] = 7,
    ["value"] = "total_price",
    ["type"] = "IDENTIFIER",
    ["line"] = 18,
  },
  [58] = {
    ["raw"] = "=",
    ["col"] = 19,
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["line"] = 18,
  },
  [59] = {
    ["raw"] = "price",
    ["col"] = 21,
    ["value"] = "price",
    ["type"] = "IDENTIFIER",
    ["line"] = 18,
  },
  [60] = {
    ["raw"] = "+",
    ["col"] = 27,
    ["value"] = "+",
    ["type"] = "ADD",
    ["line"] = 18,
  },
  [61] = {
    ["raw"] = "(",
    ["col"] = 29,
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["line"] = 18,
  },
  [62] = {
    ["raw"] = "price",
    ["col"] = 30,
    ["value"] = "price",
    ["type"] = "IDENTIFIER",
    ["line"] = 18,
  },
  [63] = {
    ["raw"] = "*",
    ["col"] = 36,
    ["value"] = "*",
    ["type"] = "MUL",
    ["line"] = 18,
  },
  [64] = {
    ["raw"] = "tax_rate",
    ["col"] = 38,
    ["value"] = "tax_rate",
    ["type"] = "IDENTIFIER",
    ["line"] = 18,
  },
  [65] = {
    ["raw"] = ")",
    ["col"] = 46,
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["line"] = 18,
  },
  [66] = {
    ["raw"] = "print",
    ["col"] = 1,
    ["value"] = "print",
    ["type"] = "IDENTIFIER",
    ["line"] = 19,
  },
  [67] = {
    ["raw"] = "(",
    ["col"] = 6,
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["line"] = 19,
  },
  [68] = {
    ["raw"] = "\"Total price with tax: $\"",
    ["col"] = 7,
    ["value"] = "Total price with tax: $",
    ["type"] = "STRING",
    ["line"] = 19,
  },
  [69] = {
    ["raw"] = "..",
    ["col"] = 33,
    ["value"] = "..",
    ["type"] = "CONCAT",
    ["line"] = 19,
  },
  [70] = {
    ["raw"] = "total_price",
    ["col"] = 36,
    ["value"] = "total_price",
    ["type"] = "IDENTIFIER",
    ["line"] = 19,
  },
  [71] = {
    ["raw"] = ")",
    ["col"] = 47,
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["line"] = 19,
  },
  [72] = {
    ["raw"] = "local",
    ["col"] = 1,
    ["value"] = "local",
    ["type"] = "KEYWORD",
    ["line"] = 21,
  },
  [73] = {
    ["raw"] = "greeting",
    ["col"] = 7,
    ["value"] = "greeting",
    ["type"] = "IDENTIFIER",
    ["line"] = 21,
  },
  [74] = {
    ["raw"] = "=",
    ["col"] = 16,
    ["value"] = "=",
    ["type"] = "ASSIGN",
    ["line"] = 21,
  },
  [75] = {
    ["raw"] = "\"Have a \"",
    ["col"] = 18,
    ["value"] = "Have a ",
    ["type"] = "STRING",
    ["line"] = 21,
  },
  [76] = {
    ["raw"] = "..",
    ["col"] = 28,
    ["value"] = "..",
    ["type"] = "CONCAT",
    ["line"] = 21,
  },
  [77] = {
    ["raw"] = "\"nice \"",
    ["col"] = 31,
    ["value"] = "nice ",
    ["type"] = "STRING",
    ["line"] = 21,
  },
  [78] = {
    ["raw"] = "..",
    ["col"] = 39,
    ["value"] = "..",
    ["type"] = "CONCAT",
    ["line"] = 21,
  },
  [79] = {
    ["raw"] = "\"day!\"",
    ["col"] = 42,
    ["value"] = "day!",
    ["type"] = "STRING",
    ["line"] = 21,
  },
  [80] = {
    ["raw"] = "print",
    ["col"] = 1,
    ["value"] = "print",
    ["type"] = "IDENTIFIER",
    ["line"] = 22,
  },
  [81] = {
    ["raw"] = "(",
    ["col"] = 6,
    ["value"] = "(",
    ["type"] = "LPAREN",
    ["line"] = 22,
  },
  [82] = {
    ["raw"] = "greeting",
    ["col"] = 7,
    ["value"] = "greeting",
    ["type"] = "IDENTIFIER",
    ["line"] = 22,
  },
  [83] = {
    ["raw"] = ")",
    ["col"] = 15,
    ["value"] = ")",
    ["type"] = "RPAREN",
    ["line"] = 22,
  },
  [84] = {
    ["raw"] = "",
    ["col"] = 1,
    ["value"] = "",
    ["type"] = "EOF",
    ["line"] = 23,
  },
}
}