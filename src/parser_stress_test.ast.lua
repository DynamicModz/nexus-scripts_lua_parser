return {
  ["body"] = {
    [1] = {
      ["init"] = {
        [1] = {
          ["operator"] = "+",
          ["metamethod"] = "__add",
          ["substituted_operator"] = "+",
          ["right"] = {
            ["lua53_feature"] = true,
            ["metamethod"] = "__idiv",
            ["swap_operands"] = false,
            ["left"] = {
              ["operator"] = "*",
              ["metamethod"] = "__mul",
              ["substituted_operator"] = "*",
              ["right"] = {
                ["lua53_feature"] = true,
                ["metamethod"] = "__shr",
                ["swap_operands"] = false,
                ["left"] = {
                  ["lua53_feature"] = true,
                  ["metamethod"] = "__shl",
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["raw"] = "1",
                    ["is_lua53_feature"] = false,
                    ["value"] = 1,
                    ["type"] = "NumericLiteral",
                  },
                  ["substituted_operator"] = "<<",
                  ["operator"] = "<<",
                  ["right"] = {
                    ["raw"] = "2",
                    ["is_lua53_feature"] = false,
                    ["value"] = 2,
                    ["type"] = "NumericLiteral",
                  },
                  ["expression_depth"] = 7,
                  ["type"] = "BinaryExpression",
                },
                ["substituted_operator"] = ">>",
                ["operator"] = ">>",
                ["right"] = {
                  ["raw"] = "1",
                  ["is_lua53_feature"] = false,
                  ["value"] = 1,
                  ["type"] = "NumericLiteral",
                },
                ["expression_depth"] = 5,
                ["type"] = "BinaryExpression",
              },
              ["swap_operands"] = false,
              ["left"] = {
                ["lua53_feature"] = true,
                ["metamethod"] = "__bor",
                ["swap_operands"] = false,
                ["left"] = {
                  ["lua53_feature"] = true,
                  ["metamethod"] = "__band",
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["raw"] = "3",
                    ["is_lua53_feature"] = false,
                    ["value"] = 3,
                    ["type"] = "NumericLiteral",
                  },
                  ["substituted_operator"] = "&",
                  ["operator"] = "&",
                  ["right"] = {
                    ["raw"] = "7",
                    ["is_lua53_feature"] = false,
                    ["value"] = 7,
                    ["type"] = "NumericLiteral",
                  },
                  ["expression_depth"] = 4,
                  ["type"] = "BinaryExpression",
                },
                ["substituted_operator"] = "|",
                ["operator"] = "|",
                ["right"] = {
                  ["raw"] = "2",
                  ["is_lua53_feature"] = false,
                  ["value"] = 2,
                  ["type"] = "NumericLiteral",
                },
                ["expression_depth"] = 4,
                ["type"] = "BinaryExpression",
              },
              ["expression_depth"] = 2,
              ["type"] = "BinaryExpression",
            },
            ["substituted_operator"] = "//",
            ["operator"] = "//",
            ["right"] = {
              ["raw"] = "3",
              ["is_lua53_feature"] = false,
              ["value"] = 3,
              ["type"] = "NumericLiteral",
            },
            ["expression_depth"] = 2,
            ["type"] = "BinaryExpression",
          },
          ["swap_operands"] = false,
          ["left"] = {
            ["operator"] = "%",
            ["metamethod"] = "__mod",
            ["substituted_operator"] = "%",
            ["right"] = {
              ["raw"] = "10",
              ["is_lua53_feature"] = false,
              ["value"] = 10,
              ["type"] = "NumericLiteral",
            },
            ["swap_operands"] = false,
            ["left"] = {
              ["operator"] = "^",
              ["metamethod"] = "__pow",
              ["substituted_operator"] = "^",
              ["right"] = {
                ["raw"] = "2",
                ["is_lua53_feature"] = false,
                ["value"] = 2,
                ["type"] = "NumericLiteral",
              },
              ["swap_operands"] = false,
              ["left"] = {
                ["operator"] = "-",
                ["metamethod"] = "__sub",
                ["substituted_operator"] = "-",
                ["right"] = {
                  ["operator"] = "/",
                  ["metamethod"] = "__div",
                  ["substituted_operator"] = "/",
                  ["right"] = {
                    ["raw"] = "2",
                    ["is_lua53_feature"] = false,
                    ["value"] = 2,
                    ["type"] = "NumericLiteral",
                  },
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["raw"] = "4",
                    ["is_lua53_feature"] = false,
                    ["value"] = 4,
                    ["type"] = "NumericLiteral",
                  },
                  ["expression_depth"] = 8,
                  ["type"] = "BinaryExpression",
                },
                ["swap_operands"] = false,
                ["left"] = {
                  ["operator"] = "*",
                  ["metamethod"] = "__mul",
                  ["substituted_operator"] = "*",
                  ["right"] = {
                    ["raw"] = "3",
                    ["is_lua53_feature"] = false,
                    ["value"] = 3,
                    ["type"] = "NumericLiteral",
                  },
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["operator"] = "+",
                    ["metamethod"] = "__add",
                    ["substituted_operator"] = "+",
                    ["right"] = {
                      ["raw"] = "2",
                      ["is_lua53_feature"] = false,
                      ["value"] = 2,
                      ["type"] = "NumericLiteral",
                    },
                    ["swap_operands"] = false,
                    ["left"] = {
                      ["raw"] = "1",
                      ["is_lua53_feature"] = false,
                      ["value"] = 1,
                      ["type"] = "NumericLiteral",
                    },
                    ["expression_depth"] = 7,
                    ["type"] = "BinaryExpression",
                  },
                  ["expression_depth"] = 5,
                  ["type"] = "BinaryExpression",
                },
                ["expression_depth"] = 5,
                ["type"] = "BinaryExpression",
              },
              ["expression_depth"] = 3,
              ["type"] = "BinaryExpression",
            },
            ["expression_depth"] = 1,
            ["type"] = "BinaryExpression",
          },
          ["expression_depth"] = 1,
          ["type"] = "BinaryExpression",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "expr1",
          ["attributes"] = {
          },
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
          ["type"] = "Identifier",
        },
      },
      ["loc"] = {
        ["end"] = {
          ["line"] = 4,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 1,
          ["col"] = 1,
        },
      },
      ["type"] = "LocalStatement",
    },
    [2] = {
      ["init"] = {
        [1] = {
          ["fields"] = {
            [1] = {
              ["key"] = {
                ["operator"] = "+",
                ["metamethod"] = "__add",
                ["substituted_operator"] = "+",
                ["right"] = {
                  ["operator"] = "*",
                  ["metamethod"] = "__mul",
                  ["substituted_operator"] = "*",
                  ["right"] = {
                    ["raw"] = "3",
                    ["is_lua53_feature"] = false,
                    ["value"] = 3,
                    ["type"] = "NumericLiteral",
                  },
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["raw"] = "2",
                    ["is_lua53_feature"] = false,
                    ["value"] = 2,
                    ["type"] = "NumericLiteral",
                  },
                  ["expression_depth"] = 5,
                  ["type"] = "BinaryExpression",
                },
                ["swap_operands"] = false,
                ["left"] = {
                  ["raw"] = "1",
                  ["is_lua53_feature"] = false,
                  ["value"] = 1,
                  ["type"] = "NumericLiteral",
                },
                ["expression_depth"] = 4,
                ["type"] = "BinaryExpression",
              },
              ["value"] = {
                ["operator"] = "%",
                ["metamethod"] = "__mod",
                ["substituted_operator"] = "%",
                ["right"] = {
                  ["raw"] = "3",
                  ["is_lua53_feature"] = false,
                  ["value"] = 3,
                  ["type"] = "NumericLiteral",
                },
                ["swap_operands"] = false,
                ["left"] = {
                  ["operator"] = "^",
                  ["metamethod"] = "__pow",
                  ["substituted_operator"] = "^",
                  ["right"] = {
                    ["raw"] = "2",
                    ["is_lua53_feature"] = false,
                    ["value"] = 2,
                    ["type"] = "NumericLiteral",
                  },
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["raw"] = "4",
                    ["is_lua53_feature"] = false,
                    ["value"] = 4,
                    ["type"] = "NumericLiteral",
                  },
                  ["expression_depth"] = 4,
                  ["type"] = "BinaryExpression",
                },
                ["expression_depth"] = 4,
                ["type"] = "BinaryExpression",
              },
              ["type"] = "TableKey",
            },
            [2] = {
              ["key"] = {
                ["operator"] = "..",
                ["metamethod"] = "__concat",
                ["substituted_operator"] = "..",
                ["right"] = {
                  ["operator"] = "+",
                  ["metamethod"] = "__add",
                  ["substituted_operator"] = "+",
                  ["right"] = {
                    ["raw"] = "2",
                    ["is_lua53_feature"] = false,
                    ["value"] = 2,
                    ["type"] = "NumericLiteral",
                  },
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["raw"] = "1",
                    ["is_lua53_feature"] = false,
                    ["value"] = 1,
                    ["type"] = "NumericLiteral",
                  },
                  ["expression_depth"] = 7,
                  ["type"] = "BinaryExpression",
                },
                ["swap_operands"] = false,
                ["left"] = {
                  ["raw"] = "\"key\"",
                  ["value"] = "key",
                  ["type"] = "StringLiteral",
                },
                ["expression_depth"] = 4,
                ["type"] = "BinaryExpression",
              },
              ["value"] = {
                ["fields"] = {
                  [1] = {
                    ["key"] = {
                      ["name"] = "nested",
                      ["attributes"] = {
                      },
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 7,
                          ["col"] = 9,
                        },
                        ["start"] = {
                          ["line"] = 7,
                          ["col"] = 9,
                        },
                      },
                      ["type"] = "Identifier",
                    },
                    ["value"] = {
                      ["fields"] = {
                        [1] = {
                          ["key"] = {
                            ["value"] = true,
                            ["type"] = "BooleanLiteral",
                          },
                          ["value"] = {
                            ["body"] = {
                              [1] = {
                                ["arguments"] = {
                                  [1] = {
                                    ["operator"] = "*",
                                    ["metamethod"] = "__mul",
                                    ["substituted_operator"] = "*",
                                    ["right"] = {
                                      ["raw"] = "2",
                                      ["is_lua53_feature"] = false,
                                      ["value"] = 2,
                                      ["type"] = "NumericLiteral",
                                    },
                                    ["swap_operands"] = false,
                                    ["left"] = {
                                      ["name"] = "x",
                                      ["attributes"] = {
                                      },
                                      ["loc"] = {
                                        ["end"] = {
                                          ["line"] = 8,
                                          ["col"] = 41,
                                        },
                                        ["start"] = {
                                          ["line"] = 8,
                                          ["col"] = 41,
                                        },
                                      },
                                      ["type"] = "Identifier",
                                    },
                                    ["expression_depth"] = 1,
                                    ["type"] = "BinaryExpression",
                                  },
                                },
                                ["type"] = "ReturnStatement",
                              },
                            },
                            ["isLocal"] = false,
                            ["parameters"] = {
                              [1] = {
                                ["name"] = "x",
                                ["attributes"] = {
                                },
                                ["loc"] = {
                                  ["end"] = {
                                    ["line"] = 8,
                                    ["col"] = 31,
                                  },
                                  ["start"] = {
                                    ["line"] = 8,
                                    ["col"] = 31,
                                  },
                                },
                                ["type"] = "Identifier",
                              },
                            },
                            ["type"] = "FunctionExpression",
                          },
                          ["type"] = "TableKey",
                        },
                      },
                      ["metamethods"] = {
                      },
                      ["has_metamethods"] = false,
                      ["type"] = "TableConstructorExpression",
                    },
                    ["type"] = "TableKeyString",
                  },
                  [2] = {
                    ["key"] = {
                      ["name"] = "value",
                      ["attributes"] = {
                      },
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 10,
                          ["col"] = 9,
                        },
                        ["start"] = {
                          ["line"] = 10,
                          ["col"] = 9,
                        },
                      },
                      ["type"] = "Identifier",
                    },
                    ["value"] = {
                      ["lua53_feature"] = true,
                      ["metamethod"] = "__shl",
                      ["swap_operands"] = false,
                      ["left"] = {
                        ["raw"] = "10",
                        ["is_lua53_feature"] = false,
                        ["value"] = 10,
                        ["type"] = "NumericLiteral",
                      },
                      ["substituted_operator"] = "<<",
                      ["operator"] = "<<",
                      ["right"] = {
                        ["raw"] = "2",
                        ["is_lua53_feature"] = false,
                        ["value"] = 2,
                        ["type"] = "NumericLiteral",
                      },
                      ["expression_depth"] = 7,
                      ["type"] = "BinaryExpression",
                    },
                    ["type"] = "TableKeyString",
                  },
                },
                ["metamethods"] = {
                },
                ["has_metamethods"] = false,
                ["type"] = "TableConstructorExpression",
              },
              ["type"] = "TableKey",
            },
            [3] = {
              ["key"] = {
                ["name"] = "method",
                ["attributes"] = {
                },
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
                ["type"] = "Identifier",
              },
              ["value"] = {
                ["body"] = {
                  [1] = {
                    ["arguments"] = {
                      [1] = {
                        ["body"] = {
                          [1] = {
                            ["arguments"] = {
                              [1] = {
                                ["body"] = {
                                  [1] = {
                                    ["arguments"] = {
                                      [1] = {
                                        ["operator"] = "+",
                                        ["metamethod"] = "__add",
                                        ["substituted_operator"] = "+",
                                        ["right"] = {
                                          ["name"] = "z",
                                          ["attributes"] = {
                                          },
                                          ["loc"] = {
                                            ["end"] = {
                                              ["line"] = 15,
                                              ["col"] = 32,
                                            },
                                            ["start"] = {
                                              ["line"] = 15,
                                              ["col"] = 32,
                                            },
                                          },
                                          ["type"] = "Identifier",
                                        },
                                        ["swap_operands"] = false,
                                        ["left"] = {
                                          ["operator"] = "+",
                                          ["metamethod"] = "__add",
                                          ["substituted_operator"] = "+",
                                          ["right"] = {
                                            ["name"] = "y",
                                            ["attributes"] = {
                                            },
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
                                            ["type"] = "Identifier",
                                          },
                                          ["swap_operands"] = false,
                                          ["left"] = {
                                            ["name"] = "x",
                                            ["attributes"] = {
                                            },
                                            ["loc"] = {
                                              ["end"] = {
                                                ["line"] = 15,
                                                ["col"] = 24,
                                              },
                                              ["start"] = {
                                                ["line"] = 15,
                                                ["col"] = 24,
                                              },
                                            },
                                            ["type"] = "Identifier",
                                          },
                                          ["expression_depth"] = 1,
                                          ["type"] = "BinaryExpression",
                                        },
                                        ["expression_depth"] = 1,
                                        ["type"] = "BinaryExpression",
                                      },
                                    },
                                    ["type"] = "ReturnStatement",
                                  },
                                },
                                ["isLocal"] = false,
                                ["parameters"] = {
                                  [1] = {
                                    ["name"] = "z",
                                    ["attributes"] = {
                                    },
                                    ["loc"] = {
                                      ["end"] = {
                                        ["line"] = 14,
                                        ["col"] = 29,
                                      },
                                      ["start"] = {
                                        ["line"] = 14,
                                        ["col"] = 29,
                                      },
                                    },
                                    ["type"] = "Identifier",
                                  },
                                },
                                ["type"] = "FunctionExpression",
                              },
                            },
                            ["type"] = "ReturnStatement",
                          },
                        },
                        ["isLocal"] = false,
                        ["parameters"] = {
                          [1] = {
                            ["name"] = "y",
                            ["attributes"] = {
                            },
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 13,
                                ["col"] = 25,
                              },
                              ["start"] = {
                                ["line"] = 13,
                                ["col"] = 25,
                              },
                            },
                            ["type"] = "Identifier",
                          },
                        },
                        ["type"] = "FunctionExpression",
                      },
                    },
                    ["type"] = "ReturnStatement",
                  },
                },
                ["isLocal"] = false,
                ["parameters"] = {
                  [1] = {
                    ["name"] = "self",
                    ["attributes"] = {
                    },
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 12,
                        ["col"] = 23,
                      },
                      ["start"] = {
                        ["line"] = 12,
                        ["col"] = 23,
                      },
                    },
                    ["type"] = "Identifier",
                  },
                  [2] = {
                    ["name"] = "x",
                    ["attributes"] = {
                    },
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 12,
                        ["col"] = 29,
                      },
                      ["start"] = {
                        ["line"] = 12,
                        ["col"] = 29,
                      },
                    },
                    ["type"] = "Identifier",
                  },
                },
                ["type"] = "FunctionExpression",
              },
              ["type"] = "TableKeyString",
            },
          },
          ["metamethods"] = {
          },
          ["has_metamethods"] = false,
          ["type"] = "TableConstructorExpression",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "table1",
          ["attributes"] = {
          },
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
          ["type"] = "Identifier",
        },
      },
      ["loc"] = {
        ["end"] = {
          ["line"] = 21,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 4,
          ["col"] = 1,
        },
      },
      ["type"] = "LocalStatement",
    },
    [3] = {
      ["init"] = {
        [1] = {
          ["fields"] = {
            [1] = {
              ["key"] = {
                ["name"] = "chain",
                ["attributes"] = {
                },
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
                ["type"] = "Identifier",
              },
              ["value"] = {
                ["body"] = {
                  [1] = {
                    ["arguments"] = {
                      [1] = {
                        ["fields"] = {
                          [1] = {
                            ["key"] = {
                              ["name"] = "method1",
                              ["attributes"] = {
                              },
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
                            },
                            ["value"] = {
                              ["body"] = {
                                [1] = {
                                  ["arguments"] = {
                                    [1] = {
                                      ["fields"] = {
                                        [1] = {
                                          ["key"] = {
                                            ["name"] = "method2",
                                            ["attributes"] = {
                                            },
                                            ["loc"] = {
                                              ["end"] = {
                                                ["line"] = 26,
                                                ["col"] = 21,
                                              },
                                              ["start"] = {
                                                ["line"] = 26,
                                                ["col"] = 21,
                                              },
                                            },
                                            ["type"] = "Identifier",
                                          },
                                          ["value"] = {
                                            ["body"] = {
                                              [1] = {
                                                ["arguments"] = {
                                                  [1] = {
                                                    ["fields"] = {
                                                      [1] = {
                                                        ["key"] = {
                                                          ["name"] = "method3",
                                                          ["attributes"] = {
                                                          },
                                                          ["loc"] = {
                                                            ["end"] = {
                                                              ["line"] = 28,
                                                              ["col"] = 29,
                                                            },
                                                            ["start"] = {
                                                              ["line"] = 28,
                                                              ["col"] = 29,
                                                            },
                                                          },
                                                          ["type"] = "Identifier",
                                                        },
                                                        ["value"] = {
                                                          ["body"] = {
                                                            [1] = {
                                                              ["arguments"] = {
                                                                [1] = {
                                                                  ["operator"] = "+",
                                                                  ["metamethod"] = "__add",
                                                                  ["substituted_operator"] = "+",
                                                                  ["right"] = {
                                                                    ["name"] = "y",
                                                                    ["attributes"] = {
                                                                    },
                                                                    ["loc"] = {
                                                                      ["end"] = {
                                                                        ["line"] = 29,
                                                                        ["col"] = 44,
                                                                      },
                                                                      ["start"] = {
                                                                        ["line"] = 29,
                                                                        ["col"] = 44,
                                                                      },
                                                                    },
                                                                    ["type"] = "Identifier",
                                                                  },
                                                                  ["swap_operands"] = false,
                                                                  ["left"] = {
                                                                    ["name"] = "x",
                                                                    ["attributes"] = {
                                                                    },
                                                                    ["loc"] = {
                                                                      ["end"] = {
                                                                        ["line"] = 29,
                                                                        ["col"] = 40,
                                                                      },
                                                                      ["start"] = {
                                                                        ["line"] = 29,
                                                                        ["col"] = 40,
                                                                      },
                                                                    },
                                                                    ["type"] = "Identifier",
                                                                  },
                                                                  ["expression_depth"] = 1,
                                                                  ["type"] = "BinaryExpression",
                                                                },
                                                              },
                                                              ["type"] = "ReturnStatement",
                                                            },
                                                          },
                                                          ["isLocal"] = false,
                                                          ["parameters"] = {
                                                            [1] = {
                                                              ["name"] = "self",
                                                              ["attributes"] = {
                                                              },
                                                              ["loc"] = {
                                                                ["end"] = {
                                                                  ["line"] = 28,
                                                                  ["col"] = 48,
                                                                },
                                                                ["start"] = {
                                                                  ["line"] = 28,
                                                                  ["col"] = 48,
                                                                },
                                                              },
                                                              ["type"] = "Identifier",
                                                            },
                                                            [2] = {
                                                              ["name"] = "y",
                                                              ["attributes"] = {
                                                              },
                                                              ["loc"] = {
                                                                ["end"] = {
                                                                  ["line"] = 28,
                                                                  ["col"] = 54,
                                                                },
                                                                ["start"] = {
                                                                  ["line"] = 28,
                                                                  ["col"] = 54,
                                                                },
                                                              },
                                                              ["type"] = "Identifier",
                                                            },
                                                          },
                                                          ["type"] = "FunctionExpression",
                                                        },
                                                        ["type"] = "TableKeyString",
                                                      },
                                                    },
                                                    ["metamethods"] = {
                                                    },
                                                    ["has_metamethods"] = false,
                                                    ["type"] = "TableConstructorExpression",
                                                  },
                                                },
                                                ["type"] = "ReturnStatement",
                                              },
                                            },
                                            ["isLocal"] = false,
                                            ["parameters"] = {
                                              [1] = {
                                                ["name"] = "self",
                                                ["attributes"] = {
                                                },
                                                ["loc"] = {
                                                  ["end"] = {
                                                    ["line"] = 26,
                                                    ["col"] = 40,
                                                  },
                                                  ["start"] = {
                                                    ["line"] = 26,
                                                    ["col"] = 40,
                                                  },
                                                },
                                                ["type"] = "Identifier",
                                              },
                                              [2] = {
                                                ["name"] = "x",
                                                ["attributes"] = {
                                                },
                                                ["loc"] = {
                                                  ["end"] = {
                                                    ["line"] = 26,
                                                    ["col"] = 46,
                                                  },
                                                  ["start"] = {
                                                    ["line"] = 26,
                                                    ["col"] = 46,
                                                  },
                                                },
                                                ["type"] = "Identifier",
                                              },
                                            },
                                            ["type"] = "FunctionExpression",
                                          },
                                          ["type"] = "TableKeyString",
                                        },
                                      },
                                      ["metamethods"] = {
                                      },
                                      ["has_metamethods"] = false,
                                      ["type"] = "TableConstructorExpression",
                                    },
                                  },
                                  ["type"] = "ReturnStatement",
                                },
                              },
                              ["isLocal"] = false,
                              ["parameters"] = {
                                [1] = {
                                  ["name"] = "self",
                                  ["attributes"] = {
                                  },
                                  ["loc"] = {
                                    ["end"] = {
                                      ["line"] = 24,
                                      ["col"] = 32,
                                    },
                                    ["start"] = {
                                      ["line"] = 24,
                                      ["col"] = 32,
                                    },
                                  },
                                  ["type"] = "Identifier",
                                },
                              },
                              ["type"] = "FunctionExpression",
                            },
                            ["type"] = "TableKeyString",
                          },
                        },
                        ["metamethods"] = {
                        },
                        ["has_metamethods"] = false,
                        ["type"] = "TableConstructorExpression",
                      },
                    },
                    ["type"] = "ReturnStatement",
                  },
                },
                ["isLocal"] = false,
                ["parameters"] = {
                  [1] = {
                    ["name"] = "self",
                    ["attributes"] = {
                    },
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 22,
                        ["col"] = 22,
                      },
                      ["start"] = {
                        ["line"] = 22,
                        ["col"] = 22,
                      },
                    },
                    ["type"] = "Identifier",
                  },
                },
                ["type"] = "FunctionExpression",
              },
              ["type"] = "TableKeyString",
            },
          },
          ["metamethods"] = {
          },
          ["has_metamethods"] = false,
          ["type"] = "TableConstructorExpression",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "obj",
          ["attributes"] = {
          },
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
          ["type"] = "Identifier",
        },
      },
      ["loc"] = {
        ["end"] = {
          ["line"] = 39,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 21,
          ["col"] = 1,
        },
      },
      ["type"] = "LocalStatement",
    },
    [4] = {
      ["init"] = {
        [1] = {
          ["base"] = {
            ["identifier"] = {
              ["name"] = "gsub",
              ["attributes"] = {
              },
              ["loc"] = {
                ["end"] = {
                  ["line"] = 39,
                  ["col"] = 24,
                },
                ["start"] = {
                  ["line"] = 39,
                  ["col"] = 24,
                },
              },
              ["type"] = "Identifier",
            },
            ["base"] = {
              ["name"] = "string",
              ["attributes"] = {
              },
              ["loc"] = {
                ["end"] = {
                  ["line"] = 39,
                  ["col"] = 17,
                },
                ["start"] = {
                  ["line"] = 39,
                  ["col"] = 17,
                },
              },
              ["type"] = "Identifier",
            },
            ["indexer"] = ".",
            ["type"] = "MemberExpression",
          },
          ["has_metamethod"] = true,
          ["is_method_call"] = true,
          ["arguments"] = {
            [1] = {
              ["base"] = {
                ["identifier"] = {
                  ["name"] = "concat",
                  ["attributes"] = {
                  },
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 40,
                      ["col"] = 11,
                    },
                    ["start"] = {
                      ["line"] = 40,
                      ["col"] = 11,
                    },
                  },
                  ["type"] = "Identifier",
                },
                ["base"] = {
                  ["name"] = "table",
                  ["attributes"] = {
                  },
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 40,
                      ["col"] = 5,
                    },
                    ["start"] = {
                      ["line"] = 40,
                      ["col"] = 5,
                    },
                  },
                  ["type"] = "Identifier",
                },
                ["indexer"] = ".",
                ["type"] = "MemberExpression",
              },
              ["has_metamethod"] = true,
              ["is_method_call"] = true,
              ["arguments"] = {
                [1] = {
                  ["fields"] = {
                    [1] = {
                      ["value"] = {
                        ["base"] = {
                          ["identifier"] = {
                            ["name"] = "rep",
                            ["attributes"] = {
                            },
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 42,
                                ["col"] = 20,
                              },
                              ["start"] = {
                                ["line"] = 42,
                                ["col"] = 20,
                              },
                            },
                            ["type"] = "Identifier",
                          },
                          ["base"] = {
                            ["name"] = "string",
                            ["attributes"] = {
                            },
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 42,
                                ["col"] = 13,
                              },
                              ["start"] = {
                                ["line"] = 42,
                                ["col"] = 13,
                              },
                            },
                            ["type"] = "Identifier",
                          },
                          ["indexer"] = ".",
                          ["type"] = "MemberExpression",
                        },
                        ["has_metamethod"] = true,
                        ["is_method_call"] = true,
                        ["arguments"] = {
                          [1] = {
                            ["raw"] = "\"a\"",
                            ["value"] = "a",
                            ["type"] = "StringLiteral",
                          },
                          [2] = {
                            ["operator"] = "+",
                            ["metamethod"] = "__add",
                            ["substituted_operator"] = "+",
                            ["right"] = {
                              ["raw"] = "3",
                              ["is_lua53_feature"] = false,
                              ["value"] = 3,
                              ["type"] = "NumericLiteral",
                            },
                            ["swap_operands"] = false,
                            ["left"] = {
                              ["raw"] = "2",
                              ["is_lua53_feature"] = false,
                              ["value"] = 2,
                              ["type"] = "NumericLiteral",
                            },
                            ["expression_depth"] = 10,
                            ["type"] = "BinaryExpression",
                          },
                        },
                        ["potential_metamethod"] = "__call",
                        ["expression_depth"] = 9,
                        ["type"] = "CallExpression",
                      },
                      ["type"] = "TableValue",
                    },
                    [2] = {
                      ["value"] = {
                        ["base"] = {
                          ["identifier"] = {
                            ["name"] = "sub",
                            ["attributes"] = {
                            },
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 43,
                                ["col"] = 20,
                              },
                              ["start"] = {
                                ["line"] = 43,
                                ["col"] = 20,
                              },
                            },
                            ["type"] = "Identifier",
                          },
                          ["base"] = {
                            ["name"] = "string",
                            ["attributes"] = {
                            },
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
                          },
                          ["indexer"] = ".",
                          ["type"] = "MemberExpression",
                        },
                        ["has_metamethod"] = true,
                        ["is_method_call"] = true,
                        ["arguments"] = {
                          [1] = {
                            ["raw"] = "\"hello\"",
                            ["value"] = "hello",
                            ["type"] = "StringLiteral",
                          },
                          [2] = {
                            ["raw"] = "2",
                            ["is_lua53_feature"] = false,
                            ["value"] = 2,
                            ["type"] = "NumericLiteral",
                          },
                          [3] = {
                            ["metamethod"] = "__unm",
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 43,
                                ["col"] = 36,
                              },
                              ["start"] = {
                                ["line"] = 43,
                                ["col"] = 36,
                              },
                            },
                            ["is_lua53_feature"] = false,
                            ["operator"] = "-",
                            ["argument"] = {
                              ["raw"] = "2",
                              ["is_lua53_feature"] = false,
                              ["value"] = 2,
                              ["type"] = "NumericLiteral",
                            },
                            ["expression_depth"] = 11,
                            ["type"] = "UnaryExpression",
                          },
                        },
                        ["potential_metamethod"] = "__call",
                        ["expression_depth"] = 9,
                        ["type"] = "CallExpression",
                      },
                      ["type"] = "TableValue",
                    },
                    [3] = {
                      ["value"] = {
                        ["operator"] = "or",
                        ["substituted_operator"] = "or",
                        ["right"] = {
                          ["raw"] = "\"false\"",
                          ["value"] = "false",
                          ["type"] = "StringLiteral",
                        },
                        ["swap_operands"] = false,
                        ["left"] = {
                          ["operator"] = "and",
                          ["substituted_operator"] = "and",
                          ["right"] = {
                            ["raw"] = "\"true\"",
                            ["value"] = "true",
                            ["type"] = "StringLiteral",
                          },
                          ["swap_operands"] = false,
                          ["left"] = {
                            ["operator"] = ">",
                            ["substituted_operator"] = ">",
                            ["right"] = {
                              ["raw"] = "3",
                              ["is_lua53_feature"] = false,
                              ["value"] = 3,
                              ["type"] = "NumericLiteral",
                            },
                            ["swap_operands"] = false,
                            ["left"] = {
                              ["raw"] = "5",
                              ["is_lua53_feature"] = false,
                              ["value"] = 5,
                              ["type"] = "NumericLiteral",
                            },
                            ["expression_depth"] = 8,
                            ["type"] = "BinaryExpression",
                          },
                          ["expression_depth"] = 8,
                          ["type"] = "BinaryExpression",
                        },
                        ["expression_depth"] = 8,
                        ["type"] = "BinaryExpression",
                      },
                      ["type"] = "TableValue",
                    },
                  },
                  ["metamethods"] = {
                  },
                  ["has_metamethods"] = false,
                  ["type"] = "TableConstructorExpression",
                },
                [2] = {
                  ["raw"] = "\"-\"",
                  ["value"] = "-",
                  ["type"] = "StringLiteral",
                },
              },
              ["potential_metamethod"] = "__call",
              ["expression_depth"] = 4,
              ["type"] = "CallExpression",
            },
            [2] = {
              ["raw"] = "\"(%w+)\"",
              ["value"] = "(%w+)",
              ["type"] = "StringLiteral",
            },
            [3] = {
              ["body"] = {
                [1] = {
                  ["arguments"] = {
                    [1] = {
                      ["operator"] = "..",
                      ["metamethod"] = "__concat",
                      ["substituted_operator"] = "..",
                      ["right"] = {
                        ["base"] = {
                          ["identifier"] = {
                            ["name"] = "lower",
                            ["attributes"] = {
                            },
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 51,
                                ["col"] = 23,
                              },
                              ["start"] = {
                                ["line"] = 51,
                                ["col"] = 23,
                              },
                            },
                            ["type"] = "Identifier",
                          },
                          ["base"] = {
                            ["name"] = "string",
                            ["attributes"] = {
                            },
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
                          },
                          ["indexer"] = ".",
                          ["type"] = "MemberExpression",
                        },
                        ["has_metamethod"] = true,
                        ["is_method_call"] = true,
                        ["arguments"] = {
                          [1] = {
                            ["method"] = {
                              ["name"] = "sub",
                              ["attributes"] = {
                              },
                              ["loc"] = {
                                ["end"] = {
                                  ["line"] = 51,
                                  ["col"] = 34,
                                },
                                ["start"] = {
                                  ["line"] = 51,
                                  ["col"] = 34,
                                },
                              },
                              ["type"] = "Identifier",
                            },
                            ["arguments"] = {
                              [1] = {
                                ["raw"] = "2",
                                ["is_lua53_feature"] = false,
                                ["value"] = 2,
                                ["type"] = "NumericLiteral",
                              },
                            },
                            ["base"] = {
                              ["name"] = "word",
                              ["attributes"] = {
                              },
                              ["loc"] = {
                                ["end"] = {
                                  ["line"] = 51,
                                  ["col"] = 29,
                                },
                                ["start"] = {
                                  ["line"] = 51,
                                  ["col"] = 29,
                                },
                              },
                              ["type"] = "Identifier",
                            },
                            ["expression_depth"] = 5,
                            ["type"] = "MethodCallExpression",
                          },
                        },
                        ["potential_metamethod"] = "__call",
                        ["expression_depth"] = 3,
                        ["type"] = "CallExpression",
                      },
                      ["swap_operands"] = false,
                      ["left"] = {
                        ["base"] = {
                          ["identifier"] = {
                            ["name"] = "upper",
                            ["attributes"] = {
                            },
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 50,
                                ["col"] = 23,
                              },
                              ["start"] = {
                                ["line"] = 50,
                                ["col"] = 23,
                              },
                            },
                            ["type"] = "Identifier",
                          },
                          ["base"] = {
                            ["name"] = "string",
                            ["attributes"] = {
                            },
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
                          },
                          ["indexer"] = ".",
                          ["type"] = "MemberExpression",
                        },
                        ["has_metamethod"] = true,
                        ["is_method_call"] = true,
                        ["arguments"] = {
                          [1] = {
                            ["method"] = {
                              ["name"] = "sub",
                              ["attributes"] = {
                              },
                              ["loc"] = {
                                ["end"] = {
                                  ["line"] = 50,
                                  ["col"] = 34,
                                },
                                ["start"] = {
                                  ["line"] = 50,
                                  ["col"] = 34,
                                },
                              },
                              ["type"] = "Identifier",
                            },
                            ["arguments"] = {
                              [1] = {
                                ["raw"] = "1",
                                ["is_lua53_feature"] = false,
                                ["value"] = 1,
                                ["type"] = "NumericLiteral",
                              },
                              [2] = {
                                ["raw"] = "1",
                                ["is_lua53_feature"] = false,
                                ["value"] = 1,
                                ["type"] = "NumericLiteral",
                              },
                            },
                            ["base"] = {
                              ["name"] = "word",
                              ["attributes"] = {
                              },
                              ["loc"] = {
                                ["end"] = {
                                  ["line"] = 50,
                                  ["col"] = 29,
                                },
                                ["start"] = {
                                  ["line"] = 50,
                                  ["col"] = 29,
                                },
                              },
                              ["type"] = "Identifier",
                            },
                            ["expression_depth"] = 4,
                            ["type"] = "MethodCallExpression",
                          },
                        },
                        ["potential_metamethod"] = "__call",
                        ["expression_depth"] = 2,
                        ["type"] = "CallExpression",
                      },
                      ["expression_depth"] = 1,
                      ["type"] = "BinaryExpression",
                    },
                  },
                  ["type"] = "ReturnStatement",
                },
              },
              ["isLocal"] = false,
              ["parameters"] = {
                [1] = {
                  ["name"] = "word",
                  ["attributes"] = {
                  },
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 49,
                      ["col"] = 14,
                    },
                    ["start"] = {
                      ["line"] = 49,
                      ["col"] = 14,
                    },
                  },
                  ["type"] = "Identifier",
                },
              },
              ["type"] = "FunctionExpression",
            },
          },
          ["potential_metamethod"] = "__call",
          ["expression_depth"] = 2,
          ["type"] = "CallExpression",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "result1",
          ["attributes"] = {
          },
          ["loc"] = {
            ["end"] = {
              ["line"] = 39,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 39,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
        },
      },
      ["loc"] = {
        ["end"] = {
          ["line"] = 55,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 39,
          ["col"] = 1,
        },
      },
      ["type"] = "LocalStatement",
    },
    [5] = {
      ["init"] = {
        [1] = {
          ["identifier"] = {
            ["name"] = "value",
            ["attributes"] = {
            },
            ["loc"] = {
              ["end"] = {
                ["line"] = 67,
                ["col"] = 4,
              },
              ["start"] = {
                ["line"] = 67,
                ["col"] = 4,
              },
            },
            ["type"] = "Identifier",
          },
          ["base"] = {
            ["operator"] = "or",
            ["substituted_operator"] = "or",
            ["right"] = {
              ["fields"] = {
                [1] = {
                  ["key"] = {
                    ["name"] = "fallback",
                    ["attributes"] = {
                    },
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 66,
                        ["col"] = 5,
                      },
                      ["start"] = {
                        ["line"] = 66,
                        ["col"] = 5,
                      },
                    },
                    ["type"] = "Identifier",
                  },
                  ["value"] = {
                    ["value"] = true,
                    ["type"] = "BooleanLiteral",
                  },
                  ["type"] = "TableKeyString",
                },
              },
              ["metamethods"] = {
              },
              ["has_metamethods"] = false,
              ["type"] = "TableConstructorExpression",
            },
            ["swap_operands"] = false,
            ["left"] = {
              ["operator"] = "and",
              ["substituted_operator"] = "and",
              ["right"] = {
                ["fields"] = {
                  [1] = {
                    ["key"] = {
                      ["name"] = "value",
                      ["attributes"] = {
                      },
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
                    },
                    ["value"] = {
                      ["operator"] = "or",
                      ["substituted_operator"] = "or",
                      ["right"] = {
                        ["raw"] = "\"default\"",
                        ["value"] = "default",
                        ["type"] = "StringLiteral",
                      },
                      ["swap_operands"] = false,
                      ["left"] = {
                        ["operator"] = "and",
                        ["substituted_operator"] = "and",
                        ["right"] = {
                          ["base"] = {
                            ["body"] = {
                              [1] = {
                                ["clauses"] = {
                                  [1] = {
                                    ["body"] = {
                                      [1] = {
                                        ["arguments"] = {
                                          [1] = {
                                            ["raw"] = "\"nested1\"",
                                            ["value"] = "nested1",
                                            ["type"] = "StringLiteral",
                                          },
                                        },
                                        ["type"] = "ReturnStatement",
                                      },
                                    },
                                    ["condition"] = {
                                      ["operator"] = "<",
                                      ["metamethod"] = "__lt",
                                      ["substituted_operator"] = "<",
                                      ["right"] = {
                                        ["raw"] = "4",
                                        ["is_lua53_feature"] = false,
                                        ["value"] = 4,
                                        ["type"] = "NumericLiteral",
                                      },
                                      ["swap_operands"] = false,
                                      ["left"] = {
                                        ["raw"] = "3",
                                        ["is_lua53_feature"] = false,
                                        ["value"] = 3,
                                        ["type"] = "NumericLiteral",
                                      },
                                      ["expression_depth"] = 0,
                                      ["type"] = "BinaryExpression",
                                    },
                                    ["type"] = "IfClause",
                                  },
                                  [2] = {
                                    ["body"] = {
                                      [1] = {
                                        ["arguments"] = {
                                          [1] = {
                                            ["raw"] = "\"nested2\"",
                                            ["value"] = "nested2",
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
                            ["isLocal"] = false,
                            ["parameters"] = {
                            },
                            ["type"] = "FunctionExpression",
                          },
                          ["has_metamethod"] = true,
                          ["is_method_call"] = false,
                          ["arguments"] = {
                          },
                          ["potential_metamethod"] = "__call",
                          ["expression_depth"] = 9,
                          ["type"] = "CallExpression",
                        },
                        ["swap_operands"] = false,
                        ["left"] = {
                          ["operator"] = "<",
                          ["metamethod"] = "__lt",
                          ["substituted_operator"] = "<",
                          ["right"] = {
                            ["raw"] = "8",
                            ["is_lua53_feature"] = false,
                            ["value"] = 8,
                            ["type"] = "NumericLiteral",
                          },
                          ["swap_operands"] = false,
                          ["left"] = {
                            ["raw"] = "5",
                            ["is_lua53_feature"] = false,
                            ["value"] = 5,
                            ["type"] = "NumericLiteral",
                          },
                          ["expression_depth"] = 7,
                          ["type"] = "BinaryExpression",
                        },
                        ["expression_depth"] = 7,
                        ["type"] = "BinaryExpression",
                      },
                      ["expression_depth"] = 7,
                      ["type"] = "BinaryExpression",
                    },
                    ["type"] = "TableKeyString",
                  },
                },
                ["metamethods"] = {
                },
                ["has_metamethods"] = false,
                ["type"] = "TableConstructorExpression",
              },
              ["swap_operands"] = false,
              ["left"] = {
                ["operator"] = ">",
                ["substituted_operator"] = ">",
                ["right"] = {
                  ["raw"] = "5",
                  ["is_lua53_feature"] = false,
                  ["value"] = 5,
                  ["type"] = "NumericLiteral",
                },
                ["swap_operands"] = false,
                ["left"] = {
                  ["raw"] = "10",
                  ["is_lua53_feature"] = false,
                  ["value"] = 10,
                  ["type"] = "NumericLiteral",
                },
                ["expression_depth"] = 3,
                ["type"] = "BinaryExpression",
              },
              ["expression_depth"] = 3,
              ["type"] = "BinaryExpression",
            },
            ["expression_depth"] = 3,
            ["type"] = "BinaryExpression",
          },
          ["indexer"] = ".",
          ["type"] = "MemberExpression",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "result2",
          ["attributes"] = {
          },
          ["loc"] = {
            ["end"] = {
              ["line"] = 55,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 55,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
        },
      },
      ["loc"] = {
        ["end"] = {
          ["line"] = 69,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 55,
          ["col"] = 1,
        },
      },
      ["type"] = "LocalStatement",
    },
    [6] = {
      ["init"] = {
        [1] = {
          ["fields"] = {
            [1] = {
              ["key"] = {
                ["name"] = "a",
                ["attributes"] = {
                },
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 69,
                    ["col"] = 21,
                  },
                  ["start"] = {
                    ["line"] = 69,
                    ["col"] = 21,
                  },
                },
                ["type"] = "Identifier",
              },
              ["value"] = {
                ["fields"] = {
                  [1] = {
                    ["key"] = {
                      ["name"] = "b",
                      ["attributes"] = {
                      },
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 69,
                          ["col"] = 26,
                        },
                        ["start"] = {
                          ["line"] = 69,
                          ["col"] = 26,
                        },
                      },
                      ["type"] = "Identifier",
                    },
                    ["value"] = {
                      ["fields"] = {
                        [1] = {
                          ["key"] = {
                            ["name"] = "c",
                            ["attributes"] = {
                            },
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 69,
                                ["col"] = 31,
                              },
                              ["start"] = {
                                ["line"] = 69,
                                ["col"] = 31,
                              },
                            },
                            ["type"] = "Identifier",
                          },
                          ["value"] = {
                            ["fields"] = {
                              [1] = {
                                ["key"] = {
                                  ["name"] = "d",
                                  ["attributes"] = {
                                  },
                                  ["loc"] = {
                                    ["end"] = {
                                      ["line"] = 69,
                                      ["col"] = 36,
                                    },
                                    ["start"] = {
                                      ["line"] = 69,
                                      ["col"] = 36,
                                    },
                                  },
                                  ["type"] = "Identifier",
                                },
                                ["value"] = {
                                  ["fields"] = {
                                    [1] = {
                                      ["key"] = {
                                        ["name"] = "e",
                                        ["attributes"] = {
                                        },
                                        ["loc"] = {
                                          ["end"] = {
                                            ["line"] = 69,
                                            ["col"] = 41,
                                          },
                                          ["start"] = {
                                            ["line"] = 69,
                                            ["col"] = 41,
                                          },
                                        },
                                        ["type"] = "Identifier",
                                      },
                                      ["value"] = {
                                        ["fields"] = {
                                          [1] = {
                                            ["key"] = {
                                              ["name"] = "f",
                                              ["attributes"] = {
                                              },
                                              ["loc"] = {
                                                ["end"] = {
                                                  ["line"] = 69,
                                                  ["col"] = 46,
                                                },
                                                ["start"] = {
                                                  ["line"] = 69,
                                                  ["col"] = 46,
                                                },
                                              },
                                              ["type"] = "Identifier",
                                            },
                                            ["value"] = {
                                              ["fields"] = {
                                                [1] = {
                                                  ["key"] = {
                                                    ["name"] = "g",
                                                    ["attributes"] = {
                                                    },
                                                    ["loc"] = {
                                                      ["end"] = {
                                                        ["line"] = 69,
                                                        ["col"] = 51,
                                                      },
                                                      ["start"] = {
                                                        ["line"] = 69,
                                                        ["col"] = 51,
                                                      },
                                                    },
                                                    ["type"] = "Identifier",
                                                  },
                                                  ["value"] = {
                                                    ["raw"] = "10",
                                                    ["is_lua53_feature"] = false,
                                                    ["value"] = 10,
                                                    ["type"] = "NumericLiteral",
                                                  },
                                                  ["type"] = "TableKeyString",
                                                },
                                              },
                                              ["metamethods"] = {
                                              },
                                              ["has_metamethods"] = false,
                                              ["type"] = "TableConstructorExpression",
                                            },
                                            ["type"] = "TableKeyString",
                                          },
                                        },
                                        ["metamethods"] = {
                                        },
                                        ["has_metamethods"] = false,
                                        ["type"] = "TableConstructorExpression",
                                      },
                                      ["type"] = "TableKeyString",
                                    },
                                  },
                                  ["metamethods"] = {
                                  },
                                  ["has_metamethods"] = false,
                                  ["type"] = "TableConstructorExpression",
                                },
                                ["type"] = "TableKeyString",
                              },
                            },
                            ["metamethods"] = {
                            },
                            ["has_metamethods"] = false,
                            ["type"] = "TableConstructorExpression",
                          },
                          ["type"] = "TableKeyString",
                        },
                      },
                      ["metamethods"] = {
                      },
                      ["has_metamethods"] = false,
                      ["type"] = "TableConstructorExpression",
                    },
                    ["type"] = "TableKeyString",
                  },
                },
                ["metamethods"] = {
                },
                ["has_metamethods"] = false,
                ["type"] = "TableConstructorExpression",
              },
              ["type"] = "TableKeyString",
            },
          },
          ["metamethods"] = {
          },
          ["has_metamethods"] = false,
          ["type"] = "TableConstructorExpression",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "deep_table",
          ["attributes"] = {
          },
          ["loc"] = {
            ["end"] = {
              ["line"] = 69,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 69,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
        },
      },
      ["loc"] = {
        ["end"] = {
          ["line"] = 70,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 69,
          ["col"] = 1,
        },
      },
      ["type"] = "LocalStatement",
    },
    [7] = {
      ["init"] = {
        [1] = {
          ["identifier"] = {
            ["name"] = "g",
            ["attributes"] = {
            },
            ["loc"] = {
              ["end"] = {
                ["line"] = 70,
                ["col"] = 43,
              },
              ["start"] = {
                ["line"] = 70,
                ["col"] = 43,
              },
            },
            ["type"] = "Identifier",
          },
          ["base"] = {
            ["identifier"] = {
              ["name"] = "f",
              ["attributes"] = {
              },
              ["loc"] = {
                ["end"] = {
                  ["line"] = 70,
                  ["col"] = 41,
                },
                ["start"] = {
                  ["line"] = 70,
                  ["col"] = 41,
                },
              },
              ["type"] = "Identifier",
            },
            ["base"] = {
              ["identifier"] = {
                ["name"] = "e",
                ["attributes"] = {
                },
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 70,
                    ["col"] = 39,
                  },
                  ["start"] = {
                    ["line"] = 70,
                    ["col"] = 39,
                  },
                },
                ["type"] = "Identifier",
              },
              ["base"] = {
                ["identifier"] = {
                  ["name"] = "d",
                  ["attributes"] = {
                  },
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 70,
                      ["col"] = 37,
                    },
                    ["start"] = {
                      ["line"] = 70,
                      ["col"] = 37,
                    },
                  },
                  ["type"] = "Identifier",
                },
                ["base"] = {
                  ["identifier"] = {
                    ["name"] = "c",
                    ["attributes"] = {
                    },
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 70,
                        ["col"] = 35,
                      },
                      ["start"] = {
                        ["line"] = 70,
                        ["col"] = 35,
                      },
                    },
                    ["type"] = "Identifier",
                  },
                  ["base"] = {
                    ["identifier"] = {
                      ["name"] = "b",
                      ["attributes"] = {
                      },
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 70,
                          ["col"] = 33,
                        },
                        ["start"] = {
                          ["line"] = 70,
                          ["col"] = 33,
                        },
                      },
                      ["type"] = "Identifier",
                    },
                    ["base"] = {
                      ["identifier"] = {
                        ["name"] = "a",
                        ["attributes"] = {
                        },
                        ["loc"] = {
                          ["end"] = {
                            ["line"] = 70,
                            ["col"] = 31,
                          },
                          ["start"] = {
                            ["line"] = 70,
                            ["col"] = 31,
                          },
                        },
                        ["type"] = "Identifier",
                      },
                      ["base"] = {
                        ["name"] = "deep_table",
                        ["attributes"] = {
                        },
                        ["loc"] = {
                          ["end"] = {
                            ["line"] = 70,
                            ["col"] = 20,
                          },
                          ["start"] = {
                            ["line"] = 70,
                            ["col"] = 20,
                          },
                        },
                        ["type"] = "Identifier",
                      },
                      ["indexer"] = ".",
                      ["type"] = "MemberExpression",
                    },
                    ["indexer"] = ".",
                    ["type"] = "MemberExpression",
                  },
                  ["indexer"] = ".",
                  ["type"] = "MemberExpression",
                },
                ["indexer"] = ".",
                ["type"] = "MemberExpression",
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
            },
            ["indexer"] = ".",
            ["type"] = "MemberExpression",
          },
          ["indexer"] = ".",
          ["type"] = "MemberExpression",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "deep_value",
          ["attributes"] = {
          },
          ["loc"] = {
            ["end"] = {
              ["line"] = 70,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 70,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
        },
      },
      ["loc"] = {
        ["end"] = {
          ["line"] = 72,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 70,
          ["col"] = 1,
        },
      },
      ["type"] = "LocalStatement",
    },
    [8] = {
      ["init"] = {
        [1] = {
          ["operator"] = "*",
          ["metamethod"] = "__mul",
          ["substituted_operator"] = "*",
          ["right"] = {
            ["lua53_feature"] = true,
            ["metamethod"] = "__band",
            ["swap_operands"] = false,
            ["left"] = {
              ["raw"] = "3",
              ["is_lua53_feature"] = false,
              ["value"] = 3,
              ["type"] = "NumericLiteral",
            },
            ["substituted_operator"] = "&",
            ["operator"] = "&",
            ["right"] = {
              ["raw"] = "7",
              ["is_lua53_feature"] = false,
              ["value"] = 7,
              ["type"] = "NumericLiteral",
            },
            ["expression_depth"] = 4,
            ["type"] = "BinaryExpression",
          },
          ["swap_operands"] = false,
          ["left"] = {
            ["metamethod"] = "__unm",
            ["loc"] = {
              ["end"] = {
                ["line"] = 72,
                ["col"] = 19,
              },
              ["start"] = {
                ["line"] = 72,
                ["col"] = 19,
              },
            },
            ["is_lua53_feature"] = false,
            ["operator"] = "-",
            ["argument"] = {
              ["operator"] = "and",
              ["substituted_operator"] = "and",
              ["right"] = {
                ["metamethod"] = "__unm",
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 72,
                    ["col"] = 39,
                  },
                  ["start"] = {
                    ["line"] = 72,
                    ["col"] = 39,
                  },
                },
                ["is_lua53_feature"] = false,
                ["operator"] = "-",
                ["argument"] = {
                  ["metamethod"] = "__unm",
                  ["loc"] = {
                    ["end"] = {
                      ["line"] = 72,
                      ["col"] = 41,
                    },
                    ["start"] = {
                      ["line"] = 72,
                      ["col"] = 41,
                    },
                  },
                  ["is_lua53_feature"] = false,
                  ["operator"] = "-",
                  ["argument"] = {
                    ["raw"] = "5",
                    ["is_lua53_feature"] = false,
                    ["value"] = 5,
                    ["type"] = "NumericLiteral",
                  },
                  ["expression_depth"] = 9,
                  ["type"] = "UnaryExpression",
                },
                ["expression_depth"] = 6,
                ["type"] = "UnaryExpression",
              },
              ["swap_operands"] = false,
              ["left"] = {
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 72,
                    ["col"] = 22,
                  },
                  ["start"] = {
                    ["line"] = 72,
                    ["col"] = 22,
                  },
                },
                ["is_lua53_feature"] = false,
                ["operator"] = "not",
                ["argument"] = {
                  ["operator"] = ">",
                  ["substituted_operator"] = ">",
                  ["right"] = {
                    ["raw"] = "3",
                    ["is_lua53_feature"] = false,
                    ["value"] = 3,
                    ["type"] = "NumericLiteral",
                  },
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["raw"] = "5",
                    ["is_lua53_feature"] = false,
                    ["value"] = 5,
                    ["type"] = "NumericLiteral",
                  },
                  ["expression_depth"] = 9,
                  ["type"] = "BinaryExpression",
                },
                ["expression_depth"] = 7,
                ["type"] = "UnaryExpression",
              },
              ["expression_depth"] = 4,
              ["type"] = "BinaryExpression",
            },
            ["expression_depth"] = 2,
            ["type"] = "UnaryExpression",
          },
          ["expression_depth"] = 1,
          ["type"] = "BinaryExpression",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "mixed_ops",
          ["attributes"] = {
          },
          ["loc"] = {
            ["end"] = {
              ["line"] = 72,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 72,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
        },
      },
      ["loc"] = {
        ["end"] = {
          ["line"] = 74,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 72,
          ["col"] = 1,
        },
      },
      ["type"] = "LocalStatement",
    },
    [9] = {
      ["init"] = {
        [1] = {
          ["base"] = {
            ["body"] = {
              [1] = {
                ["init"] = {
                  [1] = {
                    ["name"] = "start",
                    ["attributes"] = {
                    },
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 75,
                        ["col"] = 19,
                      },
                      ["start"] = {
                        ["line"] = 75,
                        ["col"] = 19,
                      },
                    },
                    ["type"] = "Identifier",
                  },
                },
                ["variables"] = {
                  [1] = {
                    ["name"] = "count",
                    ["attributes"] = {
                    },
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 75,
                        ["col"] = 11,
                      },
                      ["start"] = {
                        ["line"] = 75,
                        ["col"] = 11,
                      },
                    },
                    ["type"] = "Identifier",
                  },
                },
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 76,
                    ["col"] = 5,
                  },
                  ["start"] = {
                    ["line"] = 75,
                    ["col"] = 5,
                  },
                },
                ["type"] = "LocalStatement",
              },
              [2] = {
                ["arguments"] = {
                  [1] = {
                    ["body"] = {
                      [1] = {
                        ["metamethod_ops"] = {
                        },
                        ["variables"] = {
                          [1] = {
                            ["name"] = "count",
                            ["attributes"] = {
                            },
                            ["loc"] = {
                              ["end"] = {
                                ["line"] = 77,
                                ["col"] = 9,
                              },
                              ["start"] = {
                                ["line"] = 77,
                                ["col"] = 9,
                              },
                            },
                            ["type"] = "Identifier",
                          },
                        },
                        ["has_metamethods"] = false,
                        ["init"] = {
                          [1] = {
                            ["operator"] = "+",
                            ["metamethod"] = "__add",
                            ["substituted_operator"] = "+",
                            ["right"] = {
                              ["raw"] = "1",
                              ["is_lua53_feature"] = false,
                              ["value"] = 1,
                              ["type"] = "NumericLiteral",
                            },
                            ["swap_operands"] = false,
                            ["left"] = {
                              ["name"] = "count",
                              ["attributes"] = {
                              },
                              ["loc"] = {
                                ["end"] = {
                                  ["line"] = 77,
                                  ["col"] = 17,
                                },
                                ["start"] = {
                                  ["line"] = 77,
                                  ["col"] = 17,
                                },
                              },
                              ["type"] = "Identifier",
                            },
                            ["expression_depth"] = 1,
                            ["type"] = "BinaryExpression",
                          },
                        },
                        ["type"] = "AssignmentStatement",
                      },
                      [2] = {
                        ["arguments"] = {
                          [1] = {
                            ["body"] = {
                              [1] = {
                                ["arguments"] = {
                                  [1] = {
                                    ["name"] = "count",
                                    ["attributes"] = {
                                    },
                                    ["loc"] = {
                                      ["end"] = {
                                        ["line"] = 79,
                                        ["col"] = 20,
                                      },
                                      ["start"] = {
                                        ["line"] = 79,
                                        ["col"] = 20,
                                      },
                                    },
                                    ["type"] = "Identifier",
                                  },
                                },
                                ["type"] = "ReturnStatement",
                              },
                            },
                            ["isLocal"] = false,
                            ["parameters"] = {
                            },
                            ["type"] = "FunctionExpression",
                          },
                        },
                        ["type"] = "ReturnStatement",
                      },
                    },
                    ["isLocal"] = false,
                    ["parameters"] = {
                    },
                    ["type"] = "FunctionExpression",
                  },
                },
                ["type"] = "ReturnStatement",
              },
            },
            ["isLocal"] = false,
            ["parameters"] = {
              [1] = {
                ["name"] = "start",
                ["attributes"] = {
                },
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 74,
                    ["col"] = 27,
                  },
                  ["start"] = {
                    ["line"] = 74,
                    ["col"] = 27,
                  },
                },
                ["type"] = "Identifier",
              },
            },
            ["type"] = "FunctionExpression",
          },
          ["has_metamethod"] = true,
          ["is_method_call"] = false,
          ["arguments"] = {
            [1] = {
              ["raw"] = "10",
              ["is_lua53_feature"] = false,
              ["value"] = 10,
              ["type"] = "NumericLiteral",
            },
          },
          ["potential_metamethod"] = "__call",
          ["expression_depth"] = 2,
          ["type"] = "CallExpression",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "counter",
          ["attributes"] = {
          },
          ["loc"] = {
            ["end"] = {
              ["line"] = 74,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 74,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
        },
      },
      ["loc"] = {
        ["end"] = {
          ["line"] = 84,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 74,
          ["col"] = 1,
        },
      },
      ["type"] = "LocalStatement",
    },
    [10] = {
      ["init"] = {
        [1] = {
          ["base"] = {
            ["identifier"] = {
              ["name"] = "create",
              ["attributes"] = {
              },
              ["loc"] = {
                ["end"] = {
                  ["line"] = 84,
                  ["col"] = 22,
                },
                ["start"] = {
                  ["line"] = 84,
                  ["col"] = 22,
                },
              },
              ["type"] = "Identifier",
            },
            ["base"] = {
              ["name"] = "coroutine",
              ["attributes"] = {
              },
              ["loc"] = {
                ["end"] = {
                  ["line"] = 84,
                  ["col"] = 12,
                },
                ["start"] = {
                  ["line"] = 84,
                  ["col"] = 12,
                },
              },
              ["type"] = "Identifier",
            },
            ["indexer"] = ".",
            ["type"] = "MemberExpression",
          },
          ["has_metamethod"] = true,
          ["is_method_call"] = true,
          ["arguments"] = {
            [1] = {
              ["body"] = {
                [1] = {
                  ["arguments"] = {
                    [1] = {
                      ["base"] = {
                        ["body"] = {
                          [1] = {
                            ["arguments"] = {
                              [1] = {
                                ["raw"] = "\"result from coroutine\"",
                                ["value"] = "result from coroutine",
                                ["type"] = "StringLiteral",
                              },
                            },
                            ["type"] = "ReturnStatement",
                          },
                        },
                        ["isLocal"] = false,
                        ["parameters"] = {
                        },
                        ["type"] = "FunctionExpression",
                      },
                      ["has_metamethod"] = true,
                      ["is_method_call"] = false,
                      ["arguments"] = {
                      },
                      ["potential_metamethod"] = "__call",
                      ["expression_depth"] = 2,
                      ["type"] = "CallExpression",
                    },
                  },
                  ["type"] = "ReturnStatement",
                },
              },
              ["isLocal"] = false,
              ["parameters"] = {
              },
              ["type"] = "FunctionExpression",
            },
          },
          ["potential_metamethod"] = "__call",
          ["expression_depth"] = 2,
          ["type"] = "CallExpression",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "co",
          ["attributes"] = {
          },
          ["loc"] = {
            ["end"] = {
              ["line"] = 84,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 84,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
        },
      },
      ["loc"] = {
        ["end"] = {
          ["line"] = 90,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 84,
          ["col"] = 1,
        },
      },
      ["type"] = "LocalStatement",
    },
    [11] = {
      ["init"] = {
        [1] = {
          ["operator"] = "and",
          ["substituted_operator"] = "and",
          ["right"] = {
            ["operator"] = "<",
            ["metamethod"] = "__lt",
            ["substituted_operator"] = "<",
            ["right"] = {
              ["raw"] = "5",
              ["is_lua53_feature"] = false,
              ["value"] = 5,
              ["type"] = "NumericLiteral",
            },
            ["swap_operands"] = false,
            ["left"] = {
              ["raw"] = "4",
              ["is_lua53_feature"] = false,
              ["value"] = 4,
              ["type"] = "NumericLiteral",
            },
            ["expression_depth"] = 2,
            ["type"] = "BinaryExpression",
          },
          ["swap_operands"] = false,
          ["left"] = {
            ["operator"] = "and",
            ["substituted_operator"] = "and",
            ["right"] = {
              ["operator"] = "<",
              ["metamethod"] = "__lt",
              ["substituted_operator"] = "<",
              ["right"] = {
                ["raw"] = "4",
                ["is_lua53_feature"] = false,
                ["value"] = 4,
                ["type"] = "NumericLiteral",
              },
              ["swap_operands"] = false,
              ["left"] = {
                ["raw"] = "3",
                ["is_lua53_feature"] = false,
                ["value"] = 3,
                ["type"] = "NumericLiteral",
              },
              ["expression_depth"] = 2,
              ["type"] = "BinaryExpression",
            },
            ["swap_operands"] = false,
            ["left"] = {
              ["operator"] = "and",
              ["substituted_operator"] = "and",
              ["right"] = {
                ["operator"] = "<",
                ["metamethod"] = "__lt",
                ["substituted_operator"] = "<",
                ["right"] = {
                  ["raw"] = "3",
                  ["is_lua53_feature"] = false,
                  ["value"] = 3,
                  ["type"] = "NumericLiteral",
                },
                ["swap_operands"] = false,
                ["left"] = {
                  ["raw"] = "2",
                  ["is_lua53_feature"] = false,
                  ["value"] = 2,
                  ["type"] = "NumericLiteral",
                },
                ["expression_depth"] = 2,
                ["type"] = "BinaryExpression",
              },
              ["swap_operands"] = false,
              ["left"] = {
                ["operator"] = "<",
                ["metamethod"] = "__lt",
                ["substituted_operator"] = "<",
                ["right"] = {
                  ["raw"] = "2",
                  ["is_lua53_feature"] = false,
                  ["value"] = 2,
                  ["type"] = "NumericLiteral",
                },
                ["swap_operands"] = false,
                ["left"] = {
                  ["raw"] = "1",
                  ["is_lua53_feature"] = false,
                  ["value"] = 1,
                  ["type"] = "NumericLiteral",
                },
                ["expression_depth"] = 1,
                ["type"] = "BinaryExpression",
              },
              ["expression_depth"] = 1,
              ["type"] = "BinaryExpression",
            },
            ["expression_depth"] = 1,
            ["type"] = "BinaryExpression",
          },
          ["expression_depth"] = 1,
          ["type"] = "BinaryExpression",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "chained",
          ["attributes"] = {
          },
          ["loc"] = {
            ["end"] = {
              ["line"] = 90,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 90,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
        },
      },
      ["loc"] = {
        ["end"] = {
          ["line"] = 92,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 90,
          ["col"] = 1,
        },
      },
      ["type"] = "LocalStatement",
    },
    [12] = {
      ["init"] = {
        [1] = {
          ["operator"] = "and",
          ["substituted_operator"] = "and",
          ["right"] = {
            ["operator"] = "or",
            ["substituted_operator"] = "or",
            ["right"] = {
              ["operator"] = "and",
              ["substituted_operator"] = "and",
              ["right"] = {
                ["operator"] = "or",
                ["substituted_operator"] = "or",
                ["right"] = {
                  ["operator"] = ">",
                  ["substituted_operator"] = ">",
                  ["right"] = {
                    ["raw"] = "1",
                    ["is_lua53_feature"] = false,
                    ["value"] = 1,
                    ["type"] = "NumericLiteral",
                  },
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["raw"] = "3",
                    ["is_lua53_feature"] = false,
                    ["value"] = 3,
                    ["type"] = "NumericLiteral",
                  },
                  ["expression_depth"] = 13,
                  ["type"] = "BinaryExpression",
                },
                ["swap_operands"] = false,
                ["left"] = {
                  ["operator"] = "<",
                  ["metamethod"] = "__lt",
                  ["substituted_operator"] = "<",
                  ["right"] = {
                    ["raw"] = "10",
                    ["is_lua53_feature"] = false,
                    ["value"] = 10,
                    ["type"] = "NumericLiteral",
                  },
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["raw"] = "6",
                    ["is_lua53_feature"] = false,
                    ["value"] = 6,
                    ["type"] = "NumericLiteral",
                  },
                  ["expression_depth"] = 12,
                  ["type"] = "BinaryExpression",
                },
                ["expression_depth"] = 12,
                ["type"] = "BinaryExpression",
              },
              ["swap_operands"] = false,
              ["left"] = {
                ["operator"] = ">",
                ["substituted_operator"] = ">",
                ["right"] = {
                  ["raw"] = "1",
                  ["is_lua53_feature"] = false,
                  ["value"] = 1,
                  ["type"] = "NumericLiteral",
                },
                ["swap_operands"] = false,
                ["left"] = {
                  ["raw"] = "2",
                  ["is_lua53_feature"] = false,
                  ["value"] = 2,
                  ["type"] = "NumericLiteral",
                },
                ["expression_depth"] = 9,
                ["type"] = "BinaryExpression",
              },
              ["expression_depth"] = 9,
              ["type"] = "BinaryExpression",
            },
            ["swap_operands"] = false,
            ["left"] = {
              ["operator"] = "<",
              ["metamethod"] = "__lt",
              ["substituted_operator"] = "<",
              ["right"] = {
                ["raw"] = "7",
                ["is_lua53_feature"] = false,
                ["value"] = 7,
                ["type"] = "NumericLiteral",
              },
              ["swap_operands"] = false,
              ["left"] = {
                ["raw"] = "4",
                ["is_lua53_feature"] = false,
                ["value"] = 4,
                ["type"] = "NumericLiteral",
              },
              ["expression_depth"] = 6,
              ["type"] = "BinaryExpression",
            },
            ["expression_depth"] = 6,
            ["type"] = "BinaryExpression",
          },
          ["swap_operands"] = false,
          ["left"] = {
            ["operator"] = ">",
            ["substituted_operator"] = ">",
            ["right"] = {
              ["raw"] = "3",
              ["is_lua53_feature"] = false,
              ["value"] = 3,
              ["type"] = "NumericLiteral",
            },
            ["swap_operands"] = false,
            ["left"] = {
              ["raw"] = "5",
              ["is_lua53_feature"] = false,
              ["value"] = 5,
              ["type"] = "NumericLiteral",
            },
            ["expression_depth"] = 3,
            ["type"] = "BinaryExpression",
          },
          ["expression_depth"] = 3,
          ["type"] = "BinaryExpression",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "logic_nest",
          ["attributes"] = {
          },
          ["loc"] = {
            ["end"] = {
              ["line"] = 92,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 92,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
        },
      },
      ["loc"] = {
        ["end"] = {
          ["line"] = 94,
          ["col"] = 1,
        },
        ["start"] = {
          ["line"] = 92,
          ["col"] = 1,
        },
      },
      ["type"] = "LocalStatement",
    },
    [13] = {
      ["init"] = {
        [1] = {
          ["operator"] = "+",
          ["metamethod"] = "__add",
          ["substituted_operator"] = "+",
          ["right"] = {
            ["operator"] = "*",
            ["metamethod"] = "__mul",
            ["substituted_operator"] = "*",
            ["right"] = {
              ["identifier"] = {
                ["name"] = "value",
                ["attributes"] = {
                },
                ["loc"] = {
                  ["end"] = {
                    ["line"] = 97,
                    ["col"] = 32,
                  },
                  ["start"] = {
                    ["line"] = 97,
                    ["col"] = 32,
                  },
                },
                ["type"] = "Identifier",
              },
              ["base"] = {
                ["fields"] = {
                  [1] = {
                    ["key"] = {
                      ["name"] = "value",
                      ["attributes"] = {
                      },
                      ["loc"] = {
                        ["end"] = {
                          ["line"] = 97,
                          ["col"] = 19,
                        },
                        ["start"] = {
                          ["line"] = 97,
                          ["col"] = 19,
                        },
                      },
                      ["type"] = "Identifier",
                    },
                    ["value"] = {
                      ["raw"] = "10",
                      ["is_lua53_feature"] = false,
                      ["value"] = 10,
                      ["type"] = "NumericLiteral",
                    },
                    ["type"] = "TableKeyString",
                  },
                },
                ["metamethods"] = {
                },
                ["has_metamethods"] = false,
                ["type"] = "TableConstructorExpression",
              },
              ["indexer"] = ".",
              ["type"] = "MemberExpression",
            },
            ["swap_operands"] = false,
            ["left"] = {
              ["operator"] = "or",
              ["substituted_operator"] = "or",
              ["right"] = {
                ["raw"] = "5",
                ["is_lua53_feature"] = false,
                ["value"] = 5,
                ["type"] = "NumericLiteral",
              },
              ["swap_operands"] = false,
              ["left"] = {
                ["operator"] = "and",
                ["substituted_operator"] = "and",
                ["right"] = {
                  ["raw"] = "10",
                  ["is_lua53_feature"] = false,
                  ["value"] = 10,
                  ["type"] = "NumericLiteral",
                },
                ["swap_operands"] = false,
                ["left"] = {
                  ["operator"] = ">=",
                  ["substituted_operator"] = ">=",
                  ["right"] = {
                    ["raw"] = "4",
                    ["is_lua53_feature"] = false,
                    ["value"] = 4,
                    ["type"] = "NumericLiteral",
                  },
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["metamethod"] = "__len",
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 96,
                        ["col"] = 18,
                      },
                      ["start"] = {
                        ["line"] = 96,
                        ["col"] = 18,
                      },
                    },
                    ["is_lua53_feature"] = false,
                    ["operator"] = "#",
                    ["argument"] = {
                      ["raw"] = "\"test\"",
                      ["value"] = "test",
                      ["type"] = "StringLiteral",
                    },
                    ["expression_depth"] = 5,
                    ["type"] = "UnaryExpression",
                  },
                  ["expression_depth"] = 4,
                  ["type"] = "BinaryExpression",
                },
                ["expression_depth"] = 4,
                ["type"] = "BinaryExpression",
              },
              ["expression_depth"] = 4,
              ["type"] = "BinaryExpression",
            },
            ["expression_depth"] = 2,
            ["type"] = "BinaryExpression",
          },
          ["swap_operands"] = false,
          ["left"] = {
            ["operator"] = "+",
            ["metamethod"] = "__add",
            ["substituted_operator"] = "+",
            ["right"] = {
              ["base"] = {
                ["body"] = {
                  [1] = {
                    ["arguments"] = {
                      [1] = {
                        ["operator"] = "*",
                        ["metamethod"] = "__mul",
                        ["substituted_operator"] = "*",
                        ["right"] = {
                          ["raw"] = "2",
                          ["is_lua53_feature"] = false,
                          ["value"] = 2,
                          ["type"] = "NumericLiteral",
                        },
                        ["swap_operands"] = false,
                        ["left"] = {
                          ["name"] = "x",
                          ["attributes"] = {
                          },
                          ["loc"] = {
                            ["end"] = {
                              ["line"] = 95,
                              ["col"] = 37,
                            },
                            ["start"] = {
                              ["line"] = 95,
                              ["col"] = 37,
                            },
                          },
                          ["type"] = "Identifier",
                        },
                        ["expression_depth"] = 1,
                        ["type"] = "BinaryExpression",
                      },
                    },
                    ["type"] = "ReturnStatement",
                  },
                },
                ["isLocal"] = false,
                ["parameters"] = {
                  [1] = {
                    ["name"] = "x",
                    ["attributes"] = {
                    },
                    ["loc"] = {
                      ["end"] = {
                        ["line"] = 95,
                        ["col"] = 27,
                      },
                      ["start"] = {
                        ["line"] = 95,
                        ["col"] = 27,
                      },
                    },
                    ["type"] = "Identifier",
                  },
                },
                ["type"] = "FunctionExpression",
              },
              ["has_metamethod"] = true,
              ["is_method_call"] = false,
              ["arguments"] = {
                [1] = {
                  ["raw"] = "5",
                  ["is_lua53_feature"] = false,
                  ["value"] = 5,
                  ["type"] = "NumericLiteral",
                },
              },
              ["potential_metamethod"] = "__call",
              ["expression_depth"] = 3,
              ["type"] = "CallExpression",
            },
            ["swap_operands"] = false,
            ["left"] = {
              ["operator"] = "-",
              ["metamethod"] = "__sub",
              ["substituted_operator"] = "-",
              ["right"] = {
                ["operator"] = "/",
                ["metamethod"] = "__div",
                ["substituted_operator"] = "/",
                ["right"] = {
                  ["raw"] = "2",
                  ["is_lua53_feature"] = false,
                  ["value"] = 2,
                  ["type"] = "NumericLiteral",
                },
                ["swap_operands"] = false,
                ["left"] = {
                  ["raw"] = "10",
                  ["is_lua53_feature"] = false,
                  ["value"] = 10,
                  ["type"] = "NumericLiteral",
                },
                ["expression_depth"] = 6,
                ["type"] = "BinaryExpression",
              },
              ["swap_operands"] = false,
              ["left"] = {
                ["operator"] = "*",
                ["metamethod"] = "__mul",
                ["substituted_operator"] = "*",
                ["right"] = {
                  ["raw"] = "2",
                  ["is_lua53_feature"] = false,
                  ["value"] = 2,
                  ["type"] = "NumericLiteral",
                },
                ["swap_operands"] = false,
                ["left"] = {
                  ["operator"] = "+",
                  ["metamethod"] = "__add",
                  ["substituted_operator"] = "+",
                  ["right"] = {
                    ["raw"] = "3",
                    ["is_lua53_feature"] = false,
                    ["value"] = 3,
                    ["type"] = "NumericLiteral",
                  },
                  ["swap_operands"] = false,
                  ["left"] = {
                    ["raw"] = "5",
                    ["is_lua53_feature"] = false,
                    ["value"] = 5,
                    ["type"] = "NumericLiteral",
                  },
                  ["expression_depth"] = 5,
                  ["type"] = "BinaryExpression",
                },
                ["expression_depth"] = 3,
                ["type"] = "BinaryExpression",
              },
              ["expression_depth"] = 3,
              ["type"] = "BinaryExpression",
            },
            ["expression_depth"] = 1,
            ["type"] = "BinaryExpression",
          },
          ["expression_depth"] = 1,
          ["type"] = "BinaryExpression",
        },
      },
      ["variables"] = {
        [1] = {
          ["name"] = "combined",
          ["attributes"] = {
          },
          ["loc"] = {
            ["end"] = {
              ["line"] = 94,
              ["col"] = 7,
            },
            ["start"] = {
              ["line"] = 94,
              ["col"] = 7,
            },
          },
          ["type"] = "Identifier",
        },
      },
      ["loc"] = {
        ["end"] = {
          ["line"] = 97,
          ["col"] = 38,
        },
        ["start"] = {
          ["line"] = 94,
          ["col"] = 1,
        },
      },
      ["type"] = "LocalStatement",
    },
  },
  ["comments"] = {
  },
  ["type"] = "Chunk",
}