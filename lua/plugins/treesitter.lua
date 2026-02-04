return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "bash",
        "markdown",
        "markdown_inline",
        -- 必要に応じて以下の言語を追加してください
        -- "python",
        "javascript",
        "typescript",
        "go",
        "rust",
        -- "java",
        -- "c",
        -- "cpp",
      },
    },
  },
}
