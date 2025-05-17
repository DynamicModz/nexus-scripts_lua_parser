return {
  ast = {
  ["comments"] = {
    [1] = {
      ["type"] = "COMMENT",
      ["value"] = " Debug parser script",
      ["raw"] = "-- Debug parser script",
      ["line"] = 1,
      ["col"] = 1,
    },
  },
  ["body"] = {
    [1] = {
      ["type"] = "FunctionDeclaration",
      ["isLocal"] = true,
      ["parameters"] = {
      },
      ["body"] = {
        [1] = {
          ["expression"] = {
            ["arguments"] = {
              [1] = {
                ["value"] = "Loading modules...",
                ["raw"] = "\"Loading modules...\"",
                ["type"] = "StringLiteral",
              },
            },
            ["is_method_call"] = false,
            ["type"] = "CallExpression",
            ["base"] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 4,
                  ["col"] = 5,
                },
                ["start"] = {
                  ["line"] = 4,
                  ["col"] = 5,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "print",
              ["type"] = "Identifier",
            },
            ["potential_metamethod"] = "__call",
            ["has_metamethod"] = true,
          },
          ["type"] = "CallStatement",
        },
        [2] = {
          ["comments"] = {
            ["leading"] = {
              [1] = {
                ["type"] = "COMMENT",
                ["value"] = " Debug parser script",
                ["raw"] = "-- Debug parser script",
                ["line"] = 1,
                ["col"] = 1,
              },
            },
          },
          ["variables"] = {
            [1] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 5,
                  ["col"] = 11,
                },
                ["start"] = {
                  ["line"] = 5,
                  ["col"] = 11,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "parser",
              ["type"] = "Identifier",
            },
          },
          ["init"] = {
            [1] = {
              ["arguments"] = {
                [1] = {
                  ["value"] = "ast_custom.parser",
                  ["raw"] = "\"ast_custom.parser\"",
                  ["type"] = "StringLiteral",
                },
              },
              ["is_method_call"] = false,
              ["type"] = "CallExpression",
              ["base"] = {
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 5,
                    ["col"] = 20,
                  },
                  ["start"] = {
                    ["line"] = 5,
                    ["col"] = 20,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "require",
                ["type"] = "Identifier",
              },
              ["potential_metamethod"] = "__call",
              ["has_metamethod"] = true,
            },
          },
          ["type"] = "LocalStatement",
          ["loc"] = {
            ["end"] = {
              ["line"] = 6,
              ["col"] = 5,
            },
            ["start"] = {
              ["line"] = 5,
              ["col"] = 5,
            },
          },
        },
        [3] = {
          ["comments"] = {
          },
          ["variables"] = {
            [1] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 6,
                  ["col"] = 11,
                },
                ["start"] = {
                  ["line"] = 6,
                  ["col"] = 11,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "lexer",
              ["type"] = "Identifier",
            },
          },
          ["init"] = {
            [1] = {
              ["arguments"] = {
                [1] = {
                  ["value"] = "ast_custom.lexer",
                  ["raw"] = "\"ast_custom.lexer\"",
                  ["type"] = "StringLiteral",
                },
              },
              ["is_method_call"] = false,
              ["type"] = "CallExpression",
              ["base"] = {
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 6,
                    ["col"] = 19,
                  },
                  ["start"] = {
                    ["line"] = 6,
                    ["col"] = 19,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "require",
                ["type"] = "Identifier",
              },
              ["potential_metamethod"] = "__call",
              ["has_metamethod"] = true,
            },
          },
          ["type"] = "LocalStatement",
          ["loc"] = {
            ["end"] = {
              ["line"] = 7,
              ["col"] = 5,
            },
            ["start"] = {
              ["line"] = 6,
              ["col"] = 5,
            },
          },
        },
        [4] = {
          ["comments"] = {
          },
          ["variables"] = {
            [1] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 7,
                  ["col"] = 11,
                },
                ["start"] = {
                  ["line"] = 7,
                  ["col"] = 11,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "ast_nodes",
              ["type"] = "Identifier",
            },
          },
          ["init"] = {
            [1] = {
              ["arguments"] = {
                [1] = {
                  ["value"] = "ast_custom.ast_nodes",
                  ["raw"] = "\"ast_custom.ast_nodes\"",
                  ["type"] = "StringLiteral",
                },
              },
              ["is_method_call"] = false,
              ["type"] = "CallExpression",
              ["base"] = {
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 7,
                    ["col"] = 23,
                  },
                  ["start"] = {
                    ["line"] = 7,
                    ["col"] = 23,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "require",
                ["type"] = "Identifier",
              },
              ["potential_metamethod"] = "__call",
              ["has_metamethod"] = true,
            },
          },
          ["type"] = "LocalStatement",
          ["loc"] = {
            ["end"] = {
              ["line"] = 9,
              ["col"] = 5,
            },
            ["start"] = {
              ["line"] = 7,
              ["col"] = 5,
            },
          },
        },
        [5] = {
          ["expression"] = {
            ["arguments"] = {
              [1] = {
                ["value"] = "Modules loaded successfully!",
                ["raw"] = "\"Modules loaded successfully!\"",
                ["type"] = "StringLiteral",
              },
            },
            ["is_method_call"] = false,
            ["type"] = "CallExpression",
            ["base"] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 9,
                  ["col"] = 5,
                },
                ["start"] = {
                  ["line"] = 9,
                  ["col"] = 5,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "print",
              ["type"] = "Identifier",
            },
            ["potential_metamethod"] = "__call",
            ["has_metamethod"] = true,
          },
          ["type"] = "CallStatement",
        },
        [6] = {
          ["comments"] = {
          },
          ["variables"] = {
            [1] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 11,
                  ["col"] = 11,
                },
                ["start"] = {
                  ["line"] = 11,
                  ["col"] = 11,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "test_code",
              ["type"] = "Identifier",
            },
          },
          ["init"] = {
            [1] = {
              ["value"] = "    local a = 1\
    local b = 2\
    return a + b\
    ",
              ["raw"] = " [[\
    local a = 1\
    local b = 2\
    return a + b\
    ]]",
              ["type"] = "StringLiteral",
            },
          },
          ["type"] = "LocalStatement",
          ["loc"] = {
            ["end"] = {
              ["line"] = 17,
              ["col"] = 5,
            },
            ["start"] = {
              ["line"] = 11,
              ["col"] = 5,
            },
          },
        },
        [7] = {
          ["expression"] = {
            ["arguments"] = {
              [1] = {
                ["value"] = "\
Test code:",
                ["raw"] = "\"\\nTest code:\"",
                ["type"] = "StringLiteral",
              },
            },
            ["is_method_call"] = false,
            ["type"] = "CallExpression",
            ["base"] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 17,
                  ["col"] = 5,
                },
                ["start"] = {
                  ["line"] = 17,
                  ["col"] = 5,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "print",
              ["type"] = "Identifier",
            },
            ["potential_metamethod"] = "__call",
            ["has_metamethod"] = true,
          },
          ["type"] = "CallStatement",
        },
        [8] = {
          ["expression"] = {
            ["arguments"] = {
              [1] = {
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 18,
                    ["col"] = 11,
                  },
                  ["start"] = {
                    ["line"] = 18,
                    ["col"] = 11,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "test_code",
                ["type"] = "Identifier",
              },
            },
            ["is_method_call"] = false,
            ["type"] = "CallExpression",
            ["base"] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 18,
                  ["col"] = 5,
                },
                ["start"] = {
                  ["line"] = 18,
                  ["col"] = 5,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "print",
              ["type"] = "Identifier",
            },
            ["potential_metamethod"] = "__call",
            ["has_metamethod"] = true,
          },
          ["type"] = "CallStatement",
        },
        [9] = {
          ["expression"] = {
            ["arguments"] = {
              [1] = {
                ["value"] = "\
Tokenizing...",
                ["raw"] = "\"\\nTokenizing...\"",
                ["type"] = "StringLiteral",
              },
            },
            ["is_method_call"] = false,
            ["type"] = "CallExpression",
            ["base"] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 20,
                  ["col"] = 5,
                },
                ["start"] = {
                  ["line"] = 20,
                  ["col"] = 5,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "print",
              ["type"] = "Identifier",
            },
            ["potential_metamethod"] = "__call",
            ["has_metamethod"] = true,
          },
          ["type"] = "CallStatement",
        },
        [10] = {
          ["comments"] = {
          },
          ["variables"] = {
            [1] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 21,
                  ["col"] = 11,
                },
                ["start"] = {
                  ["line"] = 21,
                  ["col"] = 11,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "tokens",
              ["type"] = "Identifier",
            },
          },
          ["init"] = {
            [1] = {
              ["arguments"] = {
                [1] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 21,
                      ["col"] = 35,
                    },
                    ["start"] = {
                      ["line"] = 21,
                      ["col"] = 35,
                    },
                  },
                  ["attributes"] = {
                  },
                  ["name"] = "test_code",
                  ["type"] = "Identifier",
                },
              },
              ["is_method_call"] = true,
              ["type"] = "CallExpression",
              ["base"] = {
                ["identifier"] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 21,
                      ["col"] = 26,
                    },
                    ["start"] = {
                      ["line"] = 21,
                      ["col"] = 26,
                    },
                  },
                  ["attributes"] = {
                  },
                  ["name"] = "tokenize",
                  ["type"] = "Identifier",
                },
                ["base"] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 21,
                      ["col"] = 20,
                    },
                    ["start"] = {
                      ["line"] = 21,
                      ["col"] = 20,
                    },
                  },
                  ["attributes"] = {
                  },
                  ["name"] = "lexer",
                  ["type"] = "Identifier",
                },
                ["indexer"] = ".",
                ["type"] = "MemberExpression",
              },
              ["potential_metamethod"] = "__call",
              ["has_metamethod"] = true,
            },
          },
          ["type"] = "LocalStatement",
          ["loc"] = {
            ["end"] = {
              ["line"] = 22,
              ["col"] = 5,
            },
            ["start"] = {
              ["line"] = 21,
              ["col"] = 5,
            },
          },
        },
        [11] = {
          ["expression"] = {
            ["arguments"] = {
              [1] = {
                ["operator"] = "..",
                ["swap_operands"] = false,
                ["type"] = "BinaryExpression",
                ["metamethod"] = "__concat",
                ["right"] = {
                  ["operator"] = "..",
                  ["swap_operands"] = false,
                  ["type"] = "BinaryExpression",
                  ["metamethod"] = "__concat",
                  ["right"] = {
                    ["value"] = " tokens (excluding EOF)",
                    ["raw"] = "\" tokens (excluding EOF)\"",
                    ["type"] = "StringLiteral",
                  },
                  ["substituted_operator"] = "..",
                  ["left"] = {
                    ["operator"] = "-",
                    ["swap_operands"] = false,
                    ["type"] = "BinaryExpression",
                    ["metamethod"] = "__sub",
                    ["right"] = {
                      ["value"] = 1,
                      ["is_lua53_feature"] = false,
                      ["raw"] = "1",
                      ["type"] = "NumericLiteral",
                    },
                    ["substituted_operator"] = "-",
                    ["left"] = {
                      ["operator"] = "#",
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 22,
                          ["col"] = 45,
                        },
                        ["start"] = {
                          ["line"] = 22,
                          ["col"] = 45,
                        },
                      },
                      ["type"] = "UnaryExpression",
                      ["metamethod"] = "__len",
                      ["is_lua53_feature"] = false,
                      ["argument"] = {
                        ["loc"] = {
                          ["end"] = {
                            ["line"] = 22,
                            ["col"] = 46,
                          },
                          ["start"] = {
                            ["line"] = 22,
                            ["col"] = 46,
                          },
                        },
                        ["attributes"] = {
                        },
                        ["name"] = "tokens",
                        ["type"] = "Identifier",
                      },
                    },
                  },
                },
                ["substituted_operator"] = "..",
                ["left"] = {
                  ["value"] = "Tokenization complete! Got ",
                  ["raw"] = "\"Tokenization complete! Got \"",
                  ["type"] = "StringLiteral",
                },
              },
            },
            ["is_method_call"] = false,
            ["type"] = "CallExpression",
            ["base"] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 22,
                  ["col"] = 5,
                },
                ["start"] = {
                  ["line"] = 22,
                  ["col"] = 5,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "print",
              ["type"] = "Identifier",
            },
            ["potential_metamethod"] = "__call",
            ["has_metamethod"] = true,
          },
          ["type"] = "CallStatement",
        },
        [12] = {
          ["expression"] = {
            ["arguments"] = {
              [1] = {
                ["value"] = "\
First 10 tokens:",
                ["raw"] = "\"\\nFirst 10 tokens:\"",
                ["type"] = "StringLiteral",
              },
            },
            ["is_method_call"] = false,
            ["type"] = "CallExpression",
            ["base"] = {
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
              ["attributes"] = {
              },
              ["name"] = "print",
              ["type"] = "Identifier",
            },
            ["potential_metamethod"] = "__call",
            ["has_metamethod"] = true,
          },
          ["type"] = "CallStatement",
        },
        [13] = {
          ["type"] = "ForNumericStatement",
          ["stop"] = {
            ["arguments"] = {
              [1] = {
                ["value"] = 10,
                ["is_lua53_feature"] = false,
                ["raw"] = "10",
                ["type"] = "NumericLiteral",
              },
              [2] = {
                ["operator"] = "#",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 25,
                    ["col"] = 29,
                  },
                  ["start"] = {
                    ["line"] = 25,
                    ["col"] = 29,
                  },
                },
                ["type"] = "UnaryExpression",
                ["metamethod"] = "__len",
                ["is_lua53_feature"] = false,
                ["argument"] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 25,
                      ["col"] = 30,
                    },
                    ["start"] = {
                      ["line"] = 25,
                      ["col"] = 30,
                    },
                  },
                  ["attributes"] = {
                  },
                  ["name"] = "tokens",
                  ["type"] = "Identifier",
                },
              },
            },
            ["is_method_call"] = true,
            ["type"] = "CallExpression",
            ["base"] = {
              ["identifier"] = {
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 25,
                    ["col"] = 21,
                  },
                  ["start"] = {
                    ["line"] = 25,
                    ["col"] = 21,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "min",
                ["type"] = "Identifier",
              },
              ["base"] = {
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 25,
                    ["col"] = 16,
                  },
                  ["start"] = {
                    ["line"] = 25,
                    ["col"] = 16,
                  },
                },
                ["attributes"] = {
                },
                ["name"] = "math",
                ["type"] = "Identifier",
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
            },
            ["potential_metamethod"] = "__call",
            ["has_metamethod"] = true,
          },
          ["body"] = {
            [1] = {
              ["comments"] = {
              },
              ["variables"] = {
                [1] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 26,
                      ["col"] = 15,
                    },
                    ["start"] = {
                      ["line"] = 26,
                      ["col"] = 15,
                    },
                  },
                  ["attributes"] = {
                  },
                  ["name"] = "t",
                  ["type"] = "Identifier",
                },
              },
              ["init"] = {
                [1] = {
                  ["index"] = {
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 26,
                        ["col"] = 26,
                      },
                      ["start"] = {
                        ["line"] = 26,
                        ["col"] = 26,
                      },
                    },
                    ["attributes"] = {
                    },
                    ["name"] = "i",
                    ["type"] = "Identifier",
                  },
                  ["type"] = "IndexExpression",
                  ["is_assignment_target"] = false,
                  ["base"] = {
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 26,
                        ["col"] = 19,
                      },
                      ["start"] = {
                        ["line"] = 26,
                        ["col"] = 19,
                      },
                    },
                    ["attributes"] = {
                    },
                    ["name"] = "tokens",
                    ["type"] = "Identifier",
                  },
                  ["potential_metamethod"] = "__index",
                  ["has_metamethod"] = true,
                },
              },
              ["type"] = "LocalStatement",
              ["loc"] = {
                ["end"] = {
                  ["line"] = 27,
                  ["col"] = 9,
                },
                ["start"] = {
                  ["line"] = 26,
                  ["col"] = 9,
                },
              },
            },
            [2] = {
              ["expression"] = {
                ["arguments"] = {
                  [1] = {
                    ["arguments"] = {
                      [1] = {
                        ["value"] = "%d: Type=%s, Value=%s, Line=%d, Col=%d",
                        ["raw"] = "\"%d: Type=%s, Value=%s, Line=%d, Col=%d\"",
                        ["type"] = "StringLiteral",
                      },
                      [2] = {
                        ["loc"] = {
                          ["end"] = {
                            ["line"] = 28,
                            ["col"] = 15,
                          },
                          ["start"] = {
                            ["line"] = 28,
                            ["col"] = 15,
                          },
                        },
                        ["attributes"] = {
                        },
                        ["name"] = "i",
                        ["type"] = "Identifier",
                      },
                      [3] = {
                        ["identifier"] = {
                          ["loc"] = {
                            ["end"] = {
                              ["line"] = 28,
                              ["col"] = 20,
                            },
                            ["start"] = {
                              ["line"] = 28,
                              ["col"] = 20,
                            },
                          },
                          ["attributes"] = {
                          },
                          ["name"] = "type",
                          ["type"] = "Identifier",
                        },
                        ["base"] = {
                          ["loc"] = {
                            ["end"] = {
                              ["line"] = 28,
                              ["col"] = 18,
                            },
                            ["start"] = {
                              ["line"] = 28,
                              ["col"] = 18,
                            },
                          },
                          ["attributes"] = {
                          },
                          ["name"] = "t",
                          ["type"] = "Identifier",
                        },
                        ["indexer"] = ".",
                        ["type"] = "MemberExpression",
                      },
                      [4] = {
                        ["arguments"] = {
                          [1] = {
                            ["identifier"] = {
                              ["loc"] = {
                                ["end"] = {
                                  ["line"] = 28,
                                  ["col"] = 37,
                                },
                                ["start"] = {
                                  ["line"] = 28,
                                  ["col"] = 37,
                                },
                              },
                              ["attributes"] = {
                              },
                              ["name"] = "value",
                              ["type"] = "Identifier",
                            },
                            ["base"] = {
                              ["loc"] = {
                                ["end"] = {
                                  ["line"] = 28,
                                  ["col"] = 35,
                                },
                                ["start"] = {
                                  ["line"] = 28,
                                  ["col"] = 35,
                                },
                              },
                              ["attributes"] = {
                              },
                              ["name"] = "t",
                              ["type"] = "Identifier",
                            },
                            ["indexer"] = ".",
                            ["type"] = "MemberExpression",
                          },
                        },
                        ["is_method_call"] = false,
                        ["type"] = "CallExpression",
                        ["base"] = {
                          ["loc"] = {
                            ["end"] = {
                              ["line"] = 28,
                              ["col"] = 26,
                            },
                            ["start"] = {
                              ["line"] = 28,
                              ["col"] = 26,
                            },
                          },
                          ["attributes"] = {
                          },
                          ["name"] = "tostring",
                          ["type"] = "Identifier",
                        },
                        ["potential_metamethod"] = "__call",
                        ["has_metamethod"] = true,
                      },
                      [5] = {
                        ["identifier"] = {
                          ["loc"] = {
                            ["end"] = {
                              ["line"] = 28,
                              ["col"] = 47,
                            },
                            ["start"] = {
                              ["line"] = 28,
                              ["col"] = 47,
                            },
                          },
                          ["attributes"] = {
                          },
                          ["name"] = "line",
                          ["type"] = "Identifier",
                        },
                        ["base"] = {
                          ["loc"] = {
                            ["end"] = {
                              ["line"] = 28,
                              ["col"] = 45,
                            },
                            ["start"] = {
                              ["line"] = 28,
                              ["col"] = 45,
                            },
                          },
                          ["attributes"] = {
                          },
                          ["name"] = "t",
                          ["type"] = "Identifier",
                        },
                        ["indexer"] = ".",
                        ["type"] = "MemberExpression",
                      },
                      [6] = {
                        ["identifier"] = {
                          ["loc"] = {
                            ["end"] = {
                              ["line"] = 28,
                              ["col"] = 55,
                            },
                            ["start"] = {
                              ["line"] = 28,
                              ["col"] = 55,
                            },
                          },
                          ["attributes"] = {
                          },
                          ["name"] = "col",
                          ["type"] = "Identifier",
                        },
                        ["base"] = {
                          ["loc"] = {
                            ["end"] = {
                              ["line"] = 28,
                              ["col"] = 53,
                            },
                            ["start"] = {
                              ["line"] = 28,
                              ["col"] = 53,
                            },
                          },
                          ["attributes"] = {
                          },
                          ["name"] = "t",
                          ["type"] = "Identifier",
                        },
                        ["indexer"] = ".",
                        ["type"] = "MemberExpression",
                      },
                    },
                    ["is_method_call"] = true,
                    ["type"] = "CallExpression",
                    ["base"] = {
                      ["identifier"] = {
                        ["loc"] = {
                          ["end"] = {
                            ["line"] = 27,
                            ["col"] = 22,
                          },
                          ["start"] = {
                            ["line"] = 27,
                            ["col"] = 22,
                          },
                        },
                        ["attributes"] = {
                        },
                        ["name"] = "format",
                        ["type"] = "Identifier",
                      },
                      ["base"] = {
                        ["loc"] = {
                          ["end"] = {
                            ["line"] = 27,
                            ["col"] = 15,
                          },
                          ["start"] = {
                            ["line"] = 27,
                            ["col"] = 15,
                          },
                        },
                        ["attributes"] = {
                        },
                        ["name"] = "string",
                        ["type"] = "Identifier",
                      },
                      ["indexer"] = ".",
                      ["type"] = "MemberExpression",
                    },
                    ["potential_metamethod"] = "__call",
                    ["has_metamethod"] = true,
                  },
                },
                ["is_method_call"] = false,
                ["type"] = "CallExpression",
                ["base"] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 27,
                      ["col"] = 9,
                    },
                    ["start"] = {
                      ["line"] = 27,
                      ["col"] = 9,
                    },
                  },
                  ["attributes"] = {
                  },
                  ["name"] = "print",
                  ["type"] = "Identifier",
                },
                ["potential_metamethod"] = "__call",
                ["has_metamethod"] = true,
              },
              ["type"] = "CallStatement",
            },
          },
          ["start"] = {
            ["value"] = 1,
            ["is_lua53_feature"] = false,
            ["raw"] = "1",
            ["type"] = "NumericLiteral",
          },
          ["variable"] = {
            ["loc"] = {
              ["end"] = {
                ["line"] = 25,
                ["col"] = 9,
              },
              ["start"] = {
                ["line"] = 25,
                ["col"] = 9,
              },
            },
            ["attributes"] = {
            },
            ["name"] = "i",
            ["type"] = "Identifier",
          },
        },
        [14] = {
          ["expression"] = {
            ["arguments"] = {
              [1] = {
                ["value"] = "\
Parsing...",
                ["raw"] = "\"\\nParsing...\"",
                ["type"] = "StringLiteral",
              },
            },
            ["is_method_call"] = false,
            ["type"] = "CallExpression",
            ["base"] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 31,
                  ["col"] = 5,
                },
                ["start"] = {
                  ["line"] = 31,
                  ["col"] = 5,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "print",
              ["type"] = "Identifier",
            },
            ["potential_metamethod"] = "__call",
            ["has_metamethod"] = true,
          },
          ["type"] = "CallStatement",
        },
        [15] = {
          ["comments"] = {
          },
          ["variables"] = {
            [1] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 32,
                  ["col"] = 11,
                },
                ["start"] = {
                  ["line"] = 32,
                  ["col"] = 11,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "ast",
              ["type"] = "Identifier",
            },
            [2] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 32,
                  ["col"] = 16,
                },
                ["start"] = {
                  ["line"] = 32,
                  ["col"] = 16,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "errors",
              ["type"] = "Identifier",
            },
          },
          ["init"] = {
            [1] = {
              ["arguments"] = {
                [1] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 32,
                      ["col"] = 38,
                    },
                    ["start"] = {
                      ["line"] = 32,
                      ["col"] = 38,
                    },
                  },
                  ["attributes"] = {
                  },
                  ["name"] = "test_code",
                  ["type"] = "Identifier",
                },
              },
              ["is_method_call"] = true,
              ["type"] = "CallExpression",
              ["base"] = {
                ["identifier"] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 32,
                      ["col"] = 32,
                    },
                    ["start"] = {
                      ["line"] = 32,
                      ["col"] = 32,
                    },
                  },
                  ["attributes"] = {
                  },
                  ["name"] = "parse",
                  ["type"] = "Identifier",
                },
                ["base"] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 32,
                      ["col"] = 25,
                    },
                    ["start"] = {
                      ["line"] = 32,
                      ["col"] = 25,
                    },
                  },
                  ["attributes"] = {
                  },
                  ["name"] = "parser",
                  ["type"] = "Identifier",
                },
                ["indexer"] = ".",
                ["type"] = "MemberExpression",
              },
              ["potential_metamethod"] = "__call",
              ["has_metamethod"] = true,
            },
          },
          ["type"] = "LocalStatement",
          ["loc"] = {
            ["end"] = {
              ["line"] = 34,
              ["col"] = 5,
            },
            ["start"] = {
              ["line"] = 32,
              ["col"] = 5,
            },
          },
        },
        [16] = {
          ["comments"] = {
          },
          ["clauses"] = {
            [1] = {
              ["condition"] = {
                ["operator"] = "#",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 34,
                    ["col"] = 8,
                  },
                  ["start"] = {
                    ["line"] = 34,
                    ["col"] = 8,
                  },
                },
                ["type"] = "UnaryExpression",
                ["metamethod"] = "__len",
                ["is_lua53_feature"] = false,
                ["argument"] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 34,
                      ["col"] = 9,
                    },
                    ["start"] = {
                      ["line"] = 34,
                      ["col"] = 9,
                    },
                  },
                  ["attributes"] = {
                  },
                  ["name"] = "errors",
                  ["type"] = "Identifier",
                },
              },
              ["body"] = {
                [1] = {
                  ["expression"] = {
                    ["arguments"] = {
                      [1] = {
                        ["operator"] = "..",
                        ["swap_operands"] = false,
                        ["type"] = "BinaryExpression",
                        ["metamethod"] = "__concat",
                        ["right"] = {
                          ["operator"] = "..",
                          ["swap_operands"] = false,
                          ["type"] = "BinaryExpression",
                          ["metamethod"] = "__concat",
                          ["right"] = {
                            ["value"] = " errors:",
                            ["raw"] = "\" errors:\"",
                            ["type"] = "StringLiteral",
                          },
                          ["substituted_operator"] = "..",
                          ["left"] = {
                            ["operator"] = "#",
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 35,
                                ["col"] = 46,
                              },
                              ["start"] = {
                                ["line"] = 35,
                                ["col"] = 46,
                              },
                            },
                            ["type"] = "UnaryExpression",
                            ["metamethod"] = "__len",
                            ["is_lua53_feature"] = false,
                            ["argument"] = {
                              ["loc"] = {
                                ["end"] = {
                                  ["line"] = 35,
                                  ["col"] = 47,
                                },
                                ["start"] = {
                                  ["line"] = 35,
                                  ["col"] = 47,
                                },
                              },
                              ["attributes"] = {
                              },
                              ["name"] = "errors",
                              ["type"] = "Identifier",
                            },
                          },
                        },
                        ["substituted_operator"] = "..",
                        ["left"] = {
                          ["value"] = "\
Parsing completed with ",
                          ["raw"] = "\"\\nParsing completed with \"",
                          ["type"] = "StringLiteral",
                        },
                      },
                    },
                    ["is_method_call"] = false,
                    ["type"] = "CallExpression",
                    ["base"] = {
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 35,
                          ["col"] = 9,
                        },
                        ["start"] = {
                          ["line"] = 35,
                          ["col"] = 9,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "print",
                      ["type"] = "Identifier",
                    },
                    ["potential_metamethod"] = "__call",
                    ["has_metamethod"] = true,
                  },
                  ["type"] = "CallStatement",
                },
                [2] = {
                  ["body"] = {
                    [1] = {
                      ["expression"] = {
                        ["arguments"] = {
                          [1] = {
                            ["arguments"] = {
                              [1] = {
                                ["value"] = "Error %d: %s at line %d, col %d",
                                ["raw"] = "\"Error %d: %s at line %d, col %d\"",
                                ["type"] = "StringLiteral",
                              },
                              [2] = {
                                ["loc"] = {
                                  ["end"] = {
                                    ["line"] = 38,
                                    ["col"] = 19,
                                  },
                                  ["start"] = {
                                    ["line"] = 38,
                                    ["col"] = 19,
                                  },
                                },
                                ["attributes"] = {
                                },
                                ["name"] = "i",
                                ["type"] = "Identifier",
                              },
                              [3] = {
                                ["identifier"] = {
                                  ["loc"] = {
                                    ["end"] = {
                                      ["line"] = 38,
                                      ["col"] = 26,
                                    },
                                    ["start"] = {
                                      ["line"] = 38,
                                      ["col"] = 26,
                                    },
                                  },
                                  ["attributes"] = {
                                  },
                                  ["name"] = "message",
                                  ["type"] = "Identifier",
                                },
                                ["base"] = {
                                  ["loc"] = {
                                    ["end"] = {
                                      ["line"] = 38,
                                      ["col"] = 22,
                                    },
                                    ["start"] = {
                                      ["line"] = 38,
                                      ["col"] = 22,
                                    },
                                  },
                                  ["attributes"] = {
                                  },
                                  ["name"] = "err",
                                  ["type"] = "Identifier",
                                },
                                ["indexer"] = ".",
                                ["type"] = "MemberExpression",
                              },
                              [4] = {
                                ["identifier"] = {
                                  ["loc"] = {
                                    ["end"] = {
                                      ["line"] = 38,
                                      ["col"] = 39,
                                    },
                                    ["start"] = {
                                      ["line"] = 38,
                                      ["col"] = 39,
                                    },
                                  },
                                  ["attributes"] = {
                                  },
                                  ["name"] = "line",
                                  ["type"] = "Identifier",
                                },
                                ["base"] = {
                                  ["loc"] = {
                                    ["end"] = {
                                      ["line"] = 38,
                                      ["col"] = 35,
                                    },
                                    ["start"] = {
                                      ["line"] = 38,
                                      ["col"] = 35,
                                    },
                                  },
                                  ["attributes"] = {
                                  },
                                  ["name"] = "err",
                                  ["type"] = "Identifier",
                                },
                                ["indexer"] = ".",
                                ["type"] = "MemberExpression",
                              },
                              [5] = {
                                ["identifier"] = {
                                  ["loc"] = {
                                    ["end"] = {
                                      ["line"] = 38,
                                      ["col"] = 49,
                                    },
                                    ["start"] = {
                                      ["line"] = 38,
                                      ["col"] = 49,
                                    },
                                  },
                                  ["attributes"] = {
                                  },
                                  ["name"] = "col",
                                  ["type"] = "Identifier",
                                },
                                ["base"] = {
                                  ["loc"] = {
                                    ["end"] = {
                                      ["line"] = 38,
                                      ["col"] = 45,
                                    },
                                    ["start"] = {
                                      ["line"] = 38,
                                      ["col"] = 45,
                                    },
                                  },
                                  ["attributes"] = {
                                  },
                                  ["name"] = "err",
                                  ["type"] = "Identifier",
                                },
                                ["indexer"] = ".",
                                ["type"] = "MemberExpression",
                              },
                            },
                            ["is_method_call"] = true,
                            ["type"] = "CallExpression",
                            ["base"] = {
                              ["identifier"] = {
                                ["loc"] = {
                                  ["end"] = {
                                    ["line"] = 37,
                                    ["col"] = 26,
                                  },
                                  ["start"] = {
                                    ["line"] = 37,
                                    ["col"] = 26,
                                  },
                                },
                                ["attributes"] = {
                                },
                                ["name"] = "format",
                                ["type"] = "Identifier",
                              },
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
                                ["attributes"] = {
                                },
                                ["name"] = "string",
                                ["type"] = "Identifier",
                              },
                              ["indexer"] = ".",
                              ["type"] = "MemberExpression",
                            },
                            ["potential_metamethod"] = "__call",
                            ["has_metamethod"] = true,
                          },
                        },
                        ["is_method_call"] = false,
                        ["type"] = "CallExpression",
                        ["base"] = {
                          ["loc"] = {
                            ["end"] = {
                              ["line"] = 37,
                              ["col"] = 13,
                            },
                            ["start"] = {
                              ["line"] = 37,
                              ["col"] = 13,
                            },
                          },
                          ["attributes"] = {
                          },
                          ["name"] = "print",
                          ["type"] = "Identifier",
                        },
                        ["potential_metamethod"] = "__call",
                        ["has_metamethod"] = true,
                      },
                      ["type"] = "CallStatement",
                    },
                  },
                  ["variables"] = {
                    [1] = {
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 36,
                          ["col"] = 13,
                        },
                        ["start"] = {
                          ["line"] = 36,
                          ["col"] = 13,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "i",
                      ["type"] = "Identifier",
                    },
                    [2] = {
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 36,
                          ["col"] = 16,
                        },
                        ["start"] = {
                          ["line"] = 36,
                          ["col"] = 16,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "err",
                      ["type"] = "Identifier",
                    },
                  },
                  ["iterators"] = {
                    [1] = {
                      ["arguments"] = {
                        [1] = {
                          ["loc"] = {
                            ["end"] = {
                              ["line"] = 36,
                              ["col"] = 30,
                            },
                            ["start"] = {
                              ["line"] = 36,
                              ["col"] = 30,
                            },
                          },
                          ["attributes"] = {
                          },
                          ["name"] = "errors",
                          ["type"] = "Identifier",
                        },
                      },
                      ["is_method_call"] = false,
                      ["type"] = "CallExpression",
                      ["base"] = {
                        ["loc"] = {
                          ["end"] = {
                            ["line"] = 36,
                            ["col"] = 23,
                          },
                          ["start"] = {
                            ["line"] = 36,
                            ["col"] = 23,
                          },
                        },
                        ["attributes"] = {
                        },
                        ["name"] = "ipairs",
                        ["type"] = "Identifier",
                      },
                      ["potential_metamethod"] = "__call",
                      ["has_metamethod"] = true,
                    },
                  },
                  ["type"] = "ForGenericStatement",
                },
              },
              ["type"] = "IfClause",
            },
            [2] = {
              ["body"] = {
                [1] = {
                  ["expression"] = {
                    ["arguments"] = {
                      [1] = {
                        ["value"] = "\
Parsing completed successfully!",
                        ["raw"] = "\"\\nParsing completed successfully!\"",
                        ["type"] = "StringLiteral",
                      },
                    },
                    ["is_method_call"] = false,
                    ["type"] = "CallExpression",
                    ["base"] = {
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 41,
                          ["col"] = 9,
                        },
                        ["start"] = {
                          ["line"] = 41,
                          ["col"] = 9,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "print",
                      ["type"] = "Identifier",
                    },
                    ["potential_metamethod"] = "__call",
                    ["has_metamethod"] = true,
                  },
                  ["type"] = "CallStatement",
                },
              },
              ["type"] = "ElseClause",
            },
          },
          ["type"] = "IfStatement",
        },
        [17] = {
          ["expression"] = {
            ["arguments"] = {
              [1] = {
                ["value"] = "\
AST root:",
                ["raw"] = "\"\\nAST root:\"",
                ["type"] = "StringLiteral",
              },
            },
            ["is_method_call"] = false,
            ["type"] = "CallExpression",
            ["base"] = {
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
              ["attributes"] = {
              },
              ["name"] = "print",
              ["type"] = "Identifier",
            },
            ["potential_metamethod"] = "__call",
            ["has_metamethod"] = true,
          },
          ["type"] = "CallStatement",
        },
        [18] = {
          ["expression"] = {
            ["arguments"] = {
              [1] = {
                ["arguments"] = {
                  [1] = {
                    ["value"] = "Type: %s",
                    ["raw"] = "\"Type: %s\"",
                    ["type"] = "StringLiteral",
                  },
                  [2] = {
                    ["identifier"] = {
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 45,
                          ["col"] = 41,
                        },
                        ["start"] = {
                          ["line"] = 45,
                          ["col"] = 41,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "type",
                      ["type"] = "Identifier",
                    },
                    ["base"] = {
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 45,
                          ["col"] = 37,
                        },
                        ["start"] = {
                          ["line"] = 45,
                          ["col"] = 37,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "ast",
                      ["type"] = "Identifier",
                    },
                    ["indexer"] = ".",
                    ["type"] = "MemberExpression",
                  },
                },
                ["is_method_call"] = true,
                ["type"] = "CallExpression",
                ["base"] = {
                  ["identifier"] = {
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 45,
                        ["col"] = 18,
                      },
                      ["start"] = {
                        ["line"] = 45,
                        ["col"] = 18,
                      },
                    },
                    ["attributes"] = {
                    },
                    ["name"] = "format",
                    ["type"] = "Identifier",
                  },
                  ["base"] = {
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 45,
                        ["col"] = 11,
                      },
                      ["start"] = {
                        ["line"] = 45,
                        ["col"] = 11,
                      },
                    },
                    ["attributes"] = {
                    },
                    ["name"] = "string",
                    ["type"] = "Identifier",
                  },
                  ["indexer"] = ".",
                  ["type"] = "MemberExpression",
                },
                ["potential_metamethod"] = "__call",
                ["has_metamethod"] = true,
              },
            },
            ["is_method_call"] = false,
            ["type"] = "CallExpression",
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
              ["attributes"] = {
              },
              ["name"] = "print",
              ["type"] = "Identifier",
            },
            ["potential_metamethod"] = "__call",
            ["has_metamethod"] = true,
          },
          ["type"] = "CallStatement",
        },
        [19] = {
          ["expression"] = {
            ["arguments"] = {
              [1] = {
                ["arguments"] = {
                  [1] = {
                    ["value"] = "Body statements: %d",
                    ["raw"] = "\"Body statements: %d\"",
                    ["type"] = "StringLiteral",
                  },
                  [2] = {
                    ["operator"] = "#",
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 46,
                        ["col"] = 48,
                      },
                      ["start"] = {
                        ["line"] = 46,
                        ["col"] = 48,
                      },
                    },
                    ["type"] = "UnaryExpression",
                    ["metamethod"] = "__len",
                    ["is_lua53_feature"] = false,
                    ["argument"] = {
                      ["identifier"] = {
                        ["loc"] = {
                          ["end"] = {
                            ["line"] = 46,
                            ["col"] = 53,
                          },
                          ["start"] = {
                            ["line"] = 46,
                            ["col"] = 53,
                          },
                        },
                        ["attributes"] = {
                        },
                        ["name"] = "body",
                        ["type"] = "Identifier",
                      },
                      ["base"] = {
                        ["loc"] = {
                          ["end"] = {
                            ["line"] = 46,
                            ["col"] = 49,
                          },
                          ["start"] = {
                            ["line"] = 46,
                            ["col"] = 49,
                          },
                        },
                        ["attributes"] = {
                        },
                        ["name"] = "ast",
                        ["type"] = "Identifier",
                      },
                      ["indexer"] = ".",
                      ["type"] = "MemberExpression",
                    },
                  },
                },
                ["is_method_call"] = true,
                ["type"] = "CallExpression",
                ["base"] = {
                  ["identifier"] = {
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 46,
                        ["col"] = 18,
                      },
                      ["start"] = {
                        ["line"] = 46,
                        ["col"] = 18,
                      },
                    },
                    ["attributes"] = {
                    },
                    ["name"] = "format",
                    ["type"] = "Identifier",
                  },
                  ["base"] = {
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 46,
                        ["col"] = 11,
                      },
                      ["start"] = {
                        ["line"] = 46,
                        ["col"] = 11,
                      },
                    },
                    ["attributes"] = {
                    },
                    ["name"] = "string",
                    ["type"] = "Identifier",
                  },
                  ["indexer"] = ".",
                  ["type"] = "MemberExpression",
                },
                ["potential_metamethod"] = "__call",
                ["has_metamethod"] = true,
              },
            },
            ["is_method_call"] = false,
            ["type"] = "CallExpression",
            ["base"] = {
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
              ["attributes"] = {
              },
              ["name"] = "print",
              ["type"] = "Identifier",
            },
            ["potential_metamethod"] = "__call",
            ["has_metamethod"] = true,
          },
          ["type"] = "CallStatement",
        },
        [20] = {
          ["arguments"] = {
            [1] = {
              ["value"] = true,
              ["type"] = "BooleanLiteral",
            },
          },
          ["type"] = "ReturnStatement",
        },
      },
      ["identifier"] = {
        ["loc"] = {
          ["end"] = {
            ["line"] = 3,
            ["col"] = 16,
          },
          ["start"] = {
            ["line"] = 3,
            ["col"] = 16,
          },
        },
        ["attributes"] = {
        },
        ["name"] = "main",
        ["type"] = "Identifier",
      },
    },
    [2] = {
      ["comments"] = {
      },
      ["variables"] = {
        [1] = {
          ["loc"] = {
            ["end"] = {
              ["line"] = 51,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 51,
              ["col"] = 7,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "ok",
          ["type"] = "Identifier",
        },
        [2] = {
          ["loc"] = {
            ["end"] = {
              ["line"] = 51,
              ["col"] = 11,
            },
            ["start"] = {
              ["line"] = 51,
              ["col"] = 11,
            },
          },
          ["attributes"] = {
          },
          ["name"] = "err",
          ["type"] = "Identifier",
        },
      },
      ["init"] = {
        [1] = {
          ["arguments"] = {
            [1] = {
              ["loc"] = {
                ["end"] = {
                  ["line"] = 51,
                  ["col"] = 24,
                },
                ["start"] = {
                  ["line"] = 51,
                  ["col"] = 24,
                },
              },
              ["attributes"] = {
              },
              ["name"] = "main",
              ["type"] = "Identifier",
            },
            [2] = {
              ["isLocal"] = false,
              ["parameters"] = {
                [1] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 51,
                      ["col"] = 39,
                    },
                    ["start"] = {
                      ["line"] = 51,
                      ["col"] = 39,
                    },
                  },
                  ["attributes"] = {
                  },
                  ["name"] = "err",
                  ["type"] = "Identifier",
                },
              },
              ["body"] = {
                [1] = {
                  ["expression"] = {
                    ["arguments"] = {
                      [1] = {
                        ["operator"] = "..",
                        ["swap_operands"] = false,
                        ["type"] = "BinaryExpression",
                        ["metamethod"] = "__concat",
                        ["right"] = {
                          ["arguments"] = {
                            [1] = {
                              ["loc"] = {
                                ["end"] = {
                                  ["line"] = 52,
                                  ["col"] = 35,
                                },
                                ["start"] = {
                                  ["line"] = 52,
                                  ["col"] = 35,
                                },
                              },
                              ["attributes"] = {
                              },
                              ["name"] = "err",
                              ["type"] = "Identifier",
                            },
                          },
                          ["is_method_call"] = false,
                          ["type"] = "CallExpression",
                          ["base"] = {
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 52,
                                ["col"] = 26,
                              },
                              ["start"] = {
                                ["line"] = 52,
                                ["col"] = 26,
                              },
                            },
                            ["attributes"] = {
                            },
                            ["name"] = "tostring",
                            ["type"] = "Identifier",
                          },
                          ["potential_metamethod"] = "__call",
                          ["has_metamethod"] = true,
                        },
                        ["substituted_operator"] = "..",
                        ["left"] = {
                          ["value"] = "\
ERROR: ",
                          ["raw"] = "\"\\nERROR: \"",
                          ["type"] = "StringLiteral",
                        },
                      },
                    },
                    ["is_method_call"] = false,
                    ["type"] = "CallExpression",
                    ["base"] = {
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 52,
                          ["col"] = 5,
                        },
                        ["start"] = {
                          ["line"] = 52,
                          ["col"] = 5,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "print",
                      ["type"] = "Identifier",
                    },
                    ["potential_metamethod"] = "__call",
                    ["has_metamethod"] = true,
                  },
                  ["type"] = "CallStatement",
                },
                [2] = {
                  ["expression"] = {
                    ["arguments"] = {
                      [1] = {
                        ["arguments"] = {
                          [1] = {
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 53,
                                ["col"] = 27,
                              },
                              ["start"] = {
                                ["line"] = 53,
                                ["col"] = 27,
                              },
                            },
                            ["attributes"] = {
                            },
                            ["name"] = "err",
                            ["type"] = "Identifier",
                          },
                          [2] = {
                            ["value"] = 2,
                            ["is_lua53_feature"] = false,
                            ["raw"] = "2",
                            ["type"] = "NumericLiteral",
                          },
                        },
                        ["is_method_call"] = true,
                        ["type"] = "CallExpression",
                        ["base"] = {
                          ["identifier"] = {
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 53,
                                ["col"] = 17,
                              },
                              ["start"] = {
                                ["line"] = 53,
                                ["col"] = 17,
                              },
                            },
                            ["attributes"] = {
                            },
                            ["name"] = "traceback",
                            ["type"] = "Identifier",
                          },
                          ["base"] = {
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 53,
                                ["col"] = 11,
                              },
                              ["start"] = {
                                ["line"] = 53,
                                ["col"] = 11,
                              },
                            },
                            ["attributes"] = {
                            },
                            ["name"] = "debug",
                            ["type"] = "Identifier",
                          },
                          ["indexer"] = ".",
                          ["type"] = "MemberExpression",
                        },
                        ["potential_metamethod"] = "__call",
                        ["has_metamethod"] = true,
                      },
                    },
                    ["is_method_call"] = false,
                    ["type"] = "CallExpression",
                    ["base"] = {
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 53,
                          ["col"] = 5,
                        },
                        ["start"] = {
                          ["line"] = 53,
                          ["col"] = 5,
                        },
                      },
                      ["attributes"] = {
                      },
                      ["name"] = "print",
                      ["type"] = "Identifier",
                    },
                    ["potential_metamethod"] = "__call",
                    ["has_metamethod"] = true,
                  },
                  ["type"] = "CallStatement",
                },
              },
              ["type"] = "FunctionExpression",
            },
          },
          ["is_method_call"] = false,
          ["type"] = "CallExpression",
          ["base"] = {
            ["loc"] = {
              ["end"] = {
                ["line"] = 51,
                ["col"] = 17,
              },
              ["start"] = {
                ["line"] = 51,
                ["col"] = 17,
              },
            },
            ["attributes"] = {
            },
            ["name"] = "xpcall",
            ["type"] = "Identifier",
          },
          ["potential_metamethod"] = "__call",
          ["has_metamethod"] = true,
        },
      },
      ["type"] = "LocalStatement",
      ["loc"] = {
        ["end"] = {
          ["line"] = 56,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 51,
          ["col"] = 1,
        },
      },
    },
    [3] = {
      ["comments"] = {
      },
      ["clauses"] = {
        [1] = {
          ["condition"] = {
            ["loc"] = {
              ["end"] = {
                ["line"] = 56,
                ["col"] = 4,
              },
              ["start"] = {
                ["line"] = 56,
                ["col"] = 4,
              },
            },
            ["attributes"] = {
            },
            ["name"] = "ok",
            ["type"] = "Identifier",
          },
          ["body"] = {
            [1] = {
              ["expression"] = {
                ["arguments"] = {
                  [1] = {
                    ["value"] = "\
Debug script completed successfully!",
                    ["raw"] = "\"\\nDebug script completed successfully!\"",
                    ["type"] = "StringLiteral",
                  },
                },
                ["is_method_call"] = false,
                ["type"] = "CallExpression",
                ["base"] = {
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
                  ["attributes"] = {
                  },
                  ["name"] = "print",
                  ["type"] = "Identifier",
                },
                ["potential_metamethod"] = "__call",
                ["has_metamethod"] = true,
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
                ["arguments"] = {
                  [1] = {
                    ["value"] = "\
Debug script failed!",
                    ["raw"] = "\"\\nDebug script failed!\"",
                    ["type"] = "StringLiteral",
                  },
                },
                ["is_method_call"] = false,
                ["type"] = "CallExpression",
                ["base"] = {
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 59,
                      ["col"] = 5,
                    },
                    ["start"] = {
                      ["line"] = 59,
                      ["col"] = 5,
                    },
                  },
                  ["attributes"] = {
                  },
                  ["name"] = "print",
                  ["type"] = "Identifier",
                },
                ["potential_metamethod"] = "__call",
                ["has_metamethod"] = true,
              },
              ["type"] = "CallStatement",
            },
          },
          ["type"] = "ElseClause",
        },
      },
      ["type"] = "IfStatement",
    },
  },
  ["type"] = "Chunk",
},
  tokens = {
  [1] = {
    ["type"] = "KEYWORD",
    ["value"] = "local",
    ["raw"] = "local",
    ["line"] = 3,
    ["col"] = 1,
  },
  [2] = {
    ["type"] = "KEYWORD",
    ["value"] = "function",
    ["raw"] = "function",
    ["line"] = 3,
    ["col"] = 7,
  },
  [3] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "main",
    ["raw"] = "main",
    ["line"] = 3,
    ["col"] = 16,
  },
  [4] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 3,
    ["col"] = 20,
  },
  [5] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 3,
    ["col"] = 21,
  },
  [6] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 4,
    ["col"] = 5,
  },
  [7] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 4,
    ["col"] = 10,
  },
  [8] = {
    ["type"] = "STRING",
    ["value"] = "Loading modules...",
    ["raw"] = "\"Loading modules...\"",
    ["line"] = 4,
    ["col"] = 11,
  },
  [9] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 4,
    ["col"] = 31,
  },
  [10] = {
    ["type"] = "KEYWORD",
    ["value"] = "local",
    ["raw"] = "local",
    ["line"] = 5,
    ["col"] = 5,
  },
  [11] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "parser",
    ["raw"] = "parser",
    ["line"] = 5,
    ["col"] = 11,
  },
  [12] = {
    ["type"] = "ASSIGN",
    ["value"] = "=",
    ["raw"] = "=",
    ["line"] = 5,
    ["col"] = 18,
  },
  [13] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "require",
    ["raw"] = "require",
    ["line"] = 5,
    ["col"] = 20,
  },
  [14] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 5,
    ["col"] = 27,
  },
  [15] = {
    ["type"] = "STRING",
    ["value"] = "ast_custom.parser",
    ["raw"] = "\"ast_custom.parser\"",
    ["line"] = 5,
    ["col"] = 28,
  },
  [16] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 5,
    ["col"] = 47,
  },
  [17] = {
    ["type"] = "KEYWORD",
    ["value"] = "local",
    ["raw"] = "local",
    ["line"] = 6,
    ["col"] = 5,
  },
  [18] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "lexer",
    ["raw"] = "lexer",
    ["line"] = 6,
    ["col"] = 11,
  },
  [19] = {
    ["type"] = "ASSIGN",
    ["value"] = "=",
    ["raw"] = "=",
    ["line"] = 6,
    ["col"] = 17,
  },
  [20] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "require",
    ["raw"] = "require",
    ["line"] = 6,
    ["col"] = 19,
  },
  [21] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 6,
    ["col"] = 26,
  },
  [22] = {
    ["type"] = "STRING",
    ["value"] = "ast_custom.lexer",
    ["raw"] = "\"ast_custom.lexer\"",
    ["line"] = 6,
    ["col"] = 27,
  },
  [23] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 6,
    ["col"] = 45,
  },
  [24] = {
    ["type"] = "KEYWORD",
    ["value"] = "local",
    ["raw"] = "local",
    ["line"] = 7,
    ["col"] = 5,
  },
  [25] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "ast_nodes",
    ["raw"] = "ast_nodes",
    ["line"] = 7,
    ["col"] = 11,
  },
  [26] = {
    ["type"] = "ASSIGN",
    ["value"] = "=",
    ["raw"] = "=",
    ["line"] = 7,
    ["col"] = 21,
  },
  [27] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "require",
    ["raw"] = "require",
    ["line"] = 7,
    ["col"] = 23,
  },
  [28] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 7,
    ["col"] = 30,
  },
  [29] = {
    ["type"] = "STRING",
    ["value"] = "ast_custom.ast_nodes",
    ["raw"] = "\"ast_custom.ast_nodes\"",
    ["line"] = 7,
    ["col"] = 31,
  },
  [30] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 7,
    ["col"] = 53,
  },
  [31] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 9,
    ["col"] = 5,
  },
  [32] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 9,
    ["col"] = 10,
  },
  [33] = {
    ["type"] = "STRING",
    ["value"] = "Modules loaded successfully!",
    ["raw"] = "\"Modules loaded successfully!\"",
    ["line"] = 9,
    ["col"] = 11,
  },
  [34] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 9,
    ["col"] = 41,
  },
  [35] = {
    ["type"] = "KEYWORD",
    ["value"] = "local",
    ["raw"] = "local",
    ["line"] = 11,
    ["col"] = 5,
  },
  [36] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "test_code",
    ["raw"] = "test_code",
    ["line"] = 11,
    ["col"] = 11,
  },
  [37] = {
    ["type"] = "ASSIGN",
    ["value"] = "=",
    ["raw"] = "=",
    ["line"] = 11,
    ["col"] = 21,
  },
  [38] = {
    ["type"] = "STRING",
    ["value"] = "    local a = 1\
    local b = 2\
    return a + b\
    ",
    ["raw"] = " [[\
    local a = 1\
    local b = 2\
    return a + b\
    ]]",
    ["line"] = 11,
    ["col"] = 22,
  },
  [39] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 17,
    ["col"] = 5,
  },
  [40] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 17,
    ["col"] = 10,
  },
  [41] = {
    ["type"] = "STRING",
    ["value"] = "\
Test code:",
    ["raw"] = "\"\\nTest code:\"",
    ["line"] = 17,
    ["col"] = 11,
  },
  [42] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 17,
    ["col"] = 25,
  },
  [43] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 18,
    ["col"] = 5,
  },
  [44] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 18,
    ["col"] = 10,
  },
  [45] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "test_code",
    ["raw"] = "test_code",
    ["line"] = 18,
    ["col"] = 11,
  },
  [46] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 18,
    ["col"] = 20,
  },
  [47] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 20,
    ["col"] = 5,
  },
  [48] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 20,
    ["col"] = 10,
  },
  [49] = {
    ["type"] = "STRING",
    ["value"] = "\
Tokenizing...",
    ["raw"] = "\"\\nTokenizing...\"",
    ["line"] = 20,
    ["col"] = 11,
  },
  [50] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 20,
    ["col"] = 28,
  },
  [51] = {
    ["type"] = "KEYWORD",
    ["value"] = "local",
    ["raw"] = "local",
    ["line"] = 21,
    ["col"] = 5,
  },
  [52] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "tokens",
    ["raw"] = "tokens",
    ["line"] = 21,
    ["col"] = 11,
  },
  [53] = {
    ["type"] = "ASSIGN",
    ["value"] = "=",
    ["raw"] = "=",
    ["line"] = 21,
    ["col"] = 18,
  },
  [54] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "lexer",
    ["raw"] = "lexer",
    ["line"] = 21,
    ["col"] = 20,
  },
  [55] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 21,
    ["col"] = 25,
  },
  [56] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "tokenize",
    ["raw"] = "tokenize",
    ["line"] = 21,
    ["col"] = 26,
  },
  [57] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 21,
    ["col"] = 34,
  },
  [58] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "test_code",
    ["raw"] = "test_code",
    ["line"] = 21,
    ["col"] = 35,
  },
  [59] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 21,
    ["col"] = 44,
  },
  [60] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 22,
    ["col"] = 5,
  },
  [61] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 22,
    ["col"] = 10,
  },
  [62] = {
    ["type"] = "STRING",
    ["value"] = "Tokenization complete! Got ",
    ["raw"] = "\"Tokenization complete! Got \"",
    ["line"] = 22,
    ["col"] = 11,
  },
  [63] = {
    ["type"] = "CONCAT",
    ["value"] = "..",
    ["raw"] = "..",
    ["line"] = 22,
    ["col"] = 41,
  },
  [64] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 22,
    ["col"] = 44,
  },
  [65] = {
    ["type"] = "LEN",
    ["value"] = "#",
    ["raw"] = "#",
    ["line"] = 22,
    ["col"] = 45,
  },
  [66] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "tokens",
    ["raw"] = "tokens",
    ["line"] = 22,
    ["col"] = 46,
  },
  [67] = {
    ["type"] = "SUB",
    ["value"] = "-",
    ["raw"] = "-",
    ["line"] = 22,
    ["col"] = 53,
  },
  [68] = {
    ["type"] = "NUMBER",
    ["value"] = 1,
    ["raw"] = "1",
    ["line"] = 22,
    ["col"] = 55,
  },
  [69] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 22,
    ["col"] = 56,
  },
  [70] = {
    ["type"] = "CONCAT",
    ["value"] = "..",
    ["raw"] = "..",
    ["line"] = 22,
    ["col"] = 58,
  },
  [71] = {
    ["type"] = "STRING",
    ["value"] = " tokens (excluding EOF)",
    ["raw"] = "\" tokens (excluding EOF)\"",
    ["line"] = 22,
    ["col"] = 61,
  },
  [72] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 22,
    ["col"] = 86,
  },
  [73] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 24,
    ["col"] = 5,
  },
  [74] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 24,
    ["col"] = 10,
  },
  [75] = {
    ["type"] = "STRING",
    ["value"] = "\
First 10 tokens:",
    ["raw"] = "\"\\nFirst 10 tokens:\"",
    ["line"] = 24,
    ["col"] = 11,
  },
  [76] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 24,
    ["col"] = 31,
  },
  [77] = {
    ["type"] = "KEYWORD",
    ["value"] = "for",
    ["raw"] = "for",
    ["line"] = 25,
    ["col"] = 5,
  },
  [78] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "i",
    ["raw"] = "i",
    ["line"] = 25,
    ["col"] = 9,
  },
  [79] = {
    ["type"] = "ASSIGN",
    ["value"] = "=",
    ["raw"] = "=",
    ["line"] = 25,
    ["col"] = 11,
  },
  [80] = {
    ["type"] = "NUMBER",
    ["value"] = 1,
    ["raw"] = "1",
    ["line"] = 25,
    ["col"] = 13,
  },
  [81] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 25,
    ["col"] = 14,
  },
  [82] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "math",
    ["raw"] = "math",
    ["line"] = 25,
    ["col"] = 16,
  },
  [83] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 25,
    ["col"] = 20,
  },
  [84] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "min",
    ["raw"] = "min",
    ["line"] = 25,
    ["col"] = 21,
  },
  [85] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 25,
    ["col"] = 24,
  },
  [86] = {
    ["type"] = "NUMBER",
    ["value"] = 10,
    ["raw"] = "10",
    ["line"] = 25,
    ["col"] = 25,
  },
  [87] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 25,
    ["col"] = 27,
  },
  [88] = {
    ["type"] = "LEN",
    ["value"] = "#",
    ["raw"] = "#",
    ["line"] = 25,
    ["col"] = 29,
  },
  [89] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "tokens",
    ["raw"] = "tokens",
    ["line"] = 25,
    ["col"] = 30,
  },
  [90] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 25,
    ["col"] = 36,
  },
  [91] = {
    ["type"] = "KEYWORD",
    ["value"] = "do",
    ["raw"] = "do",
    ["line"] = 25,
    ["col"] = 38,
  },
  [92] = {
    ["type"] = "KEYWORD",
    ["value"] = "local",
    ["raw"] = "local",
    ["line"] = 26,
    ["col"] = 9,
  },
  [93] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "t",
    ["raw"] = "t",
    ["line"] = 26,
    ["col"] = 15,
  },
  [94] = {
    ["type"] = "ASSIGN",
    ["value"] = "=",
    ["raw"] = "=",
    ["line"] = 26,
    ["col"] = 17,
  },
  [95] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "tokens",
    ["raw"] = "tokens",
    ["line"] = 26,
    ["col"] = 19,
  },
  [96] = {
    ["type"] = "LBRACKET",
    ["value"] = "[",
    ["raw"] = "[",
    ["line"] = 26,
    ["col"] = 25,
  },
  [97] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "i",
    ["raw"] = "i",
    ["line"] = 26,
    ["col"] = 26,
  },
  [98] = {
    ["type"] = "RBRACKET",
    ["value"] = "]",
    ["raw"] = "]",
    ["line"] = 26,
    ["col"] = 27,
  },
  [99] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 27,
    ["col"] = 9,
  },
  [100] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 27,
    ["col"] = 14,
  },
  [101] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "string",
    ["raw"] = "string",
    ["line"] = 27,
    ["col"] = 15,
  },
  [102] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 27,
    ["col"] = 21,
  },
  [103] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "format",
    ["raw"] = "format",
    ["line"] = 27,
    ["col"] = 22,
  },
  [104] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 27,
    ["col"] = 28,
  },
  [105] = {
    ["type"] = "STRING",
    ["value"] = "%d: Type=%s, Value=%s, Line=%d, Col=%d",
    ["raw"] = "\"%d: Type=%s, Value=%s, Line=%d, Col=%d\"",
    ["line"] = 27,
    ["col"] = 29,
  },
  [106] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 27,
    ["col"] = 69,
  },
  [107] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "i",
    ["raw"] = "i",
    ["line"] = 28,
    ["col"] = 15,
  },
  [108] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 28,
    ["col"] = 16,
  },
  [109] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "t",
    ["raw"] = "t",
    ["line"] = 28,
    ["col"] = 18,
  },
  [110] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 28,
    ["col"] = 19,
  },
  [111] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "type",
    ["raw"] = "type",
    ["line"] = 28,
    ["col"] = 20,
  },
  [112] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 28,
    ["col"] = 24,
  },
  [113] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "tostring",
    ["raw"] = "tostring",
    ["line"] = 28,
    ["col"] = 26,
  },
  [114] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 28,
    ["col"] = 34,
  },
  [115] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "t",
    ["raw"] = "t",
    ["line"] = 28,
    ["col"] = 35,
  },
  [116] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 28,
    ["col"] = 36,
  },
  [117] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "value",
    ["raw"] = "value",
    ["line"] = 28,
    ["col"] = 37,
  },
  [118] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 28,
    ["col"] = 42,
  },
  [119] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 28,
    ["col"] = 43,
  },
  [120] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "t",
    ["raw"] = "t",
    ["line"] = 28,
    ["col"] = 45,
  },
  [121] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 28,
    ["col"] = 46,
  },
  [122] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "line",
    ["raw"] = "line",
    ["line"] = 28,
    ["col"] = 47,
  },
  [123] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 28,
    ["col"] = 51,
  },
  [124] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "t",
    ["raw"] = "t",
    ["line"] = 28,
    ["col"] = 53,
  },
  [125] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 28,
    ["col"] = 54,
  },
  [126] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "col",
    ["raw"] = "col",
    ["line"] = 28,
    ["col"] = 55,
  },
  [127] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 28,
    ["col"] = 58,
  },
  [128] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 28,
    ["col"] = 59,
  },
  [129] = {
    ["type"] = "KEYWORD",
    ["value"] = "end",
    ["raw"] = "end",
    ["line"] = 29,
    ["col"] = 5,
  },
  [130] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 31,
    ["col"] = 5,
  },
  [131] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 31,
    ["col"] = 10,
  },
  [132] = {
    ["type"] = "STRING",
    ["value"] = "\
Parsing...",
    ["raw"] = "\"\\nParsing...\"",
    ["line"] = 31,
    ["col"] = 11,
  },
  [133] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 31,
    ["col"] = 25,
  },
  [134] = {
    ["type"] = "KEYWORD",
    ["value"] = "local",
    ["raw"] = "local",
    ["line"] = 32,
    ["col"] = 5,
  },
  [135] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "ast",
    ["raw"] = "ast",
    ["line"] = 32,
    ["col"] = 11,
  },
  [136] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 32,
    ["col"] = 14,
  },
  [137] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "errors",
    ["raw"] = "errors",
    ["line"] = 32,
    ["col"] = 16,
  },
  [138] = {
    ["type"] = "ASSIGN",
    ["value"] = "=",
    ["raw"] = "=",
    ["line"] = 32,
    ["col"] = 23,
  },
  [139] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "parser",
    ["raw"] = "parser",
    ["line"] = 32,
    ["col"] = 25,
  },
  [140] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 32,
    ["col"] = 31,
  },
  [141] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "parse",
    ["raw"] = "parse",
    ["line"] = 32,
    ["col"] = 32,
  },
  [142] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 32,
    ["col"] = 37,
  },
  [143] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "test_code",
    ["raw"] = "test_code",
    ["line"] = 32,
    ["col"] = 38,
  },
  [144] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 32,
    ["col"] = 47,
  },
  [145] = {
    ["type"] = "KEYWORD",
    ["value"] = "if",
    ["raw"] = "if",
    ["line"] = 34,
    ["col"] = 5,
  },
  [146] = {
    ["type"] = "LEN",
    ["value"] = "#",
    ["raw"] = "#",
    ["line"] = 34,
    ["col"] = 8,
  },
  [147] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "errors",
    ["raw"] = "errors",
    ["line"] = 34,
    ["col"] = 9,
  },
  [148] = {
    ["type"] = "GT_SYMBOL",
    ["value"] = ">",
    ["raw"] = ">",
    ["line"] = 34,
    ["col"] = 16,
  },
  [149] = {
    ["type"] = "NUMBER",
    ["value"] = 0,
    ["raw"] = "0",
    ["line"] = 34,
    ["col"] = 18,
  },
  [150] = {
    ["type"] = "KEYWORD",
    ["value"] = "then",
    ["raw"] = "then",
    ["line"] = 34,
    ["col"] = 20,
  },
  [151] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 35,
    ["col"] = 9,
  },
  [152] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 35,
    ["col"] = 14,
  },
  [153] = {
    ["type"] = "STRING",
    ["value"] = "\
Parsing completed with ",
    ["raw"] = "\"\\nParsing completed with \"",
    ["line"] = 35,
    ["col"] = 15,
  },
  [154] = {
    ["type"] = "CONCAT",
    ["value"] = "..",
    ["raw"] = "..",
    ["line"] = 35,
    ["col"] = 43,
  },
  [155] = {
    ["type"] = "LEN",
    ["value"] = "#",
    ["raw"] = "#",
    ["line"] = 35,
    ["col"] = 46,
  },
  [156] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "errors",
    ["raw"] = "errors",
    ["line"] = 35,
    ["col"] = 47,
  },
  [157] = {
    ["type"] = "CONCAT",
    ["value"] = "..",
    ["raw"] = "..",
    ["line"] = 35,
    ["col"] = 54,
  },
  [158] = {
    ["type"] = "STRING",
    ["value"] = " errors:",
    ["raw"] = "\" errors:\"",
    ["line"] = 35,
    ["col"] = 57,
  },
  [159] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 35,
    ["col"] = 67,
  },
  [160] = {
    ["type"] = "KEYWORD",
    ["value"] = "for",
    ["raw"] = "for",
    ["line"] = 36,
    ["col"] = 9,
  },
  [161] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "i",
    ["raw"] = "i",
    ["line"] = 36,
    ["col"] = 13,
  },
  [162] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 36,
    ["col"] = 14,
  },
  [163] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "err",
    ["raw"] = "err",
    ["line"] = 36,
    ["col"] = 16,
  },
  [164] = {
    ["type"] = "KEYWORD",
    ["value"] = "in",
    ["raw"] = "in",
    ["line"] = 36,
    ["col"] = 20,
  },
  [165] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "ipairs",
    ["raw"] = "ipairs",
    ["line"] = 36,
    ["col"] = 23,
  },
  [166] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 36,
    ["col"] = 29,
  },
  [167] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "errors",
    ["raw"] = "errors",
    ["line"] = 36,
    ["col"] = 30,
  },
  [168] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 36,
    ["col"] = 36,
  },
  [169] = {
    ["type"] = "KEYWORD",
    ["value"] = "do",
    ["raw"] = "do",
    ["line"] = 36,
    ["col"] = 38,
  },
  [170] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 37,
    ["col"] = 13,
  },
  [171] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 37,
    ["col"] = 18,
  },
  [172] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "string",
    ["raw"] = "string",
    ["line"] = 37,
    ["col"] = 19,
  },
  [173] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 37,
    ["col"] = 25,
  },
  [174] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "format",
    ["raw"] = "format",
    ["line"] = 37,
    ["col"] = 26,
  },
  [175] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 37,
    ["col"] = 32,
  },
  [176] = {
    ["type"] = "STRING",
    ["value"] = "Error %d: %s at line %d, col %d",
    ["raw"] = "\"Error %d: %s at line %d, col %d\"",
    ["line"] = 37,
    ["col"] = 33,
  },
  [177] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 37,
    ["col"] = 66,
  },
  [178] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "i",
    ["raw"] = "i",
    ["line"] = 38,
    ["col"] = 19,
  },
  [179] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 38,
    ["col"] = 20,
  },
  [180] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "err",
    ["raw"] = "err",
    ["line"] = 38,
    ["col"] = 22,
  },
  [181] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 38,
    ["col"] = 25,
  },
  [182] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "message",
    ["raw"] = "message",
    ["line"] = 38,
    ["col"] = 26,
  },
  [183] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 38,
    ["col"] = 33,
  },
  [184] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "err",
    ["raw"] = "err",
    ["line"] = 38,
    ["col"] = 35,
  },
  [185] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 38,
    ["col"] = 38,
  },
  [186] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "line",
    ["raw"] = "line",
    ["line"] = 38,
    ["col"] = 39,
  },
  [187] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 38,
    ["col"] = 43,
  },
  [188] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "err",
    ["raw"] = "err",
    ["line"] = 38,
    ["col"] = 45,
  },
  [189] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 38,
    ["col"] = 48,
  },
  [190] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "col",
    ["raw"] = "col",
    ["line"] = 38,
    ["col"] = 49,
  },
  [191] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 38,
    ["col"] = 52,
  },
  [192] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 38,
    ["col"] = 53,
  },
  [193] = {
    ["type"] = "KEYWORD",
    ["value"] = "end",
    ["raw"] = "end",
    ["line"] = 39,
    ["col"] = 9,
  },
  [194] = {
    ["type"] = "KEYWORD",
    ["value"] = "else",
    ["raw"] = "else",
    ["line"] = 40,
    ["col"] = 5,
  },
  [195] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 41,
    ["col"] = 9,
  },
  [196] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 41,
    ["col"] = 14,
  },
  [197] = {
    ["type"] = "STRING",
    ["value"] = "\
Parsing completed successfully!",
    ["raw"] = "\"\\nParsing completed successfully!\"",
    ["line"] = 41,
    ["col"] = 15,
  },
  [198] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 41,
    ["col"] = 50,
  },
  [199] = {
    ["type"] = "KEYWORD",
    ["value"] = "end",
    ["raw"] = "end",
    ["line"] = 42,
    ["col"] = 5,
  },
  [200] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 44,
    ["col"] = 5,
  },
  [201] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 44,
    ["col"] = 10,
  },
  [202] = {
    ["type"] = "STRING",
    ["value"] = "\
AST root:",
    ["raw"] = "\"\\nAST root:\"",
    ["line"] = 44,
    ["col"] = 11,
  },
  [203] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 44,
    ["col"] = 24,
  },
  [204] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 45,
    ["col"] = 5,
  },
  [205] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 45,
    ["col"] = 10,
  },
  [206] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "string",
    ["raw"] = "string",
    ["line"] = 45,
    ["col"] = 11,
  },
  [207] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 45,
    ["col"] = 17,
  },
  [208] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "format",
    ["raw"] = "format",
    ["line"] = 45,
    ["col"] = 18,
  },
  [209] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 45,
    ["col"] = 24,
  },
  [210] = {
    ["type"] = "STRING",
    ["value"] = "Type: %s",
    ["raw"] = "\"Type: %s\"",
    ["line"] = 45,
    ["col"] = 25,
  },
  [211] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 45,
    ["col"] = 35,
  },
  [212] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "ast",
    ["raw"] = "ast",
    ["line"] = 45,
    ["col"] = 37,
  },
  [213] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 45,
    ["col"] = 40,
  },
  [214] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "type",
    ["raw"] = "type",
    ["line"] = 45,
    ["col"] = 41,
  },
  [215] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 45,
    ["col"] = 45,
  },
  [216] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 45,
    ["col"] = 46,
  },
  [217] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 46,
    ["col"] = 5,
  },
  [218] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 46,
    ["col"] = 10,
  },
  [219] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "string",
    ["raw"] = "string",
    ["line"] = 46,
    ["col"] = 11,
  },
  [220] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 46,
    ["col"] = 17,
  },
  [221] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "format",
    ["raw"] = "format",
    ["line"] = 46,
    ["col"] = 18,
  },
  [222] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 46,
    ["col"] = 24,
  },
  [223] = {
    ["type"] = "STRING",
    ["value"] = "Body statements: %d",
    ["raw"] = "\"Body statements: %d\"",
    ["line"] = 46,
    ["col"] = 25,
  },
  [224] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 46,
    ["col"] = 46,
  },
  [225] = {
    ["type"] = "LEN",
    ["value"] = "#",
    ["raw"] = "#",
    ["line"] = 46,
    ["col"] = 48,
  },
  [226] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "ast",
    ["raw"] = "ast",
    ["line"] = 46,
    ["col"] = 49,
  },
  [227] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 46,
    ["col"] = 52,
  },
  [228] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "body",
    ["raw"] = "body",
    ["line"] = 46,
    ["col"] = 53,
  },
  [229] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 46,
    ["col"] = 57,
  },
  [230] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 46,
    ["col"] = 58,
  },
  [231] = {
    ["type"] = "KEYWORD",
    ["value"] = "return",
    ["raw"] = "return",
    ["line"] = 48,
    ["col"] = 5,
  },
  [232] = {
    ["type"] = "TRUE",
    ["value"] = true,
    ["raw"] = "true",
    ["line"] = 48,
    ["col"] = 12,
  },
  [233] = {
    ["type"] = "KEYWORD",
    ["value"] = "end",
    ["raw"] = "end",
    ["line"] = 49,
    ["col"] = 1,
  },
  [234] = {
    ["type"] = "KEYWORD",
    ["value"] = "local",
    ["raw"] = "local",
    ["line"] = 51,
    ["col"] = 1,
  },
  [235] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "ok",
    ["raw"] = "ok",
    ["line"] = 51,
    ["col"] = 7,
  },
  [236] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 51,
    ["col"] = 9,
  },
  [237] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "err",
    ["raw"] = "err",
    ["line"] = 51,
    ["col"] = 11,
  },
  [238] = {
    ["type"] = "ASSIGN",
    ["value"] = "=",
    ["raw"] = "=",
    ["line"] = 51,
    ["col"] = 15,
  },
  [239] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "xpcall",
    ["raw"] = "xpcall",
    ["line"] = 51,
    ["col"] = 17,
  },
  [240] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 51,
    ["col"] = 23,
  },
  [241] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "main",
    ["raw"] = "main",
    ["line"] = 51,
    ["col"] = 24,
  },
  [242] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 51,
    ["col"] = 28,
  },
  [243] = {
    ["type"] = "KEYWORD",
    ["value"] = "function",
    ["raw"] = "function",
    ["line"] = 51,
    ["col"] = 30,
  },
  [244] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 51,
    ["col"] = 38,
  },
  [245] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "err",
    ["raw"] = "err",
    ["line"] = 51,
    ["col"] = 39,
  },
  [246] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 51,
    ["col"] = 42,
  },
  [247] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 52,
    ["col"] = 5,
  },
  [248] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 52,
    ["col"] = 10,
  },
  [249] = {
    ["type"] = "STRING",
    ["value"] = "\
ERROR: ",
    ["raw"] = "\"\\nERROR: \"",
    ["line"] = 52,
    ["col"] = 11,
  },
  [250] = {
    ["type"] = "CONCAT",
    ["value"] = "..",
    ["raw"] = "..",
    ["line"] = 52,
    ["col"] = 23,
  },
  [251] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "tostring",
    ["raw"] = "tostring",
    ["line"] = 52,
    ["col"] = 26,
  },
  [252] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 52,
    ["col"] = 34,
  },
  [253] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "err",
    ["raw"] = "err",
    ["line"] = 52,
    ["col"] = 35,
  },
  [254] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 52,
    ["col"] = 38,
  },
  [255] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 52,
    ["col"] = 39,
  },
  [256] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 53,
    ["col"] = 5,
  },
  [257] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 53,
    ["col"] = 10,
  },
  [258] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "debug",
    ["raw"] = "debug",
    ["line"] = 53,
    ["col"] = 11,
  },
  [259] = {
    ["type"] = "DOT",
    ["value"] = ".",
    ["raw"] = ".",
    ["line"] = 53,
    ["col"] = 16,
  },
  [260] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "traceback",
    ["raw"] = "traceback",
    ["line"] = 53,
    ["col"] = 17,
  },
  [261] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 53,
    ["col"] = 26,
  },
  [262] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "err",
    ["raw"] = "err",
    ["line"] = 53,
    ["col"] = 27,
  },
  [263] = {
    ["type"] = "COMMA",
    ["value"] = ",",
    ["raw"] = ",",
    ["line"] = 53,
    ["col"] = 30,
  },
  [264] = {
    ["type"] = "NUMBER",
    ["value"] = 2,
    ["raw"] = "2",
    ["line"] = 53,
    ["col"] = 32,
  },
  [265] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 53,
    ["col"] = 33,
  },
  [266] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 53,
    ["col"] = 34,
  },
  [267] = {
    ["type"] = "KEYWORD",
    ["value"] = "end",
    ["raw"] = "end",
    ["line"] = 54,
    ["col"] = 1,
  },
  [268] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 54,
    ["col"] = 4,
  },
  [269] = {
    ["type"] = "KEYWORD",
    ["value"] = "if",
    ["raw"] = "if",
    ["line"] = 56,
    ["col"] = 1,
  },
  [270] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "ok",
    ["raw"] = "ok",
    ["line"] = 56,
    ["col"] = 4,
  },
  [271] = {
    ["type"] = "KEYWORD",
    ["value"] = "then",
    ["raw"] = "then",
    ["line"] = 56,
    ["col"] = 7,
  },
  [272] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 57,
    ["col"] = 5,
  },
  [273] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 57,
    ["col"] = 10,
  },
  [274] = {
    ["type"] = "STRING",
    ["value"] = "\
Debug script completed successfully!",
    ["raw"] = "\"\\nDebug script completed successfully!\"",
    ["line"] = 57,
    ["col"] = 11,
  },
  [275] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 57,
    ["col"] = 51,
  },
  [276] = {
    ["type"] = "KEYWORD",
    ["value"] = "else",
    ["raw"] = "else",
    ["line"] = 58,
    ["col"] = 1,
  },
  [277] = {
    ["type"] = "IDENTIFIER",
    ["value"] = "print",
    ["raw"] = "print",
    ["line"] = 59,
    ["col"] = 5,
  },
  [278] = {
    ["type"] = "LPAREN",
    ["value"] = "(",
    ["raw"] = "(",
    ["line"] = 59,
    ["col"] = 10,
  },
  [279] = {
    ["type"] = "STRING",
    ["value"] = "\
Debug script failed!",
    ["raw"] = "\"\\nDebug script failed!\"",
    ["line"] = 59,
    ["col"] = 11,
  },
  [280] = {
    ["type"] = "RPAREN",
    ["value"] = ")",
    ["raw"] = ")",
    ["line"] = 59,
    ["col"] = 35,
  },
  [281] = {
    ["type"] = "KEYWORD",
    ["value"] = "end",
    ["raw"] = "end",
    ["line"] = 60,
    ["col"] = 1,
  },
  [282] = {
    ["type"] = "EOF",
    ["value"] = "",
    ["raw"] = "",
    ["line"] = 60,
    ["col"] = 5,
  },
}
}