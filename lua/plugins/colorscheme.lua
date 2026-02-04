return {
  -- doom-one カラースキームを追加
  { "NTBBloodbath/doom-one.nvim" },

  -- LazyVim のカラースキームを doom-one に固定
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "doom-one",
    },
  },
}
