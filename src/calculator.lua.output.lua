return {
  ast = {
  ["comments"] = {
    [1] = {
      ["line"] = 3,
      ["raw"] = "--[[[\
    comment test\
]]",
      ["value"] = "[[[\
    comment test\
]]",
      ["col"] = 1,
      ["type"] = "COMMENT",
    },
  },
  ["body"] = {
    [1] = {
      ["expression"] = {
        ["has_metamethod"] = true,
        ["arguments"] = {
          [1] = {
            ["raw"] = "\"CLI Calculator - Type 'exit' to quit\"",
            ["value"] = "CLI Calculator - Type 'exit' to quit",
            ["type"] = "StringLiteral",
          },
        },
        ["potential_metamethod"] = "__call",
        ["is_method_call"] = false,
        ["base"] = {
          ["name"] = "print",
          ["attributes"] = {
          },
          ["loc"] = {
            ["start"] = {
              ["col"] = 1,
              ["line"] = 7,
            },
            ["end"] = {
              ["col"] = 1,
              ["line"] = 7,
            },
          },
          ["type"] = "Identifier",
        },
        ["type"] = "CallExpression",
      },
      ["type"] = "CallStatement",
    },
    [2] = {
      ["expression"] = {
        ["has_metamethod"] = true,
        ["arguments"] = {
          [1] = {
            ["raw"] = "\"Enter expressions like: 2 + 2, 10 * 5, etc.\"",
            ["value"] = "Enter expressions like: 2 + 2, 10 * 5, etc.",
            ["type"] = "StringLiteral",
          },
        },
        ["potential_metamethod"] = "__call",
        ["is_method_call"] = false,
        ["base"] = {
          ["name"] = "print",
          ["attributes"] = {
          },
          ["loc"] = {
            ["start"] = {
              ["col"] = 1,
              ["line"] = 8,
            },
            ["end"] = {
              ["col"] = 1,
              ["line"] = 8,
            },
          },
          ["type"] = "Identifier",
        },
        ["type"] = "CallExpression",
      },
      ["type"] = "CallStatement",
    },
    [3] = {
      ["expression"] = {
        ["has_metamethod"] = true,
        ["arguments"] = {
          [1] = {
            ["raw"] = "\"Supported operations: +, -, *, /, ^ (power), % (modulo)\"",
            ["value"] = "Supported operations: +, -, *, /, ^ (power), % (modulo)",
            ["type"] = "StringLiteral",
          },
        },
        ["potential_metamethod"] = "__call",
        ["is_method_call"] = false,
        ["base"] = {
          ["name"] = "print",
          ["attributes"] = {
          },
          ["loc"] = {
            ["start"] = {
              ["col"] = 1,
              ["line"] = 9,
            },
            ["end"] = {
              ["col"] = 1,
              ["line"] = 9,
            },
          },
          ["type"] = "Identifier",
        },
        ["type"] = "CallExpression",
      },
      ["type"] = "CallStatement",
    },
    [4] = {
      ["expression"] = {
        ["has_metamethod"] = true,
        ["arguments"] = {
          [1] = {
            ["raw"] = "\"-----------------------------------------\"",
            ["value"] = "-----------------------------------------",
            ["type"] = "StringLiteral",
          },
        },
        ["potential_metamethod"] = "__call",
        ["is_method_call"] = false,
        ["base"] = {
          ["name"] = "print",
          ["attributes"] = {
          },
          ["loc"] = {
            ["start"] = {
              ["col"] = 1,
              ["line"] = 10,
            },
            ["end"] = {
              ["col"] = 1,
              ["line"] = 10,
            },
          },
          ["type"] = "Identifier",
        },
        ["type"] = "CallExpression",
      },
      ["type"] = "CallStatement",
    },
    [5] = {
      ["expression"] = {
        ["has_metamethod"] = true,
        ["arguments"] = {
          [1] = {
            ["raw"] = "\"Type exit or quit to exit the calculator.\"",
            ["value"] = "Type exit or quit to exit the calculator.",
            ["type"] = "StringLiteral",
          },
        },
        ["potential_metamethod"] = "__call",
        ["is_method_call"] = false,
        ["base"] = {
          ["name"] = "print",
          ["attributes"] = {
          },
          ["loc"] = {
            ["start"] = {
              ["col"] = 1,
              ["line"] = 11,
            },
            ["end"] = {
              ["col"] = 1,
              ["line"] = 11,
            },
          },
          ["type"] = "Identifier",
        },
        ["type"] = "CallExpression",
      },
      ["type"] = "CallStatement",
    },
    [6] = {
      ["expression"] = {
        ["has_metamethod"] = true,
        ["arguments"] = {
          [1] = {
            ["raw"] = "\"=========================================\"",
            ["value"] = "=========================================",
            ["type"] = "StringLiteral",
          },
        },
        ["potential_metamethod"] = "__call",
        ["is_method_call"] = false,
        ["base"] = {
          ["name"] = "print",
          ["attributes"] = {
          },
          ["loc"] = {
            ["start"] = {
              ["col"] = 1,
              ["line"] = 12,
            },
            ["end"] = {
              ["col"] = 1,
              ["line"] = 12,
            },
          },
          ["type"] = "Identifier",
        },
        ["type"] = "CallExpression",
      },
      ["type"] = "CallStatement",
    },
    [7] = {
      ["identifier"] = {
        ["name"] = "calculate",
        ["attributes"] = {
        },
        ["loc"] = {
          ["start"] = {
            ["col"] = 16,
            ["line"] = 14,
          },
          ["end"] = {
            ["col"] = 16,
            ["line"] = 14,
          },
        },
        ["type"] = "Identifier",
      },
      ["isLocal"] = true,
      ["body"] = {
        [1] = {
          ["clauses"] = {
            [1] = {
              ["condition"] = {
                ["substituted_operator"] = "or",
                ["swap_operands"] = false,
                ["left"] = {
                  ["is_lua53_feature"] = false,
                  ["operator"] = "not",
                  ["loc"] = {
                    ["start"] = {
                      ["col"] = 8,
                      ["line"] = 15,
                    },
                    ["end"] = {
                      ["col"] = 8,
                      ["line"] = 15,
                    },
                  },
                  ["argument"] = {
                    ["name"] = "expression",
                    ["attributes"] = {
                    },
                    ["loc"] = {
                      ["start"] = {
                        ["col"] = 12,
                        ["line"] = 15,
                      },
                      ["end"] = {
                        ["col"] = 12,
                        ["line"] = 15,
                      },
                    },
                    ["type"] = "Identifier",
                  },
                  ["type"] = "UnaryExpression",
                },
                ["operator"] = "or",
                ["right"] = {
                  ["substituted_operator"] = "==",
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["name"] = "expression",
                    ["attributes"] = {
                    },
                    ["loc"] = {
                      ["start"] = {
                        ["col"] = 26,
                        ["line"] = 15,
                      },
                      ["end"] = {
                        ["col"] = 26,
                        ["line"] = 15,
                      },
                    },
                    ["type"] = "Identifier",
                  },
                  ["operator"] = "==",
                  ["metamethod"] = "__eq",
                  ["right"] = {
                    ["raw"] = "\"\"",
                    ["value"] = "",
                    ["type"] = "StringLiteral",
                  },
                  ["type"] = "BinaryExpression",
                },
                ["type"] = "BinaryExpression",
              },
              ["body"] = {
                [1] = {
                  ["arguments"] = {
                    [1] = {
                      ["raw"] = "\"Error: Empty expression\"",
                      ["value"] = "Error: Empty expression",
                      ["type"] = "StringLiteral",
                    },
                  },
                  ["type"] = "ReturnStatement",
                },
              },
              ["type"] = "IfClause",
            },
          },
          ["type"] = "IfStatement",
        },
        [2] = {
          ["init"] = {
            [1] = {
              ["has_metamethod"] = true,
              ["arguments"] = {
                [1] = {
                  ["isLocal"] = false,
                  ["body"] = {
                    [1] = {
                      ["init"] = {
                        [1] = {
                          ["has_metamethod"] = true,
                          ["arguments"] = {
                            [1] = {
                              ["substituted_operator"] = "..",
                              ["swap_operands"] = false,
                              ["left"] = {
                                ["raw"] = "\"return \"",
                                ["value"] = "return ",
                                ["type"] = "StringLiteral",
                              },
                              ["operator"] = "..",
                              ["metamethod"] = "__concat",
                              ["right"] = {
                                ["name"] = "expression",
                                ["attributes"] = {
                                },
                                ["loc"] = {
                                  ["start"] = {
                                    ["col"] = 40,
                                    ["line"] = 20,
                                  },
                                  ["end"] = {
                                    ["col"] = 40,
                                    ["line"] = 20,
                                  },
                                },
                                ["type"] = "Identifier",
                              },
                              ["type"] = "BinaryExpression",
                            },
                          },
                          ["potential_metamethod"] = "__call",
                          ["is_method_call"] = false,
                          ["base"] = {
                            ["name"] = "load",
                            ["attributes"] = {
                            },
                            ["loc"] = {
                              ["start"] = {
                                ["col"] = 22,
                                ["line"] = 20,
                              },
                              ["end"] = {
                                ["col"] = 22,
                                ["line"] = 20,
                              },
                            },
                            ["type"] = "Identifier",
                          },
                          ["type"] = "CallExpression",
                        },
                      },
                      ["loc"] = {
                        ["start"] = {
                          ["col"] = 9,
                          ["line"] = 20,
                        },
                        ["end"] = {
                          ["col"] = 9,
                          ["line"] = 21,
                        },
                      },
                      ["variables"] = {
                        [1] = {
                          ["name"] = "func",
                          ["attributes"] = {
                          },
                          ["loc"] = {
                            ["start"] = {
                              ["col"] = 15,
                              ["line"] = 20,
                            },
                            ["end"] = {
                              ["col"] = 15,
                              ["line"] = 20,
                            },
                          },
                          ["type"] = "Identifier",
                        },
                      },
                      ["type"] = "LocalStatement",
                    },
                    [2] = {
                      ["clauses"] = {
                        [1] = {
                          ["condition"] = {
                            ["name"] = "func",
                            ["attributes"] = {
                            },
                            ["loc"] = {
                              ["start"] = {
                                ["col"] = 12,
                                ["line"] = 21,
                              },
                              ["end"] = {
                                ["col"] = 12,
                                ["line"] = 21,
                              },
                            },
                            ["type"] = "Identifier",
                          },
                          ["body"] = {
                            [1] = {
                              ["arguments"] = {
                                [1] = {
                                  ["has_metamethod"] = true,
                                  ["arguments"] = {
                                  },
                                  ["potential_metamethod"] = "__call",
                                  ["is_method_call"] = false,
                                  ["base"] = {
                                    ["name"] = "func",
                                    ["attributes"] = {
                                    },
                                    ["loc"] = {
                                      ["start"] = {
                                        ["col"] = 20,
                                        ["line"] = 22,
                                      },
                                      ["end"] = {
                                        ["col"] = 20,
                                        ["line"] = 22,
                                      },
                                    },
                                    ["type"] = "Identifier",
                                  },
                                  ["type"] = "CallExpression",
                                },
                              },
                              ["type"] = "ReturnStatement",
                            },
                          },
                          ["type"] = "IfClause",
                        },
                        [2] = {
                          ["body"] = {
                            [1] = {
                              ["arguments"] = {
                                [1] = {
                                  ["type"] = "NilLiteral",
                                },
                                [2] = {
                                  ["raw"] = "\"Invalid expression\"",
                                  ["value"] = "Invalid expression",
                                  ["type"] = "StringLiteral",
                                },
                              },
                              ["type"] = "ReturnStatement",
                            },
                          },
                          ["type"] = "ElseClause",
                        },
                      },
                      ["type"] = "IfStatement",
                    },
                  },
                  ["parameters"] = {
                  },
                  ["type"] = "FunctionExpression",
                },
              },
              ["potential_metamethod"] = "__call",
              ["is_method_call"] = false,
              ["base"] = {
                ["name"] = "pcall",
                ["attributes"] = {
                },
                ["loc"] = {
                  ["start"] = {
                    ["col"] = 28,
                    ["line"] = 19,
                  },
                  ["end"] = {
                    ["col"] = 28,
                    ["line"] = 19,
                  },
                },
                ["type"] = "Identifier",
              },
              ["type"] = "CallExpression",
            },
          },
          ["loc"] = {
            ["start"] = {
              ["col"] = 5,
              ["line"] = 19,
            },
            ["end"] = {
              ["col"] = 5,
              ["line"] = 28,
            },
          },
          ["variables"] = {
            [1] = {
              ["name"] = "status",
              ["attributes"] = {
              },
              ["loc"] = {
                ["start"] = {
                  ["col"] = 11,
                  ["line"] = 19,
                },
                ["end"] = {
                  ["col"] = 11,
                  ["line"] = 19,
                },
              },
              ["type"] = "Identifier",
            },
            [2] = {
              ["name"] = "result",
              ["attributes"] = {
              },
              ["loc"] = {
                ["start"] = {
                  ["col"] = 19,
                  ["line"] = 19,
                },
                ["end"] = {
                  ["col"] = 19,
                  ["line"] = 19,
                },
              },
              ["type"] = "Identifier",
            },
          },
          ["type"] = "LocalStatement",
        },
        [3] = {
          ["clauses"] = {
            [1] = {
              ["condition"] = {
                ["name"] = "status",
                ["attributes"] = {
                },
                ["loc"] = {
                  ["start"] = {
                    ["col"] = 8,
                    ["line"] = 28,
                  },
                  ["end"] = {
                    ["col"] = 8,
                    ["line"] = 28,
                  },
                },
                ["type"] = "Identifier",
              },
              ["body"] = {
                [1] = {
                  ["clauses"] = {
                    [1] = {
                      ["condition"] = {
                        ["substituted_operator"] = "==",
                        ["swap_operands"] = false,
                        ["left"] = {
                          ["has_metamethod"] = true,
                          ["arguments"] = {
                            [1] = {
                              ["name"] = "result",
                              ["attributes"] = {
                              },
                              ["loc"] = {
                                ["start"] = {
                                  ["col"] = 17,
                                  ["line"] = 29,
                                },
                                ["end"] = {
                                  ["col"] = 17,
                                  ["line"] = 29,
                                },
                              },
                              ["type"] = "Identifier",
                            },
                          },
                          ["potential_metamethod"] = "__call",
                          ["is_method_call"] = false,
                          ["base"] = {
                            ["name"] = "type",
                            ["attributes"] = {
                            },
                            ["loc"] = {
                              ["start"] = {
                                ["col"] = 12,
                                ["line"] = 29,
                              },
                              ["end"] = {
                                ["col"] = 12,
                                ["line"] = 29,
                              },
                            },
                            ["type"] = "Identifier",
                          },
                          ["type"] = "CallExpression",
                        },
                        ["operator"] = "==",
                        ["metamethod"] = "__eq",
                        ["right"] = {
                          ["raw"] = "\"number\"",
                          ["value"] = "number",
                          ["type"] = "StringLiteral",
                        },
                        ["type"] = "BinaryExpression",
                      },
                      ["body"] = {
                        [1] = {
                          ["arguments"] = {
                            [1] = {
                              ["name"] = "result",
                              ["attributes"] = {
                              },
                              ["loc"] = {
                                ["start"] = {
                                  ["col"] = 20,
                                  ["line"] = 30,
                                },
                                ["end"] = {
                                  ["col"] = 20,
                                  ["line"] = 30,
                                },
                              },
                              ["type"] = "Identifier",
                            },
                          },
                          ["type"] = "ReturnStatement",
                        },
                      },
                      ["type"] = "IfClause",
                    },
                    [2] = {
                      ["body"] = {
                        [1] = {
                          ["arguments"] = {
                            [1] = {
                              ["raw"] = "\"Error: Invalid result\"",
                              ["value"] = "Error: Invalid result",
                              ["type"] = "StringLiteral",
                            },
                          },
                          ["type"] = "ReturnStatement",
                        },
                      },
                      ["type"] = "ElseClause",
                    },
                  },
                  ["type"] = "IfStatement",
                },
              },
              ["type"] = "IfClause",
            },
            [2] = {
              ["body"] = {
                [1] = {
                  ["arguments"] = {
                    [1] = {
                      ["substituted_operator"] = "..",
                      ["swap_operands"] = false,
                      ["left"] = {
                        ["raw"] = "\"Error: \"",
                        ["value"] = "Error: ",
                        ["type"] = "StringLiteral",
                      },
                      ["operator"] = "..",
                      ["metamethod"] = "__concat",
                      ["right"] = {
                        ["has_metamethod"] = true,
                        ["arguments"] = {
                          [1] = {
                            ["name"] = "result",
                            ["attributes"] = {
                            },
                            ["loc"] = {
                              ["start"] = {
                                ["col"] = 38,
                                ["line"] = 35,
                              },
                              ["end"] = {
                                ["col"] = 38,
                                ["line"] = 35,
                              },
                            },
                            ["type"] = "Identifier",
                          },
                        },
                        ["potential_metamethod"] = "__call",
                        ["is_method_call"] = false,
                        ["base"] = {
                          ["name"] = "tostring",
                          ["attributes"] = {
                          },
                          ["loc"] = {
                            ["start"] = {
                              ["col"] = 29,
                              ["line"] = 35,
                            },
                            ["end"] = {
                              ["col"] = 29,
                              ["line"] = 35,
                            },
                          },
                          ["type"] = "Identifier",
                        },
                        ["type"] = "CallExpression",
                      },
                      ["type"] = "BinaryExpression",
                    },
                  },
                  ["type"] = "ReturnStatement",
                },
              },
              ["type"] = "ElseClause",
            },
          },
          ["type"] = "IfStatement",
        },
      },
      ["parameters"] = {
        [1] = {
          ["name"] = "expression",
          ["attributes"] = {
          },
          ["loc"] = {
            ["start"] = {
              ["col"] = 26,
              ["line"] = 14,
            },
            ["end"] = {
              ["col"] = 26,
              ["line"] = 14,
            },
          },
          ["type"] = "Identifier",
        },
      },
      ["type"] = "FunctionDeclaration",
    },
    [8] = {
      ["condition"] = {
        ["value"] = true,
        ["type"] = "BooleanLiteral",
      },
      ["body"] = {
        [1] = {
          ["expression"] = {
            ["has_metamethod"] = true,
            ["arguments"] = {
              [1] = {
                ["raw"] = "\"> \"",
                ["value"] = "> ",
                ["type"] = "StringLiteral",
              },
            },
            ["potential_metamethod"] = "__call",
            ["is_method_call"] = true,
            ["base"] = {
              ["identifier"] = {
                ["name"] = "write",
                ["attributes"] = {
                },
                ["loc"] = {
                  ["start"] = {
                    ["col"] = 8,
                    ["line"] = 40,
                  },
                  ["end"] = {
                    ["col"] = 8,
                    ["line"] = 40,
                  },
                },
                ["type"] = "Identifier",
              },
              ["base"] = {
                ["name"] = "io",
                ["attributes"] = {
                },
                ["loc"] = {
                  ["start"] = {
                    ["col"] = 5,
                    ["line"] = 40,
                  },
                  ["end"] = {
                    ["col"] = 5,
                    ["line"] = 40,
                  },
                },
                ["type"] = "Identifier",
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
            },
            ["type"] = "CallExpression",
          },
          ["type"] = "CallStatement",
        },
        [2] = {
          ["init"] = {
            [1] = {
              ["has_metamethod"] = true,
              ["arguments"] = {
              },
              ["potential_metamethod"] = "__call",
              ["is_method_call"] = true,
              ["base"] = {
                ["identifier"] = {
                  ["name"] = "read",
                  ["attributes"] = {
                  },
                  ["loc"] = {
                    ["start"] = {
                      ["col"] = 22,
                      ["line"] = 41,
                    },
                    ["end"] = {
                      ["col"] = 22,
                      ["line"] = 41,
                    },
                  },
                  ["type"] = "Identifier",
                },
                ["base"] = {
                  ["name"] = "io",
                  ["attributes"] = {
                  },
                  ["loc"] = {
                    ["start"] = {
                      ["col"] = 19,
                      ["line"] = 41,
                    },
                    ["end"] = {
                      ["col"] = 19,
                      ["line"] = 41,
                    },
                  },
                  ["type"] = "Identifier",
                },
                ["indexer"] = ".",
                ["type"] = "MemberExpression",
              },
              ["type"] = "CallExpression",
            },
          },
          ["loc"] = {
            ["start"] = {
              ["col"] = 5,
              ["line"] = 41,
            },
            ["end"] = {
              ["col"] = 5,
              ["line"] = 43,
            },
          },
          ["variables"] = {
            [1] = {
              ["name"] = "input",
              ["attributes"] = {
              },
              ["loc"] = {
                ["start"] = {
                  ["col"] = 11,
                  ["line"] = 41,
                },
                ["end"] = {
                  ["col"] = 11,
                  ["line"] = 41,
                },
              },
              ["type"] = "Identifier",
            },
          },
          ["type"] = "LocalStatement",
        },
        [3] = {
          ["clauses"] = {
            [1] = {
              ["condition"] = {
                ["substituted_operator"] = "or",
                ["swap_operands"] = false,
                ["left"] = {
                  ["substituted_operator"] = "==",
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["name"] = "input",
                    ["attributes"] = {
                    },
                    ["loc"] = {
                      ["start"] = {
                        ["col"] = 8,
                        ["line"] = 43,
                      },
                      ["end"] = {
                        ["col"] = 8,
                        ["line"] = 43,
                      },
                    },
                    ["type"] = "Identifier",
                  },
                  ["operator"] = "==",
                  ["metamethod"] = "__eq",
                  ["right"] = {
                    ["raw"] = "\"exit\"",
                    ["value"] = "exit",
                    ["type"] = "StringLiteral",
                  },
                  ["type"] = "BinaryExpression",
                },
                ["operator"] = "or",
                ["right"] = {
                  ["substituted_operator"] = "==",
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["name"] = "input",
                    ["attributes"] = {
                    },
                    ["loc"] = {
                      ["start"] = {
                        ["col"] = 27,
                        ["line"] = 43,
                      },
                      ["end"] = {
                        ["col"] = 27,
                        ["line"] = 43,
                      },
                    },
                    ["type"] = "Identifier",
                  },
                  ["operator"] = "==",
                  ["metamethod"] = "__eq",
                  ["right"] = {
                    ["raw"] = "\"quit\"",
                    ["value"] = "quit",
                    ["type"] = "StringLiteral",
                  },
                  ["type"] = "BinaryExpression",
                },
                ["type"] = "BinaryExpression",
              },
              ["body"] = {
                [1] = {
                  ["expression"] = {
                    ["has_metamethod"] = true,
                    ["arguments"] = {
                      [1] = {
                        ["raw"] = "\"Goodbye!\"",
                        ["value"] = "Goodbye!",
                        ["type"] = "StringLiteral",
                      },
                    },
                    ["potential_metamethod"] = "__call",
                    ["is_method_call"] = false,
                    ["base"] = {
                      ["name"] = "print",
                      ["attributes"] = {
                      },
                      ["loc"] = {
                        ["start"] = {
                          ["col"] = 9,
                          ["line"] = 44,
                        },
                        ["end"] = {
                          ["col"] = 9,
                          ["line"] = 44,
                        },
                      },
                      ["type"] = "Identifier",
                    },
                    ["type"] = "CallExpression",
                  },
                  ["type"] = "CallStatement",
                },
                [2] = {
                  ["type"] = "BreakStatement",
                },
              },
              ["type"] = "IfClause",
            },
          },
          ["type"] = "IfStatement",
        },
        [4] = {
          ["init"] = {
            [1] = {
              ["has_metamethod"] = true,
              ["arguments"] = {
                [1] = {
                  ["name"] = "input",
                  ["attributes"] = {
                  },
                  ["loc"] = {
                    ["start"] = {
                      ["col"] = 30,
                      ["line"] = 48,
                    },
                    ["end"] = {
                      ["col"] = 30,
                      ["line"] = 48,
                    },
                  },
                  ["type"] = "Identifier",
                },
              },
              ["potential_metamethod"] = "__call",
              ["is_method_call"] = false,
              ["base"] = {
                ["name"] = "calculate",
                ["attributes"] = {
                },
                ["loc"] = {
                  ["start"] = {
                    ["col"] = 20,
                    ["line"] = 48,
                  },
                  ["end"] = {
                    ["col"] = 20,
                    ["line"] = 48,
                  },
                },
                ["type"] = "Identifier",
              },
              ["type"] = "CallExpression",
            },
          },
          ["loc"] = {
            ["start"] = {
              ["col"] = 5,
              ["line"] = 48,
            },
            ["end"] = {
              ["col"] = 5,
              ["line"] = 49,
            },
          },
          ["variables"] = {
            [1] = {
              ["name"] = "result",
              ["attributes"] = {
              },
              ["loc"] = {
                ["start"] = {
                  ["col"] = 11,
                  ["line"] = 48,
                },
                ["end"] = {
                  ["col"] = 11,
                  ["line"] = 48,
                },
              },
              ["type"] = "Identifier",
            },
          },
          ["type"] = "LocalStatement",
        },
        [5] = {
          ["expression"] = {
            ["has_metamethod"] = true,
            ["arguments"] = {
              [1] = {
                ["substituted_operator"] = "..",
                ["swap_operands"] = false,
                ["left"] = {
                  ["raw"] = "\"= \"",
                  ["value"] = "= ",
                  ["type"] = "StringLiteral",
                },
                ["operator"] = "..",
                ["metamethod"] = "__concat",
                ["right"] = {
                  ["has_metamethod"] = true,
                  ["arguments"] = {
                    [1] = {
                      ["name"] = "result",
                      ["attributes"] = {
                      },
                      ["loc"] = {
                        ["start"] = {
                          ["col"] = 28,
                          ["line"] = 49,
                        },
                        ["end"] = {
                          ["col"] = 28,
                          ["line"] = 49,
                        },
                      },
                      ["type"] = "Identifier",
                    },
                  },
                  ["potential_metamethod"] = "__call",
                  ["is_method_call"] = false,
                  ["base"] = {
                    ["name"] = "tostring",
                    ["attributes"] = {
                    },
                    ["loc"] = {
                      ["start"] = {
                        ["col"] = 19,
                        ["line"] = 49,
                      },
                      ["end"] = {
                        ["col"] = 19,
                        ["line"] = 49,
                      },
                    },
                    ["type"] = "Identifier",
                  },
                  ["type"] = "CallExpression",
                },
                ["type"] = "BinaryExpression",
              },
            },
            ["potential_metamethod"] = "__call",
            ["is_method_call"] = false,
            ["base"] = {
              ["name"] = "print",
              ["attributes"] = {
              },
              ["loc"] = {
                ["start"] = {
                  ["col"] = 5,
                  ["line"] = 49,
                },
                ["end"] = {
                  ["col"] = 5,
                  ["line"] = 49,
                },
              },
              ["type"] = "Identifier",
            },
            ["type"] = "CallExpression",
          },
          ["type"] = "CallStatement",
        },
      },
      ["type"] = "WhileStatement",
    },
  },
  ["type"] = "Chunk",
},
  tokens = {
  [1] = {
    ["line"] = 1,
    ["raw"] = "#!#!/usr/bin/env lua",
    ["value"] = "#!/usr/bin/env lua",
    ["col"] = 1,
    ["type"] = "SHEBANG",
  },
  [2] = {
    ["line"] = 7,
    ["raw"] = "print",
    ["value"] = "print",
    ["col"] = 1,
    ["type"] = "IDENTIFIER",
  },
  [3] = {
    ["line"] = 7,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 6,
    ["type"] = "LPAREN",
  },
  [4] = {
    ["line"] = 7,
    ["raw"] = "\"CLI Calculator - Type 'exit' to quit\"",
    ["value"] = "CLI Calculator - Type 'exit' to quit",
    ["col"] = 7,
    ["type"] = "STRING",
  },
  [5] = {
    ["line"] = 7,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 45,
    ["type"] = "RPAREN",
  },
  [6] = {
    ["line"] = 8,
    ["raw"] = "print",
    ["value"] = "print",
    ["col"] = 1,
    ["type"] = "IDENTIFIER",
  },
  [7] = {
    ["line"] = 8,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 6,
    ["type"] = "LPAREN",
  },
  [8] = {
    ["line"] = 8,
    ["raw"] = "\"Enter expressions like: 2 + 2, 10 * 5, etc.\"",
    ["value"] = "Enter expressions like: 2 + 2, 10 * 5, etc.",
    ["col"] = 7,
    ["type"] = "STRING",
  },
  [9] = {
    ["line"] = 8,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 52,
    ["type"] = "RPAREN",
  },
  [10] = {
    ["line"] = 9,
    ["raw"] = "print",
    ["value"] = "print",
    ["col"] = 1,
    ["type"] = "IDENTIFIER",
  },
  [11] = {
    ["line"] = 9,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 6,
    ["type"] = "LPAREN",
  },
  [12] = {
    ["line"] = 9,
    ["raw"] = "\"Supported operations: +, -, *, /, ^ (power), % (modulo)\"",
    ["value"] = "Supported operations: +, -, *, /, ^ (power), % (modulo)",
    ["col"] = 7,
    ["type"] = "STRING",
  },
  [13] = {
    ["line"] = 9,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 64,
    ["type"] = "RPAREN",
  },
  [14] = {
    ["line"] = 10,
    ["raw"] = "print",
    ["value"] = "print",
    ["col"] = 1,
    ["type"] = "IDENTIFIER",
  },
  [15] = {
    ["line"] = 10,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 6,
    ["type"] = "LPAREN",
  },
  [16] = {
    ["line"] = 10,
    ["raw"] = "\"-----------------------------------------\"",
    ["value"] = "-----------------------------------------",
    ["col"] = 7,
    ["type"] = "STRING",
  },
  [17] = {
    ["line"] = 10,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 50,
    ["type"] = "RPAREN",
  },
  [18] = {
    ["line"] = 11,
    ["raw"] = "print",
    ["value"] = "print",
    ["col"] = 1,
    ["type"] = "IDENTIFIER",
  },
  [19] = {
    ["line"] = 11,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 6,
    ["type"] = "LPAREN",
  },
  [20] = {
    ["line"] = 11,
    ["raw"] = "\"Type exit or quit to exit the calculator.\"",
    ["value"] = "Type exit or quit to exit the calculator.",
    ["col"] = 7,
    ["type"] = "STRING",
  },
  [21] = {
    ["line"] = 11,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 50,
    ["type"] = "RPAREN",
  },
  [22] = {
    ["line"] = 12,
    ["raw"] = "print",
    ["value"] = "print",
    ["col"] = 1,
    ["type"] = "IDENTIFIER",
  },
  [23] = {
    ["line"] = 12,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 6,
    ["type"] = "LPAREN",
  },
  [24] = {
    ["line"] = 12,
    ["raw"] = "\"=========================================\"",
    ["value"] = "=========================================",
    ["col"] = 7,
    ["type"] = "STRING",
  },
  [25] = {
    ["line"] = 12,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 50,
    ["type"] = "RPAREN",
  },
  [26] = {
    ["line"] = 14,
    ["raw"] = "local",
    ["value"] = "local",
    ["col"] = 1,
    ["type"] = "KEYWORD",
  },
  [27] = {
    ["line"] = 14,
    ["raw"] = "function",
    ["value"] = "function",
    ["col"] = 7,
    ["type"] = "KEYWORD",
  },
  [28] = {
    ["line"] = 14,
    ["raw"] = "calculate",
    ["value"] = "calculate",
    ["col"] = 16,
    ["type"] = "IDENTIFIER",
  },
  [29] = {
    ["line"] = 14,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 25,
    ["type"] = "LPAREN",
  },
  [30] = {
    ["line"] = 14,
    ["raw"] = "expression",
    ["value"] = "expression",
    ["col"] = 26,
    ["type"] = "IDENTIFIER",
  },
  [31] = {
    ["line"] = 14,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 36,
    ["type"] = "RPAREN",
  },
  [32] = {
    ["line"] = 15,
    ["raw"] = "if",
    ["value"] = "if",
    ["col"] = 5,
    ["type"] = "KEYWORD",
  },
  [33] = {
    ["line"] = 15,
    ["raw"] = "not",
    ["value"] = "not",
    ["col"] = 8,
    ["type"] = "KEYWORD",
  },
  [34] = {
    ["line"] = 15,
    ["raw"] = "expression",
    ["value"] = "expression",
    ["col"] = 12,
    ["type"] = "IDENTIFIER",
  },
  [35] = {
    ["line"] = 15,
    ["raw"] = "or",
    ["value"] = "or",
    ["col"] = 23,
    ["type"] = "KEYWORD",
  },
  [36] = {
    ["line"] = 15,
    ["raw"] = "expression",
    ["value"] = "expression",
    ["col"] = 26,
    ["type"] = "IDENTIFIER",
  },
  [37] = {
    ["line"] = 15,
    ["raw"] = "==",
    ["value"] = "==",
    ["col"] = 37,
    ["type"] = "EQ",
  },
  [38] = {
    ["line"] = 15,
    ["raw"] = "\"\"",
    ["value"] = "",
    ["col"] = 40,
    ["type"] = "STRING",
  },
  [39] = {
    ["line"] = 15,
    ["raw"] = "then",
    ["value"] = "then",
    ["col"] = 43,
    ["type"] = "KEYWORD",
  },
  [40] = {
    ["line"] = 16,
    ["raw"] = "return",
    ["value"] = "return",
    ["col"] = 9,
    ["type"] = "KEYWORD",
  },
  [41] = {
    ["line"] = 16,
    ["raw"] = "\"Error: Empty expression\"",
    ["value"] = "Error: Empty expression",
    ["col"] = 16,
    ["type"] = "STRING",
  },
  [42] = {
    ["line"] = 17,
    ["raw"] = "end",
    ["value"] = "end",
    ["col"] = 5,
    ["type"] = "KEYWORD",
  },
  [43] = {
    ["line"] = 19,
    ["raw"] = "local",
    ["value"] = "local",
    ["col"] = 5,
    ["type"] = "KEYWORD",
  },
  [44] = {
    ["line"] = 19,
    ["raw"] = "status",
    ["value"] = "status",
    ["col"] = 11,
    ["type"] = "IDENTIFIER",
  },
  [45] = {
    ["line"] = 19,
    ["raw"] = ",",
    ["value"] = ",",
    ["col"] = 17,
    ["type"] = "COMMA",
  },
  [46] = {
    ["line"] = 19,
    ["raw"] = "result",
    ["value"] = "result",
    ["col"] = 19,
    ["type"] = "IDENTIFIER",
  },
  [47] = {
    ["line"] = 19,
    ["raw"] = "=",
    ["value"] = "=",
    ["col"] = 26,
    ["type"] = "ASSIGN",
  },
  [48] = {
    ["line"] = 19,
    ["raw"] = "pcall",
    ["value"] = "pcall",
    ["col"] = 28,
    ["type"] = "IDENTIFIER",
  },
  [49] = {
    ["line"] = 19,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 33,
    ["type"] = "LPAREN",
  },
  [50] = {
    ["line"] = 19,
    ["raw"] = "function",
    ["value"] = "function",
    ["col"] = 34,
    ["type"] = "KEYWORD",
  },
  [51] = {
    ["line"] = 19,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 42,
    ["type"] = "LPAREN",
  },
  [52] = {
    ["line"] = 19,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 43,
    ["type"] = "RPAREN",
  },
  [53] = {
    ["line"] = 20,
    ["raw"] = "local",
    ["value"] = "local",
    ["col"] = 9,
    ["type"] = "KEYWORD",
  },
  [54] = {
    ["line"] = 20,
    ["raw"] = "func",
    ["value"] = "func",
    ["col"] = 15,
    ["type"] = "IDENTIFIER",
  },
  [55] = {
    ["line"] = 20,
    ["raw"] = "=",
    ["value"] = "=",
    ["col"] = 20,
    ["type"] = "ASSIGN",
  },
  [56] = {
    ["line"] = 20,
    ["raw"] = "load",
    ["value"] = "load",
    ["col"] = 22,
    ["type"] = "IDENTIFIER",
  },
  [57] = {
    ["line"] = 20,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 26,
    ["type"] = "LPAREN",
  },
  [58] = {
    ["line"] = 20,
    ["raw"] = "\"return \"",
    ["value"] = "return ",
    ["col"] = 27,
    ["type"] = "STRING",
  },
  [59] = {
    ["line"] = 20,
    ["raw"] = "..",
    ["value"] = "..",
    ["col"] = 37,
    ["type"] = "CONCAT",
  },
  [60] = {
    ["line"] = 20,
    ["raw"] = "expression",
    ["value"] = "expression",
    ["col"] = 40,
    ["type"] = "IDENTIFIER",
  },
  [61] = {
    ["line"] = 20,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 50,
    ["type"] = "RPAREN",
  },
  [62] = {
    ["line"] = 21,
    ["raw"] = "if",
    ["value"] = "if",
    ["col"] = 9,
    ["type"] = "KEYWORD",
  },
  [63] = {
    ["line"] = 21,
    ["raw"] = "func",
    ["value"] = "func",
    ["col"] = 12,
    ["type"] = "IDENTIFIER",
  },
  [64] = {
    ["line"] = 21,
    ["raw"] = "then",
    ["value"] = "then",
    ["col"] = 17,
    ["type"] = "KEYWORD",
  },
  [65] = {
    ["line"] = 22,
    ["raw"] = "return",
    ["value"] = "return",
    ["col"] = 13,
    ["type"] = "KEYWORD",
  },
  [66] = {
    ["line"] = 22,
    ["raw"] = "func",
    ["value"] = "func",
    ["col"] = 20,
    ["type"] = "IDENTIFIER",
  },
  [67] = {
    ["line"] = 22,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 24,
    ["type"] = "LPAREN",
  },
  [68] = {
    ["line"] = 22,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 25,
    ["type"] = "RPAREN",
  },
  [69] = {
    ["line"] = 23,
    ["raw"] = "else",
    ["value"] = "else",
    ["col"] = 9,
    ["type"] = "KEYWORD",
  },
  [70] = {
    ["line"] = 24,
    ["raw"] = "return",
    ["value"] = "return",
    ["col"] = 13,
    ["type"] = "KEYWORD",
  },
  [71] = {
    ["line"] = 24,
    ["raw"] = "nil",
    ["col"] = 20,
    ["type"] = "NIL",
  },
  [72] = {
    ["line"] = 24,
    ["raw"] = ",",
    ["value"] = ",",
    ["col"] = 23,
    ["type"] = "COMMA",
  },
  [73] = {
    ["line"] = 24,
    ["raw"] = "\"Invalid expression\"",
    ["value"] = "Invalid expression",
    ["col"] = 25,
    ["type"] = "STRING",
  },
  [74] = {
    ["line"] = 25,
    ["raw"] = "end",
    ["value"] = "end",
    ["col"] = 9,
    ["type"] = "KEYWORD",
  },
  [75] = {
    ["line"] = 26,
    ["raw"] = "end",
    ["value"] = "end",
    ["col"] = 5,
    ["type"] = "KEYWORD",
  },
  [76] = {
    ["line"] = 26,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 8,
    ["type"] = "RPAREN",
  },
  [77] = {
    ["line"] = 28,
    ["raw"] = "if",
    ["value"] = "if",
    ["col"] = 5,
    ["type"] = "KEYWORD",
  },
  [78] = {
    ["line"] = 28,
    ["raw"] = "status",
    ["value"] = "status",
    ["col"] = 8,
    ["type"] = "IDENTIFIER",
  },
  [79] = {
    ["line"] = 28,
    ["raw"] = "then",
    ["value"] = "then",
    ["col"] = 15,
    ["type"] = "KEYWORD",
  },
  [80] = {
    ["line"] = 29,
    ["raw"] = "if",
    ["value"] = "if",
    ["col"] = 9,
    ["type"] = "KEYWORD",
  },
  [81] = {
    ["line"] = 29,
    ["raw"] = "type",
    ["value"] = "type",
    ["col"] = 12,
    ["type"] = "IDENTIFIER",
  },
  [82] = {
    ["line"] = 29,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 16,
    ["type"] = "LPAREN",
  },
  [83] = {
    ["line"] = 29,
    ["raw"] = "result",
    ["value"] = "result",
    ["col"] = 17,
    ["type"] = "IDENTIFIER",
  },
  [84] = {
    ["line"] = 29,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 23,
    ["type"] = "RPAREN",
  },
  [85] = {
    ["line"] = 29,
    ["raw"] = "==",
    ["value"] = "==",
    ["col"] = 25,
    ["type"] = "EQ",
  },
  [86] = {
    ["line"] = 29,
    ["raw"] = "\"number\"",
    ["value"] = "number",
    ["col"] = 28,
    ["type"] = "STRING",
  },
  [87] = {
    ["line"] = 29,
    ["raw"] = "then",
    ["value"] = "then",
    ["col"] = 37,
    ["type"] = "KEYWORD",
  },
  [88] = {
    ["line"] = 30,
    ["raw"] = "return",
    ["value"] = "return",
    ["col"] = 13,
    ["type"] = "KEYWORD",
  },
  [89] = {
    ["line"] = 30,
    ["raw"] = "result",
    ["value"] = "result",
    ["col"] = 20,
    ["type"] = "IDENTIFIER",
  },
  [90] = {
    ["line"] = 31,
    ["raw"] = "else",
    ["value"] = "else",
    ["col"] = 9,
    ["type"] = "KEYWORD",
  },
  [91] = {
    ["line"] = 32,
    ["raw"] = "return",
    ["value"] = "return",
    ["col"] = 13,
    ["type"] = "KEYWORD",
  },
  [92] = {
    ["line"] = 32,
    ["raw"] = "\"Error: Invalid result\"",
    ["value"] = "Error: Invalid result",
    ["col"] = 20,
    ["type"] = "STRING",
  },
  [93] = {
    ["line"] = 33,
    ["raw"] = "end",
    ["value"] = "end",
    ["col"] = 9,
    ["type"] = "KEYWORD",
  },
  [94] = {
    ["line"] = 34,
    ["raw"] = "else",
    ["value"] = "else",
    ["col"] = 5,
    ["type"] = "KEYWORD",
  },
  [95] = {
    ["line"] = 35,
    ["raw"] = "return",
    ["value"] = "return",
    ["col"] = 9,
    ["type"] = "KEYWORD",
  },
  [96] = {
    ["line"] = 35,
    ["raw"] = "\"Error: \"",
    ["value"] = "Error: ",
    ["col"] = 16,
    ["type"] = "STRING",
  },
  [97] = {
    ["line"] = 35,
    ["raw"] = "..",
    ["value"] = "..",
    ["col"] = 26,
    ["type"] = "CONCAT",
  },
  [98] = {
    ["line"] = 35,
    ["raw"] = "tostring",
    ["value"] = "tostring",
    ["col"] = 29,
    ["type"] = "IDENTIFIER",
  },
  [99] = {
    ["line"] = 35,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 37,
    ["type"] = "LPAREN",
  },
  [100] = {
    ["line"] = 35,
    ["raw"] = "result",
    ["value"] = "result",
    ["col"] = 38,
    ["type"] = "IDENTIFIER",
  },
  [101] = {
    ["line"] = 35,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 44,
    ["type"] = "RPAREN",
  },
  [102] = {
    ["line"] = 36,
    ["raw"] = "end",
    ["value"] = "end",
    ["col"] = 5,
    ["type"] = "KEYWORD",
  },
  [103] = {
    ["line"] = 37,
    ["raw"] = "end",
    ["value"] = "end",
    ["col"] = 1,
    ["type"] = "KEYWORD",
  },
  [104] = {
    ["line"] = 39,
    ["raw"] = "while",
    ["value"] = "while",
    ["col"] = 1,
    ["type"] = "KEYWORD",
  },
  [105] = {
    ["line"] = 39,
    ["raw"] = "true",
    ["value"] = true,
    ["col"] = 7,
    ["type"] = "TRUE",
  },
  [106] = {
    ["line"] = 39,
    ["raw"] = "do",
    ["value"] = "do",
    ["col"] = 12,
    ["type"] = "KEYWORD",
  },
  [107] = {
    ["line"] = 40,
    ["raw"] = "io",
    ["value"] = "io",
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
  },
  [108] = {
    ["line"] = 40,
    ["raw"] = ".",
    ["value"] = ".",
    ["col"] = 7,
    ["type"] = "DOT",
  },
  [109] = {
    ["line"] = 40,
    ["raw"] = "write",
    ["value"] = "write",
    ["col"] = 8,
    ["type"] = "IDENTIFIER",
  },
  [110] = {
    ["line"] = 40,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 13,
    ["type"] = "LPAREN",
  },
  [111] = {
    ["line"] = 40,
    ["raw"] = "\"> \"",
    ["value"] = "> ",
    ["col"] = 14,
    ["type"] = "STRING",
  },
  [112] = {
    ["line"] = 40,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 18,
    ["type"] = "RPAREN",
  },
  [113] = {
    ["line"] = 41,
    ["raw"] = "local",
    ["value"] = "local",
    ["col"] = 5,
    ["type"] = "KEYWORD",
  },
  [114] = {
    ["line"] = 41,
    ["raw"] = "input",
    ["value"] = "input",
    ["col"] = 11,
    ["type"] = "IDENTIFIER",
  },
  [115] = {
    ["line"] = 41,
    ["raw"] = "=",
    ["value"] = "=",
    ["col"] = 17,
    ["type"] = "ASSIGN",
  },
  [116] = {
    ["line"] = 41,
    ["raw"] = "io",
    ["value"] = "io",
    ["col"] = 19,
    ["type"] = "IDENTIFIER",
  },
  [117] = {
    ["line"] = 41,
    ["raw"] = ".",
    ["value"] = ".",
    ["col"] = 21,
    ["type"] = "DOT",
  },
  [118] = {
    ["line"] = 41,
    ["raw"] = "read",
    ["value"] = "read",
    ["col"] = 22,
    ["type"] = "IDENTIFIER",
  },
  [119] = {
    ["line"] = 41,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 26,
    ["type"] = "LPAREN",
  },
  [120] = {
    ["line"] = 41,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 27,
    ["type"] = "RPAREN",
  },
  [121] = {
    ["line"] = 43,
    ["raw"] = "if",
    ["value"] = "if",
    ["col"] = 5,
    ["type"] = "KEYWORD",
  },
  [122] = {
    ["line"] = 43,
    ["raw"] = "input",
    ["value"] = "input",
    ["col"] = 8,
    ["type"] = "IDENTIFIER",
  },
  [123] = {
    ["line"] = 43,
    ["raw"] = "==",
    ["value"] = "==",
    ["col"] = 14,
    ["type"] = "EQ",
  },
  [124] = {
    ["line"] = 43,
    ["raw"] = "\"exit\"",
    ["value"] = "exit",
    ["col"] = 17,
    ["type"] = "STRING",
  },
  [125] = {
    ["line"] = 43,
    ["raw"] = "or",
    ["value"] = "or",
    ["col"] = 24,
    ["type"] = "KEYWORD",
  },
  [126] = {
    ["line"] = 43,
    ["raw"] = "input",
    ["value"] = "input",
    ["col"] = 27,
    ["type"] = "IDENTIFIER",
  },
  [127] = {
    ["line"] = 43,
    ["raw"] = "==",
    ["value"] = "==",
    ["col"] = 33,
    ["type"] = "EQ",
  },
  [128] = {
    ["line"] = 43,
    ["raw"] = "\"quit\"",
    ["value"] = "quit",
    ["col"] = 36,
    ["type"] = "STRING",
  },
  [129] = {
    ["line"] = 43,
    ["raw"] = "then",
    ["value"] = "then",
    ["col"] = 43,
    ["type"] = "KEYWORD",
  },
  [130] = {
    ["line"] = 44,
    ["raw"] = "print",
    ["value"] = "print",
    ["col"] = 9,
    ["type"] = "IDENTIFIER",
  },
  [131] = {
    ["line"] = 44,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 14,
    ["type"] = "LPAREN",
  },
  [132] = {
    ["line"] = 44,
    ["raw"] = "\"Goodbye!\"",
    ["value"] = "Goodbye!",
    ["col"] = 15,
    ["type"] = "STRING",
  },
  [133] = {
    ["line"] = 44,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 25,
    ["type"] = "RPAREN",
  },
  [134] = {
    ["line"] = 45,
    ["raw"] = "break",
    ["value"] = "break",
    ["col"] = 9,
    ["type"] = "KEYWORD",
  },
  [135] = {
    ["line"] = 46,
    ["raw"] = "end",
    ["value"] = "end",
    ["col"] = 5,
    ["type"] = "KEYWORD",
  },
  [136] = {
    ["line"] = 48,
    ["raw"] = "local",
    ["value"] = "local",
    ["col"] = 5,
    ["type"] = "KEYWORD",
  },
  [137] = {
    ["line"] = 48,
    ["raw"] = "result",
    ["value"] = "result",
    ["col"] = 11,
    ["type"] = "IDENTIFIER",
  },
  [138] = {
    ["line"] = 48,
    ["raw"] = "=",
    ["value"] = "=",
    ["col"] = 18,
    ["type"] = "ASSIGN",
  },
  [139] = {
    ["line"] = 48,
    ["raw"] = "calculate",
    ["value"] = "calculate",
    ["col"] = 20,
    ["type"] = "IDENTIFIER",
  },
  [140] = {
    ["line"] = 48,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 29,
    ["type"] = "LPAREN",
  },
  [141] = {
    ["line"] = 48,
    ["raw"] = "input",
    ["value"] = "input",
    ["col"] = 30,
    ["type"] = "IDENTIFIER",
  },
  [142] = {
    ["line"] = 48,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 35,
    ["type"] = "RPAREN",
  },
  [143] = {
    ["line"] = 49,
    ["raw"] = "print",
    ["value"] = "print",
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
  },
  [144] = {
    ["line"] = 49,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 10,
    ["type"] = "LPAREN",
  },
  [145] = {
    ["line"] = 49,
    ["raw"] = "\"= \"",
    ["value"] = "= ",
    ["col"] = 11,
    ["type"] = "STRING",
  },
  [146] = {
    ["line"] = 49,
    ["raw"] = "..",
    ["value"] = "..",
    ["col"] = 16,
    ["type"] = "CONCAT",
  },
  [147] = {
    ["line"] = 49,
    ["raw"] = "tostring",
    ["value"] = "tostring",
    ["col"] = 19,
    ["type"] = "IDENTIFIER",
  },
  [148] = {
    ["line"] = 49,
    ["raw"] = "(",
    ["value"] = "(",
    ["col"] = 27,
    ["type"] = "LPAREN",
  },
  [149] = {
    ["line"] = 49,
    ["raw"] = "result",
    ["value"] = "result",
    ["col"] = 28,
    ["type"] = "IDENTIFIER",
  },
  [150] = {
    ["line"] = 49,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 34,
    ["type"] = "RPAREN",
  },
  [151] = {
    ["line"] = 49,
    ["raw"] = ")",
    ["value"] = ")",
    ["col"] = 35,
    ["type"] = "RPAREN",
  },
  [152] = {
    ["line"] = 50,
    ["raw"] = "end",
    ["value"] = "end",
    ["col"] = 1,
    ["type"] = "KEYWORD",
  },
  [153] = {
    ["line"] = 50,
    ["raw"] = "",
    ["value"] = "",
    ["col"] = 4,
    ["type"] = "EOF",
  },
}
}