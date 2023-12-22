return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["python"] = { "black" },
      ["haskell"] = { "fourmolu" },
      ["c"] = { "clang-format" },
      ["clojure"] = { "zprint" },
    },
  },
}
