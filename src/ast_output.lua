return {
  ["body"] = {
    [1] = {
      ["variables"] = {
        [1] = {
          ["name"] = "name",
          ["type"] = "Identifier",
        },
      },
      ["init"] = {
        [1] = {
          ["value"] = "User",
          ["raw"] = "\"User\"",
          ["type"] = "StringLiteral",
        },
      },
      ["type"] = "LocalStatement",
    },
    [2] = {
      ["variables"] = {
        [1] = {
          ["name"] = "age",
          ["type"] = "Identifier",
        },
      },
      ["init"] = {
        [1] = {
          ["value"] = 25,
          ["raw"] = "25",
          ["type"] = "NumericLiteral",
        },
      },
      ["type"] = "LocalStatement",
    },
    [3] = {
      ["variables"] = {
        [1] = {
          ["name"] = "price",
          ["type"] = "Identifier",
        },
      },
      ["init"] = {
        [1] = {
          ["value"] = 19.99,
          ["raw"] = "19.99",
          ["type"] = "NumericLiteral",
        },
      },
      ["type"] = "LocalStatement",
    },
    [4] = {
      ["variables"] = {
        [1] = {
          ["name"] = "is_active",
          ["type"] = "Identifier",
        },
      },
      ["init"] = {
        [1] = {
          ["value"] = true,
          ["type"] = "BooleanLiteral",
        },
      },
      ["type"] = "LocalStatement",
    },
    [5] = {
      ["expression"] = {
        ["base"] = {
          ["name"] = "print",
          ["type"] = "Identifier",
        },
        ["potential_metamethod"] = "__call",
        ["arguments"] = {
          [1] = {
            ["value"] = "Hello, welcome to Lua!",
            ["raw"] = "\"Hello, welcome to Lua!\"",
            ["type"] = "StringLiteral",
          },
        },
        ["is_method_call"] = false,
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
      },
      ["type"] = "CallStatement",
    },
    [6] = {
      ["expression"] = {
        ["base"] = {
          ["name"] = "print",
          ["type"] = "Identifier",
        },
        ["potential_metamethod"] = "__call",
        ["arguments"] = {
          [1] = {
            ["swap_operands"] = false,
            ["substituted_operator"] = "..",
            ["original_left"] = {
              ["value"] = "Name: ",
              ["raw"] = "\"Name: \"",
              ["type"] = "StringLiteral",
            },
            ["original_right"] = {
              ["name"] = "name",
              ["type"] = "Identifier",
            },
            ["right"] = {
              ["name"] = "name",
              ["type"] = "Identifier",
            },
            ["type"] = "BinaryExpression",
            ["left"] = {
              ["value"] = "Name: ",
              ["raw"] = "\"Name: \"",
              ["type"] = "StringLiteral",
            },
            ["operator"] = "..",
            ["negate_result"] = false,
            ["has_metamethod"] = true,
            ["potential_metamethod"] = "__concat",
          },
        },
        ["is_method_call"] = false,
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
      },
      ["type"] = "CallStatement",
    },
    [7] = {
      ["expression"] = {
        ["base"] = {
          ["name"] = "print",
          ["type"] = "Identifier",
        },
        ["potential_metamethod"] = "__call",
        ["arguments"] = {
          [1] = {
            ["swap_operands"] = false,
            ["substituted_operator"] = "..",
            ["original_left"] = {
              ["value"] = "Age: ",
              ["raw"] = "\"Age: \"",
              ["type"] = "StringLiteral",
            },
            ["original_right"] = {
              ["name"] = "age",
              ["type"] = "Identifier",
            },
            ["right"] = {
              ["name"] = "age",
              ["type"] = "Identifier",
            },
            ["type"] = "BinaryExpression",
            ["left"] = {
              ["value"] = "Age: ",
              ["raw"] = "\"Age: \"",
              ["type"] = "StringLiteral",
            },
            ["operator"] = "..",
            ["negate_result"] = false,
            ["has_metamethod"] = true,
            ["potential_metamethod"] = "__concat",
          },
        },
        ["is_method_call"] = false,
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
      },
      ["type"] = "CallStatement",
    },
    [8] = {
      ["expression"] = {
        ["base"] = {
          ["name"] = "print",
          ["type"] = "Identifier",
        },
        ["potential_metamethod"] = "__call",
        ["arguments"] = {
          [1] = {
            ["swap_operands"] = false,
            ["substituted_operator"] = "..",
            ["original_left"] = {
              ["value"] = "Price: $",
              ["raw"] = "\"Price: $\"",
              ["type"] = "StringLiteral",
            },
            ["original_right"] = {
              ["name"] = "price",
              ["type"] = "Identifier",
            },
            ["right"] = {
              ["name"] = "price",
              ["type"] = "Identifier",
            },
            ["type"] = "BinaryExpression",
            ["left"] = {
              ["value"] = "Price: $",
              ["raw"] = "\"Price: $\"",
              ["type"] = "StringLiteral",
            },
            ["operator"] = "..",
            ["negate_result"] = false,
            ["has_metamethod"] = true,
            ["potential_metamethod"] = "__concat",
          },
        },
        ["is_method_call"] = false,
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
      },
      ["type"] = "CallStatement",
    },
    [9] = {
      ["clauses"] = {
        [1] = {
          ["condition"] = {
            ["name"] = "is_active",
            ["type"] = "Identifier",
          },
          ["body"] = {
            [1] = {
              ["expression"] = {
                ["base"] = {
                  ["name"] = "print",
                  ["type"] = "Identifier",
                },
                ["potential_metamethod"] = "__call",
                ["arguments"] = {
                  [1] = {
                    ["value"] = "Status: Active",
                    ["raw"] = "\"Status: Active\"",
                    ["type"] = "StringLiteral",
                  },
                },
                ["is_method_call"] = false,
                ["has_metamethod"] = true,
                ["type"] = "CallExpression",
              },
              ["type"] = "CallStatement",
            },
          },
          ["type"] = "IfClause",
        },
        [2] = {
          ["body"] = {
            [1] = {
              ["expression"] = {
                ["base"] = {
                  ["name"] = "print",
                  ["type"] = "Identifier",
                },
                ["potential_metamethod"] = "__call",
                ["arguments"] = {
                  [1] = {
                    ["value"] = "Status: Inactive",
                    ["raw"] = "\"Status: Inactive\"",
                    ["type"] = "StringLiteral",
                  },
                },
                ["is_method_call"] = false,
                ["has_metamethod"] = true,
                ["type"] = "CallExpression",
              },
              ["type"] = "CallStatement",
            },
          },
          ["type"] = "ElseClause",
        },
      },
      ["type"] = "IfStatement",
    },
    [10] = {
      ["variables"] = {
        [1] = {
          ["name"] = "tax_rate",
          ["type"] = "Identifier",
        },
      },
      ["init"] = {
        [1] = {
          ["value"] = 0.08,
          ["raw"] = "0.08",
          ["type"] = "NumericLiteral",
        },
      },
      ["type"] = "LocalStatement",
    },
    [11] = {
      ["variables"] = {
        [1] = {
          ["name"] = "total_price",
          ["type"] = "Identifier",
        },
      },
      ["init"] = {
        [1] = {
          ["swap_operands"] = false,
          ["substituted_operator"] = "+",
          ["original_left"] = {
            ["name"] = "price",
            ["type"] = "Identifier",
          },
          ["original_right"] = {
            ["swap_operands"] = false,
            ["substituted_operator"] = "*",
            ["original_left"] = {
              ["name"] = "price",
              ["type"] = "Identifier",
            },
            ["original_right"] = {
              ["name"] = "tax_rate",
              ["type"] = "Identifier",
            },
            ["right"] = {
              ["name"] = "tax_rate",
              ["type"] = "Identifier",
            },
            ["type"] = "BinaryExpression",
            ["left"] = {
              ["name"] = "price",
              ["type"] = "Identifier",
            },
            ["operator"] = "*",
            ["negate_result"] = false,
            ["has_metamethod"] = true,
            ["potential_metamethod"] = "__mul",
          },
          ["right"] = {
            ["swap_operands"] = false,
            ["substituted_operator"] = "*",
            ["original_left"] = {
              ["name"] = "price",
              ["type"] = "Identifier",
            },
            ["original_right"] = {
              ["name"] = "tax_rate",
              ["type"] = "Identifier",
            },
            ["right"] = {
              ["name"] = "tax_rate",
              ["type"] = "Identifier",
            },
            ["type"] = "BinaryExpression",
            ["left"] = {
              ["name"] = "price",
              ["type"] = "Identifier",
            },
            ["operator"] = "*",
            ["negate_result"] = false,
            ["has_metamethod"] = true,
            ["potential_metamethod"] = "__mul",
          },
          ["type"] = "BinaryExpression",
          ["left"] = {
            ["name"] = "price",
            ["type"] = "Identifier",
          },
          ["operator"] = "+",
          ["negate_result"] = false,
          ["has_metamethod"] = true,
          ["potential_metamethod"] = "__add",
        },
      },
      ["type"] = "LocalStatement",
    },
    [12] = {
      ["expression"] = {
        ["base"] = {
          ["name"] = "print",
          ["type"] = "Identifier",
        },
        ["potential_metamethod"] = "__call",
        ["arguments"] = {
          [1] = {
            ["swap_operands"] = false,
            ["substituted_operator"] = "..",
            ["original_left"] = {
              ["value"] = "Total price with tax: $",
              ["raw"] = "\"Total price with tax: $\"",
              ["type"] = "StringLiteral",
            },
            ["original_right"] = {
              ["name"] = "total_price",
              ["type"] = "Identifier",
            },
            ["right"] = {
              ["name"] = "total_price",
              ["type"] = "Identifier",
            },
            ["type"] = "BinaryExpression",
            ["left"] = {
              ["value"] = "Total price with tax: $",
              ["raw"] = "\"Total price with tax: $\"",
              ["type"] = "StringLiteral",
            },
            ["operator"] = "..",
            ["negate_result"] = false,
            ["has_metamethod"] = true,
            ["potential_metamethod"] = "__concat",
          },
        },
        ["is_method_call"] = false,
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
      },
      ["type"] = "CallStatement",
    },
    [13] = {
      ["variables"] = {
        [1] = {
          ["name"] = "greeting",
          ["type"] = "Identifier",
        },
      },
      ["init"] = {
        [1] = {
          ["swap_operands"] = false,
          ["substituted_operator"] = "..",
          ["original_left"] = {
            ["value"] = "Have a ",
            ["raw"] = "\"Have a \"",
            ["type"] = "StringLiteral",
          },
          ["original_right"] = {
            ["swap_operands"] = false,
            ["substituted_operator"] = "..",
            ["original_left"] = {
              ["value"] = "nice ",
              ["raw"] = "\"nice \"",
              ["type"] = "StringLiteral",
            },
            ["original_right"] = {
              ["value"] = "day!",
              ["raw"] = "\"day!\"",
              ["type"] = "StringLiteral",
            },
            ["right"] = {
              ["value"] = "day!",
              ["raw"] = "\"day!\"",
              ["type"] = "StringLiteral",
            },
            ["type"] = "BinaryExpression",
            ["left"] = {
              ["value"] = "nice ",
              ["raw"] = "\"nice \"",
              ["type"] = "StringLiteral",
            },
            ["operator"] = "..",
            ["negate_result"] = false,
            ["has_metamethod"] = true,
            ["potential_metamethod"] = "__concat",
          },
          ["right"] = {
            ["swap_operands"] = false,
            ["substituted_operator"] = "..",
            ["original_left"] = {
              ["value"] = "nice ",
              ["raw"] = "\"nice \"",
              ["type"] = "StringLiteral",
            },
            ["original_right"] = {
              ["value"] = "day!",
              ["raw"] = "\"day!\"",
              ["type"] = "StringLiteral",
            },
            ["right"] = {
              ["value"] = "day!",
              ["raw"] = "\"day!\"",
              ["type"] = "StringLiteral",
            },
            ["type"] = "BinaryExpression",
            ["left"] = {
              ["value"] = "nice ",
              ["raw"] = "\"nice \"",
              ["type"] = "StringLiteral",
            },
            ["operator"] = "..",
            ["negate_result"] = false,
            ["has_metamethod"] = true,
            ["potential_metamethod"] = "__concat",
          },
          ["type"] = "BinaryExpression",
          ["left"] = {
            ["value"] = "Have a ",
            ["raw"] = "\"Have a \"",
            ["type"] = "StringLiteral",
          },
          ["operator"] = "..",
          ["negate_result"] = false,
          ["has_metamethod"] = true,
          ["potential_metamethod"] = "__concat",
        },
      },
      ["type"] = "LocalStatement",
    },
    [14] = {
      ["expression"] = {
        ["base"] = {
          ["name"] = "print",
          ["type"] = "Identifier",
        },
        ["potential_metamethod"] = "__call",
        ["arguments"] = {
          [1] = {
            ["name"] = "greeting",
            ["type"] = "Identifier",
          },
        },
        ["is_method_call"] = false,
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
      },
      ["type"] = "CallStatement",
    },
  },
  ["comments"] = {
  },
  ["type"] = "Chunk",
}