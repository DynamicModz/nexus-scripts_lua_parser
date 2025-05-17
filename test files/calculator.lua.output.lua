return {
  ast = {
  ["comments"] = {
  },
  ["body"] = {
    [1] = {
      ["expression"] = {
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
        ["potential_metamethod"] = "__call",
        ["is_method_call"] = false,
        ["arguments"] = {
          [1] = {
            ["raw"] = "\"CLI Calculator - Type 'exit' to quit\"",
            ["value"] = "CLI Calculator - Type 'exit' to quit",
            ["type"] = "StringLiteral",
          },
        },
        ["base"] = {
          ["loc"] = {
            ["end"] = {
              ["line"] = 3,
              ["col"] = 1,
            },
            ["start"] = {
              ["line"] = 3,
              ["col"] = 1,
            },
          },
          ["name"] = "print",
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
      ["type"] = "CallStatement",
    },
    [2] = {
      ["expression"] = {
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
        ["potential_metamethod"] = "__call",
        ["is_method_call"] = false,
        ["arguments"] = {
          [1] = {
            ["raw"] = "\"Enter expressions like: 2 + 2, 10 * 5, etc.\"",
            ["value"] = "Enter expressions like: 2 + 2, 10 * 5, etc.",
            ["type"] = "StringLiteral",
          },
        },
        ["base"] = {
          ["loc"] = {
            ["end"] = {
              ["line"] = 4,
              ["col"] = 1,
            },
            ["start"] = {
              ["line"] = 4,
              ["col"] = 1,
            },
          },
          ["name"] = "print",
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
      ["type"] = "CallStatement",
    },
    [3] = {
      ["expression"] = {
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
        ["potential_metamethod"] = "__call",
        ["is_method_call"] = false,
        ["arguments"] = {
          [1] = {
            ["raw"] = "\"Supported operations: +, -, *, /, ^ (power), % (modulo)\"",
            ["value"] = "Supported operations: +, -, *, /, ^ (power), % (modulo)",
            ["type"] = "StringLiteral",
          },
        },
        ["base"] = {
          ["loc"] = {
            ["end"] = {
              ["line"] = 5,
              ["col"] = 1,
            },
            ["start"] = {
              ["line"] = 5,
              ["col"] = 1,
            },
          },
          ["name"] = "print",
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
      ["type"] = "CallStatement",
    },
    [4] = {
      ["expression"] = {
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
        ["potential_metamethod"] = "__call",
        ["is_method_call"] = false,
        ["arguments"] = {
          [1] = {
            ["raw"] = "\"-----------------------------------------\"",
            ["value"] = "-----------------------------------------",
            ["type"] = "StringLiteral",
          },
        },
        ["base"] = {
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
          ["name"] = "print",
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
      ["type"] = "CallStatement",
    },
    [5] = {
      ["expression"] = {
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
        ["potential_metamethod"] = "__call",
        ["is_method_call"] = false,
        ["arguments"] = {
          [1] = {
            ["raw"] = "\"Type exit or quit to exit the calculator.\"",
            ["value"] = "Type exit or quit to exit the calculator.",
            ["type"] = "StringLiteral",
          },
        },
        ["base"] = {
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
          ["name"] = "print",
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
      ["type"] = "CallStatement",
    },
    [6] = {
      ["expression"] = {
        ["has_metamethod"] = true,
        ["type"] = "CallExpression",
        ["potential_metamethod"] = "__call",
        ["is_method_call"] = false,
        ["arguments"] = {
          [1] = {
            ["raw"] = "\"=========================================\"",
            ["value"] = "=========================================",
            ["type"] = "StringLiteral",
          },
        },
        ["base"] = {
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
          ["name"] = "print",
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
      ["type"] = "CallStatement",
    },
    [7] = {
      ["type"] = "FunctionDeclaration",
      ["isLocal"] = true,
      ["identifier"] = {
        ["loc"] = {
          ["end"] = {
            ["line"] = 10,
            ["col"] = 16,
          },
          ["start"] = {
            ["line"] = 10,
            ["col"] = 16,
          },
        },
        ["name"] = "calculate",
        ["attributes"] = {
        },
        ["type"] = "Identifier",
      },
      ["parameters"] = {
        [1] = {
          ["loc"] = {
            ["end"] = {
              ["line"] = 10,
              ["col"] = 26,
            },
            ["start"] = {
              ["line"] = 10,
              ["col"] = 26,
            },
          },
          ["name"] = "expression",
          ["attributes"] = {
          },
          ["type"] = "Identifier",
        },
      },
      ["body"] = {
        [1] = {
          ["comments"] = {
          },
          ["clauses"] = {
            [1] = {
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
              ["condition"] = {
                ["swap_operands"] = false,
                ["left"] = {
                  ["argument"] = {
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 11,
                        ["col"] = 12,
                      },
                      ["start"] = {
                        ["line"] = 11,
                        ["col"] = 12,
                      },
                    },
                    ["name"] = "expression",
                    ["attributes"] = {
                    },
                    ["type"] = "Identifier",
                  },
                  ["operator"] = "not",
                  ["type"] = "UnaryExpression",
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 11,
                      ["col"] = 8,
                    },
                    ["start"] = {
                      ["line"] = 11,
                      ["col"] = 8,
                    },
                  },
                  ["is_lua53_feature"] = false,
                },
                ["operator"] = "or",
                ["type"] = "BinaryExpression",
                ["substituted_operator"] = "or",
                ["right"] = {
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 11,
                        ["col"] = 26,
                      },
                      ["start"] = {
                        ["line"] = 11,
                        ["col"] = 26,
                      },
                    },
                    ["name"] = "expression",
                    ["attributes"] = {
                    },
                    ["type"] = "Identifier",
                  },
                  ["operator"] = "==",
                  ["type"] = "BinaryExpression",
                  ["metamethod"] = "__eq",
                  ["substituted_operator"] = "==",
                  ["right"] = {
                    ["raw"] = "\"\"",
                    ["value"] = "",
                    ["type"] = "StringLiteral",
                  },
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
              ["type"] = "CallExpression",
              ["potential_metamethod"] = "__call",
              ["is_method_call"] = false,
              ["arguments"] = {
                [1] = {
                  ["isLocal"] = false,
                  ["body"] = {
                    [1] = {
                      ["init"] = {
                        [1] = {
                          ["has_metamethod"] = true,
                          ["type"] = "CallExpression",
                          ["potential_metamethod"] = "__call",
                          ["is_method_call"] = false,
                          ["arguments"] = {
                            [1] = {
                              ["swap_operands"] = false,
                              ["left"] = {
                                ["raw"] = "\"return \"",
                                ["value"] = "return ",
                                ["type"] = "StringLiteral",
                              },
                              ["operator"] = "..",
                              ["type"] = "BinaryExpression",
                              ["metamethod"] = "__concat",
                              ["substituted_operator"] = "..",
                              ["right"] = {
                                ["loc"] = {
                                  ["end"] = {
                                    ["line"] = 16,
                                    ["col"] = 40,
                                  },
                                  ["start"] = {
                                    ["line"] = 16,
                                    ["col"] = 40,
                                  },
                                },
                                ["name"] = "expression",
                                ["attributes"] = {
                                },
                                ["type"] = "Identifier",
                              },
                            },
                          },
                          ["base"] = {
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 16,
                                ["col"] = 22,
                              },
                              ["start"] = {
                                ["line"] = 16,
                                ["col"] = 22,
                              },
                            },
                            ["name"] = "load",
                            ["attributes"] = {
                            },
                            ["type"] = "Identifier",
                          },
                        },
                      },
                      ["variables"] = {
                        [1] = {
                          ["loc"] = {
                            ["end"] = {
                              ["line"] = 16,
                              ["col"] = 15,
                            },
                            ["start"] = {
                              ["line"] = 16,
                              ["col"] = 15,
                            },
                          },
                          ["name"] = "func",
                          ["attributes"] = {
                          },
                          ["type"] = "Identifier",
                        },
                      },
                      ["type"] = "LocalStatement",
                      ["comments"] = {
                      },
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 17,
                          ["col"] = 9,
                        },
                        ["start"] = {
                          ["line"] = 16,
                          ["col"] = 9,
                        },
                      },
                    },
                    [2] = {
                      ["comments"] = {
                      },
                      ["clauses"] = {
                        [1] = {
                          ["body"] = {
                            [1] = {
                              ["arguments"] = {
                                [1] = {
                                  ["has_metamethod"] = true,
                                  ["type"] = "CallExpression",
                                  ["potential_metamethod"] = "__call",
                                  ["is_method_call"] = false,
                                  ["arguments"] = {
                                  },
                                  ["base"] = {
                                    ["loc"] = {
                                      ["end"] = {
                                        ["line"] = 18,
                                        ["col"] = 20,
                                      },
                                      ["start"] = {
                                        ["line"] = 18,
                                        ["col"] = 20,
                                      },
                                    },
                                    ["name"] = "func",
                                    ["attributes"] = {
                                    },
                                    ["type"] = "Identifier",
                                  },
                                },
                              },
                              ["type"] = "ReturnStatement",
                            },
                          },
                          ["condition"] = {
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 17,
                                ["col"] = 12,
                              },
                              ["start"] = {
                                ["line"] = 17,
                                ["col"] = 12,
                              },
                            },
                            ["name"] = "func",
                            ["attributes"] = {
                            },
                            ["type"] = "Identifier",
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
              ["base"] = {
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 15,
                    ["col"] = 28,
                  },
                  ["start"] = {
                    ["line"] = 15,
                    ["col"] = 28,
                  },
                },
                ["name"] = "pcall",
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
            },
          },
          ["variables"] = {
            [1] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 15,
                  ["col"] = 11,
                },
                ["start"] = {
                  ["line"] = 15,
                  ["col"] = 11,
                },
              },
              ["name"] = "status",
              ["attributes"] = {
              },
              ["type"] = "Identifier",
            },
            [2] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 15,
                  ["col"] = 19,
                },
                ["start"] = {
                  ["line"] = 15,
                  ["col"] = 19,
                },
              },
              ["name"] = "result",
              ["attributes"] = {
              },
              ["type"] = "Identifier",
            },
          },
          ["type"] = "LocalStatement",
          ["comments"] = {
          },
          ["loc"] = {
            ["end"] = {
              ["line"] = 24,
              ["col"] = 5,
            },
            ["start"] = {
              ["line"] = 15,
              ["col"] = 5,
            },
          },
        },
        [3] = {
          ["comments"] = {
          },
          ["clauses"] = {
            [1] = {
              ["body"] = {
                [1] = {
                  ["comments"] = {
                  },
                  ["clauses"] = {
                    [1] = {
                      ["body"] = {
                        [1] = {
                          ["arguments"] = {
                            [1] = {
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
                              ["name"] = "result",
                              ["attributes"] = {
                              },
                              ["type"] = "Identifier",
                            },
                          },
                          ["type"] = "ReturnStatement",
                        },
                      },
                      ["condition"] = {
                        ["swap_operands"] = false,
                        ["left"] = {
                          ["has_metamethod"] = true,
                          ["type"] = "CallExpression",
                          ["potential_metamethod"] = "__call",
                          ["is_method_call"] = false,
                          ["arguments"] = {
                            [1] = {
                              ["loc"] = {
                                ["end"] = {
                                  ["line"] = 25,
                                  ["col"] = 17,
                                },
                                ["start"] = {
                                  ["line"] = 25,
                                  ["col"] = 17,
                                },
                              },
                              ["name"] = "result",
                              ["attributes"] = {
                              },
                              ["type"] = "Identifier",
                            },
                          },
                          ["base"] = {
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 25,
                                ["col"] = 12,
                              },
                              ["start"] = {
                                ["line"] = 25,
                                ["col"] = 12,
                              },
                            },
                            ["name"] = "type",
                            ["attributes"] = {
                            },
                            ["type"] = "Identifier",
                          },
                        },
                        ["operator"] = "==",
                        ["type"] = "BinaryExpression",
                        ["metamethod"] = "__eq",
                        ["substituted_operator"] = "==",
                        ["right"] = {
                          ["raw"] = "\"number\"",
                          ["value"] = "number",
                          ["type"] = "StringLiteral",
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
              ["condition"] = {
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 24,
                    ["col"] = 8,
                  },
                  ["start"] = {
                    ["line"] = 24,
                    ["col"] = 8,
                  },
                },
                ["name"] = "status",
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["type"] = "IfClause",
            },
            [2] = {
              ["body"] = {
                [1] = {
                  ["arguments"] = {
                    [1] = {
                      ["swap_operands"] = false,
                      ["left"] = {
                        ["raw"] = "\"Error: \"",
                        ["value"] = "Error: ",
                        ["type"] = "StringLiteral",
                      },
                      ["operator"] = "..",
                      ["type"] = "BinaryExpression",
                      ["metamethod"] = "__concat",
                      ["substituted_operator"] = "..",
                      ["right"] = {
                        ["has_metamethod"] = true,
                        ["type"] = "CallExpression",
                        ["potential_metamethod"] = "__call",
                        ["is_method_call"] = false,
                        ["arguments"] = {
                          [1] = {
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 31,
                                ["col"] = 38,
                              },
                              ["start"] = {
                                ["line"] = 31,
                                ["col"] = 38,
                              },
                            },
                            ["name"] = "result",
                            ["attributes"] = {
                            },
                            ["type"] = "Identifier",
                          },
                        },
                        ["base"] = {
                          ["loc"] = {
                            ["end"] = {
                              ["line"] = 31,
                              ["col"] = 29,
                            },
                            ["start"] = {
                              ["line"] = 31,
                              ["col"] = 29,
                            },
                          },
                          ["name"] = "tostring",
                          ["attributes"] = {
                          },
                          ["type"] = "Identifier",
                        },
                      },
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
    },
    [8] = {
      ["body"] = {
        [1] = {
          ["expression"] = {
            ["has_metamethod"] = true,
            ["type"] = "CallExpression",
            ["potential_metamethod"] = "__call",
            ["is_method_call"] = true,
            ["arguments"] = {
              [1] = {
                ["raw"] = "\"> \"",
                ["value"] = "> ",
                ["type"] = "StringLiteral",
              },
            },
            ["base"] = {
              ["base"] = {
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 36,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 36,
                    ["col"] = 5,
                  },
                },
                ["name"] = "io",
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["identifier"] = {
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 36,
                    ["col"] = 8,
                  },
                  ["start"] = {
                    ["line"] = 36,
                    ["col"] = 8,
                  },
                },
                ["name"] = "write",
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
            },
          },
          ["type"] = "CallStatement",
        },
        [2] = {
          ["init"] = {
            [1] = {
              ["has_metamethod"] = true,
              ["type"] = "CallExpression",
              ["potential_metamethod"] = "__call",
              ["is_method_call"] = true,
              ["arguments"] = {
              },
              ["base"] = {
                ["base"] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 37,
                      ["col"] = 19,
                    },
                    ["start"] = {
                      ["line"] = 37,
                      ["col"] = 19,
                    },
                  },
                  ["name"] = "io",
                  ["attributes"] = {
                  },
                  ["type"] = "Identifier",
                },
                ["identifier"] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 37,
                      ["col"] = 22,
                    },
                    ["start"] = {
                      ["line"] = 37,
                      ["col"] = 22,
                    },
                  },
                  ["name"] = "read",
                  ["attributes"] = {
                  },
                  ["type"] = "Identifier",
                },
                ["indexer"] = ".",
                ["type"] = "MemberExpression",
              },
            },
          },
          ["variables"] = {
            [1] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 37,
                  ["col"] = 11,
                },
                ["start"] = {
                  ["line"] = 37,
                  ["col"] = 11,
                },
              },
              ["name"] = "input",
              ["attributes"] = {
              },
              ["type"] = "Identifier",
            },
          },
          ["type"] = "LocalStatement",
          ["comments"] = {
          },
          ["loc"] = {
            ["end"] = {
              ["line"] = 39,
              ["col"] = 5,
            },
            ["start"] = {
              ["line"] = 37,
              ["col"] = 5,
            },
          },
        },
        [3] = {
          ["comments"] = {
          },
          ["clauses"] = {
            [1] = {
              ["body"] = {
                [1] = {
                  ["expression"] = {
                    ["has_metamethod"] = true,
                    ["type"] = "CallExpression",
                    ["potential_metamethod"] = "__call",
                    ["is_method_call"] = false,
                    ["arguments"] = {
                      [1] = {
                        ["raw"] = "\"Goodbye!\"",
                        ["value"] = "Goodbye!",
                        ["type"] = "StringLiteral",
                      },
                    },
                    ["base"] = {
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 40,
                          ["col"] = 9,
                        },
                        ["start"] = {
                          ["line"] = 40,
                          ["col"] = 9,
                        },
                      },
                      ["name"] = "print",
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                  },
                  ["type"] = "CallStatement",
                },
                [2] = {
                  ["type"] = "BreakStatement",
                },
              },
              ["condition"] = {
                ["swap_operands"] = false,
                ["left"] = {
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 39,
                        ["col"] = 8,
                      },
                      ["start"] = {
                        ["line"] = 39,
                        ["col"] = 8,
                      },
                    },
                    ["name"] = "input",
                    ["attributes"] = {
                    },
                    ["type"] = "Identifier",
                  },
                  ["operator"] = "==",
                  ["type"] = "BinaryExpression",
                  ["metamethod"] = "__eq",
                  ["substituted_operator"] = "==",
                  ["right"] = {
                    ["raw"] = "\"exit\"",
                    ["value"] = "exit",
                    ["type"] = "StringLiteral",
                  },
                },
                ["operator"] = "or",
                ["type"] = "BinaryExpression",
                ["substituted_operator"] = "or",
                ["right"] = {
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 39,
                        ["col"] = 27,
                      },
                      ["start"] = {
                        ["line"] = 39,
                        ["col"] = 27,
                      },
                    },
                    ["name"] = "input",
                    ["attributes"] = {
                    },
                    ["type"] = "Identifier",
                  },
                  ["operator"] = "==",
                  ["type"] = "BinaryExpression",
                  ["metamethod"] = "__eq",
                  ["substituted_operator"] = "==",
                  ["right"] = {
                    ["raw"] = "\"quit\"",
                    ["value"] = "quit",
                    ["type"] = "StringLiteral",
                  },
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
              ["type"] = "CallExpression",
              ["potential_metamethod"] = "__call",
              ["is_method_call"] = false,
              ["arguments"] = {
                [1] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 44,
                      ["col"] = 30,
                    },
                    ["start"] = {
                      ["line"] = 44,
                      ["col"] = 30,
                    },
                  },
                  ["name"] = "input",
                  ["attributes"] = {
                  },
                  ["type"] = "Identifier",
                },
              },
              ["base"] = {
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 44,
                    ["col"] = 20,
                  },
                  ["start"] = {
                    ["line"] = 44,
                    ["col"] = 20,
                  },
                },
                ["name"] = "calculate",
                ["attributes"] = {
                },
                ["type"] = "Identifier",
              },
            },
          },
          ["variables"] = {
            [1] = {
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
              ["name"] = "result",
              ["attributes"] = {
              },
              ["type"] = "Identifier",
            },
          },
          ["type"] = "LocalStatement",
          ["comments"] = {
          },
          ["loc"] = {
            ["end"] = {
              ["line"] = 45,
              ["col"] = 5,
            },
            ["start"] = {
              ["line"] = 44,
              ["col"] = 5,
            },
          },
        },
        [5] = {
          ["expression"] = {
            ["has_metamethod"] = true,
            ["type"] = "CallExpression",
            ["potential_metamethod"] = "__call",
            ["is_method_call"] = false,
            ["arguments"] = {
              [1] = {
                ["swap_operands"] = false,
                ["left"] = {
                  ["raw"] = "\"= \"",
                  ["value"] = "= ",
                  ["type"] = "StringLiteral",
                },
                ["operator"] = "..",
                ["type"] = "BinaryExpression",
                ["metamethod"] = "__concat",
                ["substituted_operator"] = "..",
                ["right"] = {
                  ["has_metamethod"] = true,
                  ["type"] = "CallExpression",
                  ["potential_metamethod"] = "__call",
                  ["is_method_call"] = false,
                  ["arguments"] = {
                    [1] = {
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 45,
                          ["col"] = 28,
                        },
                        ["start"] = {
                          ["line"] = 45,
                          ["col"] = 28,
                        },
                      },
                      ["name"] = "result",
                      ["attributes"] = {
                      },
                      ["type"] = "Identifier",
                    },
                  },
                  ["base"] = {
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 45,
                        ["col"] = 19,
                      },
                      ["start"] = {
                        ["line"] = 45,
                        ["col"] = 19,
                      },
                    },
                    ["name"] = "tostring",
                    ["attributes"] = {
                    },
                    ["type"] = "Identifier",
                  },
                },
              },
            },
            ["base"] = {
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
              ["name"] = "print",
              ["attributes"] = {
              },
              ["type"] = "Identifier",
            },
          },
          ["type"] = "CallStatement",
        },
      },
      ["condition"] = {
        ["value"] = true,
        ["type"] = "BooleanLiteral",
      },
      ["type"] = "WhileStatement",
    },
  },
  ["type"] = "Chunk",
},
  tokens = {
  [1] = {
    ["raw"] = "#!#!/usr/bin/env lua",
    ["col"] = 1,
    ["type"] = "SHEBANG",
    ["line"] = 1,
    ["value"] = "#!/usr/bin/env lua",
  },
  [2] = {
    ["raw"] = "print",
    ["col"] = 1,
    ["type"] = "IDENTIFIER",
    ["line"] = 3,
    ["value"] = "print",
  },
  [3] = {
    ["raw"] = "(",
    ["col"] = 6,
    ["type"] = "LPAREN",
    ["line"] = 3,
    ["value"] = "(",
  },
  [4] = {
    ["raw"] = "\"CLI Calculator - Type 'exit' to quit\"",
    ["col"] = 7,
    ["type"] = "STRING",
    ["line"] = 3,
    ["value"] = "CLI Calculator - Type 'exit' to quit",
  },
  [5] = {
    ["raw"] = ")",
    ["col"] = 45,
    ["type"] = "RPAREN",
    ["line"] = 3,
    ["value"] = ")",
  },
  [6] = {
    ["raw"] = "print",
    ["col"] = 1,
    ["type"] = "IDENTIFIER",
    ["line"] = 4,
    ["value"] = "print",
  },
  [7] = {
    ["raw"] = "(",
    ["col"] = 6,
    ["type"] = "LPAREN",
    ["line"] = 4,
    ["value"] = "(",
  },
  [8] = {
    ["raw"] = "\"Enter expressions like: 2 + 2, 10 * 5, etc.\"",
    ["col"] = 7,
    ["type"] = "STRING",
    ["line"] = 4,
    ["value"] = "Enter expressions like: 2 + 2, 10 * 5, etc.",
  },
  [9] = {
    ["raw"] = ")",
    ["col"] = 52,
    ["type"] = "RPAREN",
    ["line"] = 4,
    ["value"] = ")",
  },
  [10] = {
    ["raw"] = "print",
    ["col"] = 1,
    ["type"] = "IDENTIFIER",
    ["line"] = 5,
    ["value"] = "print",
  },
  [11] = {
    ["raw"] = "(",
    ["col"] = 6,
    ["type"] = "LPAREN",
    ["line"] = 5,
    ["value"] = "(",
  },
  [12] = {
    ["raw"] = "\"Supported operations: +, -, *, /, ^ (power), % (modulo)\"",
    ["col"] = 7,
    ["type"] = "STRING",
    ["line"] = 5,
    ["value"] = "Supported operations: +, -, *, /, ^ (power), % (modulo)",
  },
  [13] = {
    ["raw"] = ")",
    ["col"] = 64,
    ["type"] = "RPAREN",
    ["line"] = 5,
    ["value"] = ")",
  },
  [14] = {
    ["raw"] = "print",
    ["col"] = 1,
    ["type"] = "IDENTIFIER",
    ["line"] = 6,
    ["value"] = "print",
  },
  [15] = {
    ["raw"] = "(",
    ["col"] = 6,
    ["type"] = "LPAREN",
    ["line"] = 6,
    ["value"] = "(",
  },
  [16] = {
    ["raw"] = "\"-----------------------------------------\"",
    ["col"] = 7,
    ["type"] = "STRING",
    ["line"] = 6,
    ["value"] = "-----------------------------------------",
  },
  [17] = {
    ["raw"] = ")",
    ["col"] = 50,
    ["type"] = "RPAREN",
    ["line"] = 6,
    ["value"] = ")",
  },
  [18] = {
    ["raw"] = "print",
    ["col"] = 1,
    ["type"] = "IDENTIFIER",
    ["line"] = 7,
    ["value"] = "print",
  },
  [19] = {
    ["raw"] = "(",
    ["col"] = 6,
    ["type"] = "LPAREN",
    ["line"] = 7,
    ["value"] = "(",
  },
  [20] = {
    ["raw"] = "\"Type exit or quit to exit the calculator.\"",
    ["col"] = 7,
    ["type"] = "STRING",
    ["line"] = 7,
    ["value"] = "Type exit or quit to exit the calculator.",
  },
  [21] = {
    ["raw"] = ")",
    ["col"] = 50,
    ["type"] = "RPAREN",
    ["line"] = 7,
    ["value"] = ")",
  },
  [22] = {
    ["raw"] = "print",
    ["col"] = 1,
    ["type"] = "IDENTIFIER",
    ["line"] = 8,
    ["value"] = "print",
  },
  [23] = {
    ["raw"] = "(",
    ["col"] = 6,
    ["type"] = "LPAREN",
    ["line"] = 8,
    ["value"] = "(",
  },
  [24] = {
    ["raw"] = "\"=========================================\"",
    ["col"] = 7,
    ["type"] = "STRING",
    ["line"] = 8,
    ["value"] = "=========================================",
  },
  [25] = {
    ["raw"] = ")",
    ["col"] = 50,
    ["type"] = "RPAREN",
    ["line"] = 8,
    ["value"] = ")",
  },
  [26] = {
    ["raw"] = "local",
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["line"] = 10,
    ["value"] = "local",
  },
  [27] = {
    ["raw"] = "function",
    ["col"] = 7,
    ["type"] = "KEYWORD",
    ["line"] = 10,
    ["value"] = "function",
  },
  [28] = {
    ["raw"] = "calculate",
    ["col"] = 16,
    ["type"] = "IDENTIFIER",
    ["line"] = 10,
    ["value"] = "calculate",
  },
  [29] = {
    ["raw"] = "(",
    ["col"] = 25,
    ["type"] = "LPAREN",
    ["line"] = 10,
    ["value"] = "(",
  },
  [30] = {
    ["raw"] = "expression",
    ["col"] = 26,
    ["type"] = "IDENTIFIER",
    ["line"] = 10,
    ["value"] = "expression",
  },
  [31] = {
    ["raw"] = ")",
    ["col"] = 36,
    ["type"] = "RPAREN",
    ["line"] = 10,
    ["value"] = ")",
  },
  [32] = {
    ["raw"] = "if",
    ["col"] = 5,
    ["type"] = "KEYWORD",
    ["line"] = 11,
    ["value"] = "if",
  },
  [33] = {
    ["raw"] = "not",
    ["col"] = 8,
    ["type"] = "KEYWORD",
    ["line"] = 11,
    ["value"] = "not",
  },
  [34] = {
    ["raw"] = "expression",
    ["col"] = 12,
    ["type"] = "IDENTIFIER",
    ["line"] = 11,
    ["value"] = "expression",
  },
  [35] = {
    ["raw"] = "or",
    ["col"] = 23,
    ["type"] = "KEYWORD",
    ["line"] = 11,
    ["value"] = "or",
  },
  [36] = {
    ["raw"] = "expression",
    ["col"] = 26,
    ["type"] = "IDENTIFIER",
    ["line"] = 11,
    ["value"] = "expression",
  },
  [37] = {
    ["raw"] = "==",
    ["col"] = 37,
    ["type"] = "EQ",
    ["line"] = 11,
    ["value"] = "==",
  },
  [38] = {
    ["raw"] = "\"\"",
    ["col"] = 40,
    ["type"] = "STRING",
    ["line"] = 11,
    ["value"] = "",
  },
  [39] = {
    ["raw"] = "then",
    ["col"] = 43,
    ["type"] = "KEYWORD",
    ["line"] = 11,
    ["value"] = "then",
  },
  [40] = {
    ["raw"] = "return",
    ["col"] = 9,
    ["type"] = "KEYWORD",
    ["line"] = 12,
    ["value"] = "return",
  },
  [41] = {
    ["raw"] = "\"Error: Empty expression\"",
    ["col"] = 16,
    ["type"] = "STRING",
    ["line"] = 12,
    ["value"] = "Error: Empty expression",
  },
  [42] = {
    ["raw"] = "end",
    ["col"] = 5,
    ["type"] = "KEYWORD",
    ["line"] = 13,
    ["value"] = "end",
  },
  [43] = {
    ["raw"] = "local",
    ["col"] = 5,
    ["type"] = "KEYWORD",
    ["line"] = 15,
    ["value"] = "local",
  },
  [44] = {
    ["raw"] = "status",
    ["col"] = 11,
    ["type"] = "IDENTIFIER",
    ["line"] = 15,
    ["value"] = "status",
  },
  [45] = {
    ["raw"] = ",",
    ["col"] = 17,
    ["type"] = "COMMA",
    ["line"] = 15,
    ["value"] = ",",
  },
  [46] = {
    ["raw"] = "result",
    ["col"] = 19,
    ["type"] = "IDENTIFIER",
    ["line"] = 15,
    ["value"] = "result",
  },
  [47] = {
    ["raw"] = "=",
    ["col"] = 26,
    ["type"] = "ASSIGN",
    ["line"] = 15,
    ["value"] = "=",
  },
  [48] = {
    ["raw"] = "pcall",
    ["col"] = 28,
    ["type"] = "IDENTIFIER",
    ["line"] = 15,
    ["value"] = "pcall",
  },
  [49] = {
    ["raw"] = "(",
    ["col"] = 33,
    ["type"] = "LPAREN",
    ["line"] = 15,
    ["value"] = "(",
  },
  [50] = {
    ["raw"] = "function",
    ["col"] = 34,
    ["type"] = "KEYWORD",
    ["line"] = 15,
    ["value"] = "function",
  },
  [51] = {
    ["raw"] = "(",
    ["col"] = 42,
    ["type"] = "LPAREN",
    ["line"] = 15,
    ["value"] = "(",
  },
  [52] = {
    ["raw"] = ")",
    ["col"] = 43,
    ["type"] = "RPAREN",
    ["line"] = 15,
    ["value"] = ")",
  },
  [53] = {
    ["raw"] = "local",
    ["col"] = 9,
    ["type"] = "KEYWORD",
    ["line"] = 16,
    ["value"] = "local",
  },
  [54] = {
    ["raw"] = "func",
    ["col"] = 15,
    ["type"] = "IDENTIFIER",
    ["line"] = 16,
    ["value"] = "func",
  },
  [55] = {
    ["raw"] = "=",
    ["col"] = 20,
    ["type"] = "ASSIGN",
    ["line"] = 16,
    ["value"] = "=",
  },
  [56] = {
    ["raw"] = "load",
    ["col"] = 22,
    ["type"] = "IDENTIFIER",
    ["line"] = 16,
    ["value"] = "load",
  },
  [57] = {
    ["raw"] = "(",
    ["col"] = 26,
    ["type"] = "LPAREN",
    ["line"] = 16,
    ["value"] = "(",
  },
  [58] = {
    ["raw"] = "\"return \"",
    ["col"] = 27,
    ["type"] = "STRING",
    ["line"] = 16,
    ["value"] = "return ",
  },
  [59] = {
    ["raw"] = "..",
    ["col"] = 37,
    ["type"] = "CONCAT",
    ["line"] = 16,
    ["value"] = "..",
  },
  [60] = {
    ["raw"] = "expression",
    ["col"] = 40,
    ["type"] = "IDENTIFIER",
    ["line"] = 16,
    ["value"] = "expression",
  },
  [61] = {
    ["raw"] = ")",
    ["col"] = 50,
    ["type"] = "RPAREN",
    ["line"] = 16,
    ["value"] = ")",
  },
  [62] = {
    ["raw"] = "if",
    ["col"] = 9,
    ["type"] = "KEYWORD",
    ["line"] = 17,
    ["value"] = "if",
  },
  [63] = {
    ["raw"] = "func",
    ["col"] = 12,
    ["type"] = "IDENTIFIER",
    ["line"] = 17,
    ["value"] = "func",
  },
  [64] = {
    ["raw"] = "then",
    ["col"] = 17,
    ["type"] = "KEYWORD",
    ["line"] = 17,
    ["value"] = "then",
  },
  [65] = {
    ["raw"] = "return",
    ["col"] = 13,
    ["type"] = "KEYWORD",
    ["line"] = 18,
    ["value"] = "return",
  },
  [66] = {
    ["raw"] = "func",
    ["col"] = 20,
    ["type"] = "IDENTIFIER",
    ["line"] = 18,
    ["value"] = "func",
  },
  [67] = {
    ["raw"] = "(",
    ["col"] = 24,
    ["type"] = "LPAREN",
    ["line"] = 18,
    ["value"] = "(",
  },
  [68] = {
    ["raw"] = ")",
    ["col"] = 25,
    ["type"] = "RPAREN",
    ["line"] = 18,
    ["value"] = ")",
  },
  [69] = {
    ["raw"] = "else",
    ["col"] = 9,
    ["type"] = "KEYWORD",
    ["line"] = 19,
    ["value"] = "else",
  },
  [70] = {
    ["raw"] = "return",
    ["col"] = 13,
    ["type"] = "KEYWORD",
    ["line"] = 20,
    ["value"] = "return",
  },
  [71] = {
    ["raw"] = "nil",
    ["col"] = 20,
    ["type"] = "NIL",
    ["line"] = 20,
  },
  [72] = {
    ["raw"] = ",",
    ["col"] = 23,
    ["type"] = "COMMA",
    ["line"] = 20,
    ["value"] = ",",
  },
  [73] = {
    ["raw"] = "\"Invalid expression\"",
    ["col"] = 25,
    ["type"] = "STRING",
    ["line"] = 20,
    ["value"] = "Invalid expression",
  },
  [74] = {
    ["raw"] = "end",
    ["col"] = 9,
    ["type"] = "KEYWORD",
    ["line"] = 21,
    ["value"] = "end",
  },
  [75] = {
    ["raw"] = "end",
    ["col"] = 5,
    ["type"] = "KEYWORD",
    ["line"] = 22,
    ["value"] = "end",
  },
  [76] = {
    ["raw"] = ")",
    ["col"] = 8,
    ["type"] = "RPAREN",
    ["line"] = 22,
    ["value"] = ")",
  },
  [77] = {
    ["raw"] = "if",
    ["col"] = 5,
    ["type"] = "KEYWORD",
    ["line"] = 24,
    ["value"] = "if",
  },
  [78] = {
    ["raw"] = "status",
    ["col"] = 8,
    ["type"] = "IDENTIFIER",
    ["line"] = 24,
    ["value"] = "status",
  },
  [79] = {
    ["raw"] = "then",
    ["col"] = 15,
    ["type"] = "KEYWORD",
    ["line"] = 24,
    ["value"] = "then",
  },
  [80] = {
    ["raw"] = "if",
    ["col"] = 9,
    ["type"] = "KEYWORD",
    ["line"] = 25,
    ["value"] = "if",
  },
  [81] = {
    ["raw"] = "type",
    ["col"] = 12,
    ["type"] = "IDENTIFIER",
    ["line"] = 25,
    ["value"] = "type",
  },
  [82] = {
    ["raw"] = "(",
    ["col"] = 16,
    ["type"] = "LPAREN",
    ["line"] = 25,
    ["value"] = "(",
  },
  [83] = {
    ["raw"] = "result",
    ["col"] = 17,
    ["type"] = "IDENTIFIER",
    ["line"] = 25,
    ["value"] = "result",
  },
  [84] = {
    ["raw"] = ")",
    ["col"] = 23,
    ["type"] = "RPAREN",
    ["line"] = 25,
    ["value"] = ")",
  },
  [85] = {
    ["raw"] = "==",
    ["col"] = 25,
    ["type"] = "EQ",
    ["line"] = 25,
    ["value"] = "==",
  },
  [86] = {
    ["raw"] = "\"number\"",
    ["col"] = 28,
    ["type"] = "STRING",
    ["line"] = 25,
    ["value"] = "number",
  },
  [87] = {
    ["raw"] = "then",
    ["col"] = 37,
    ["type"] = "KEYWORD",
    ["line"] = 25,
    ["value"] = "then",
  },
  [88] = {
    ["raw"] = "return",
    ["col"] = 13,
    ["type"] = "KEYWORD",
    ["line"] = 26,
    ["value"] = "return",
  },
  [89] = {
    ["raw"] = "result",
    ["col"] = 20,
    ["type"] = "IDENTIFIER",
    ["line"] = 26,
    ["value"] = "result",
  },
  [90] = {
    ["raw"] = "else",
    ["col"] = 9,
    ["type"] = "KEYWORD",
    ["line"] = 27,
    ["value"] = "else",
  },
  [91] = {
    ["raw"] = "return",
    ["col"] = 13,
    ["type"] = "KEYWORD",
    ["line"] = 28,
    ["value"] = "return",
  },
  [92] = {
    ["raw"] = "\"Error: Invalid result\"",
    ["col"] = 20,
    ["type"] = "STRING",
    ["line"] = 28,
    ["value"] = "Error: Invalid result",
  },
  [93] = {
    ["raw"] = "end",
    ["col"] = 9,
    ["type"] = "KEYWORD",
    ["line"] = 29,
    ["value"] = "end",
  },
  [94] = {
    ["raw"] = "else",
    ["col"] = 5,
    ["type"] = "KEYWORD",
    ["line"] = 30,
    ["value"] = "else",
  },
  [95] = {
    ["raw"] = "return",
    ["col"] = 9,
    ["type"] = "KEYWORD",
    ["line"] = 31,
    ["value"] = "return",
  },
  [96] = {
    ["raw"] = "\"Error: \"",
    ["col"] = 16,
    ["type"] = "STRING",
    ["line"] = 31,
    ["value"] = "Error: ",
  },
  [97] = {
    ["raw"] = "..",
    ["col"] = 26,
    ["type"] = "CONCAT",
    ["line"] = 31,
    ["value"] = "..",
  },
  [98] = {
    ["raw"] = "tostring",
    ["col"] = 29,
    ["type"] = "IDENTIFIER",
    ["line"] = 31,
    ["value"] = "tostring",
  },
  [99] = {
    ["raw"] = "(",
    ["col"] = 37,
    ["type"] = "LPAREN",
    ["line"] = 31,
    ["value"] = "(",
  },
  [100] = {
    ["raw"] = "result",
    ["col"] = 38,
    ["type"] = "IDENTIFIER",
    ["line"] = 31,
    ["value"] = "result",
  },
  [101] = {
    ["raw"] = ")",
    ["col"] = 44,
    ["type"] = "RPAREN",
    ["line"] = 31,
    ["value"] = ")",
  },
  [102] = {
    ["raw"] = "end",
    ["col"] = 5,
    ["type"] = "KEYWORD",
    ["line"] = 32,
    ["value"] = "end",
  },
  [103] = {
    ["raw"] = "end",
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["line"] = 33,
    ["value"] = "end",
  },
  [104] = {
    ["raw"] = "while",
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["line"] = 35,
    ["value"] = "while",
  },
  [105] = {
    ["raw"] = "true",
    ["col"] = 7,
    ["type"] = "TRUE",
    ["line"] = 35,
    ["value"] = true,
  },
  [106] = {
    ["raw"] = "do",
    ["col"] = 12,
    ["type"] = "KEYWORD",
    ["line"] = 35,
    ["value"] = "do",
  },
  [107] = {
    ["raw"] = "io",
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["line"] = 36,
    ["value"] = "io",
  },
  [108] = {
    ["raw"] = ".",
    ["col"] = 7,
    ["type"] = "DOT",
    ["line"] = 36,
    ["value"] = ".",
  },
  [109] = {
    ["raw"] = "write",
    ["col"] = 8,
    ["type"] = "IDENTIFIER",
    ["line"] = 36,
    ["value"] = "write",
  },
  [110] = {
    ["raw"] = "(",
    ["col"] = 13,
    ["type"] = "LPAREN",
    ["line"] = 36,
    ["value"] = "(",
  },
  [111] = {
    ["raw"] = "\"> \"",
    ["col"] = 14,
    ["type"] = "STRING",
    ["line"] = 36,
    ["value"] = "> ",
  },
  [112] = {
    ["raw"] = ")",
    ["col"] = 18,
    ["type"] = "RPAREN",
    ["line"] = 36,
    ["value"] = ")",
  },
  [113] = {
    ["raw"] = "local",
    ["col"] = 5,
    ["type"] = "KEYWORD",
    ["line"] = 37,
    ["value"] = "local",
  },
  [114] = {
    ["raw"] = "input",
    ["col"] = 11,
    ["type"] = "IDENTIFIER",
    ["line"] = 37,
    ["value"] = "input",
  },
  [115] = {
    ["raw"] = "=",
    ["col"] = 17,
    ["type"] = "ASSIGN",
    ["line"] = 37,
    ["value"] = "=",
  },
  [116] = {
    ["raw"] = "io",
    ["col"] = 19,
    ["type"] = "IDENTIFIER",
    ["line"] = 37,
    ["value"] = "io",
  },
  [117] = {
    ["raw"] = ".",
    ["col"] = 21,
    ["type"] = "DOT",
    ["line"] = 37,
    ["value"] = ".",
  },
  [118] = {
    ["raw"] = "read",
    ["col"] = 22,
    ["type"] = "IDENTIFIER",
    ["line"] = 37,
    ["value"] = "read",
  },
  [119] = {
    ["raw"] = "(",
    ["col"] = 26,
    ["type"] = "LPAREN",
    ["line"] = 37,
    ["value"] = "(",
  },
  [120] = {
    ["raw"] = ")",
    ["col"] = 27,
    ["type"] = "RPAREN",
    ["line"] = 37,
    ["value"] = ")",
  },
  [121] = {
    ["raw"] = "if",
    ["col"] = 5,
    ["type"] = "KEYWORD",
    ["line"] = 39,
    ["value"] = "if",
  },
  [122] = {
    ["raw"] = "input",
    ["col"] = 8,
    ["type"] = "IDENTIFIER",
    ["line"] = 39,
    ["value"] = "input",
  },
  [123] = {
    ["raw"] = "==",
    ["col"] = 14,
    ["type"] = "EQ",
    ["line"] = 39,
    ["value"] = "==",
  },
  [124] = {
    ["raw"] = "\"exit\"",
    ["col"] = 17,
    ["type"] = "STRING",
    ["line"] = 39,
    ["value"] = "exit",
  },
  [125] = {
    ["raw"] = "or",
    ["col"] = 24,
    ["type"] = "KEYWORD",
    ["line"] = 39,
    ["value"] = "or",
  },
  [126] = {
    ["raw"] = "input",
    ["col"] = 27,
    ["type"] = "IDENTIFIER",
    ["line"] = 39,
    ["value"] = "input",
  },
  [127] = {
    ["raw"] = "==",
    ["col"] = 33,
    ["type"] = "EQ",
    ["line"] = 39,
    ["value"] = "==",
  },
  [128] = {
    ["raw"] = "\"quit\"",
    ["col"] = 36,
    ["type"] = "STRING",
    ["line"] = 39,
    ["value"] = "quit",
  },
  [129] = {
    ["raw"] = "then",
    ["col"] = 43,
    ["type"] = "KEYWORD",
    ["line"] = 39,
    ["value"] = "then",
  },
  [130] = {
    ["raw"] = "print",
    ["col"] = 9,
    ["type"] = "IDENTIFIER",
    ["line"] = 40,
    ["value"] = "print",
  },
  [131] = {
    ["raw"] = "(",
    ["col"] = 14,
    ["type"] = "LPAREN",
    ["line"] = 40,
    ["value"] = "(",
  },
  [132] = {
    ["raw"] = "\"Goodbye!\"",
    ["col"] = 15,
    ["type"] = "STRING",
    ["line"] = 40,
    ["value"] = "Goodbye!",
  },
  [133] = {
    ["raw"] = ")",
    ["col"] = 25,
    ["type"] = "RPAREN",
    ["line"] = 40,
    ["value"] = ")",
  },
  [134] = {
    ["raw"] = "break",
    ["col"] = 9,
    ["type"] = "KEYWORD",
    ["line"] = 41,
    ["value"] = "break",
  },
  [135] = {
    ["raw"] = "end",
    ["col"] = 5,
    ["type"] = "KEYWORD",
    ["line"] = 42,
    ["value"] = "end",
  },
  [136] = {
    ["raw"] = "local",
    ["col"] = 5,
    ["type"] = "KEYWORD",
    ["line"] = 44,
    ["value"] = "local",
  },
  [137] = {
    ["raw"] = "result",
    ["col"] = 11,
    ["type"] = "IDENTIFIER",
    ["line"] = 44,
    ["value"] = "result",
  },
  [138] = {
    ["raw"] = "=",
    ["col"] = 18,
    ["type"] = "ASSIGN",
    ["line"] = 44,
    ["value"] = "=",
  },
  [139] = {
    ["raw"] = "calculate",
    ["col"] = 20,
    ["type"] = "IDENTIFIER",
    ["line"] = 44,
    ["value"] = "calculate",
  },
  [140] = {
    ["raw"] = "(",
    ["col"] = 29,
    ["type"] = "LPAREN",
    ["line"] = 44,
    ["value"] = "(",
  },
  [141] = {
    ["raw"] = "input",
    ["col"] = 30,
    ["type"] = "IDENTIFIER",
    ["line"] = 44,
    ["value"] = "input",
  },
  [142] = {
    ["raw"] = ")",
    ["col"] = 35,
    ["type"] = "RPAREN",
    ["line"] = 44,
    ["value"] = ")",
  },
  [143] = {
    ["raw"] = "print",
    ["col"] = 5,
    ["type"] = "IDENTIFIER",
    ["line"] = 45,
    ["value"] = "print",
  },
  [144] = {
    ["raw"] = "(",
    ["col"] = 10,
    ["type"] = "LPAREN",
    ["line"] = 45,
    ["value"] = "(",
  },
  [145] = {
    ["raw"] = "\"= \"",
    ["col"] = 11,
    ["type"] = "STRING",
    ["line"] = 45,
    ["value"] = "= ",
  },
  [146] = {
    ["raw"] = "..",
    ["col"] = 16,
    ["type"] = "CONCAT",
    ["line"] = 45,
    ["value"] = "..",
  },
  [147] = {
    ["raw"] = "tostring",
    ["col"] = 19,
    ["type"] = "IDENTIFIER",
    ["line"] = 45,
    ["value"] = "tostring",
  },
  [148] = {
    ["raw"] = "(",
    ["col"] = 27,
    ["type"] = "LPAREN",
    ["line"] = 45,
    ["value"] = "(",
  },
  [149] = {
    ["raw"] = "result",
    ["col"] = 28,
    ["type"] = "IDENTIFIER",
    ["line"] = 45,
    ["value"] = "result",
  },
  [150] = {
    ["raw"] = ")",
    ["col"] = 34,
    ["type"] = "RPAREN",
    ["line"] = 45,
    ["value"] = ")",
  },
  [151] = {
    ["raw"] = ")",
    ["col"] = 35,
    ["type"] = "RPAREN",
    ["line"] = 45,
    ["value"] = ")",
  },
  [152] = {
    ["raw"] = "end",
    ["col"] = 1,
    ["type"] = "KEYWORD",
    ["line"] = 46,
    ["value"] = "end",
  },
  [153] = {
    ["raw"] = "",
    ["col"] = 4,
    ["type"] = "EOF",
    ["line"] = 46,
    ["value"] = "",
  },
}
}