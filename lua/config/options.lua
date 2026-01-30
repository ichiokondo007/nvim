-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 行番号を相対表示
vim.opt.relativenumber = true

-- クリップボード連携（システムクリップボードを使用）
vim.opt.clipboard = "unnamedplus"

-- 自動フォーマットの有効化
vim.g.autoformat = true

-- エンコーディング設定（日本語対応）
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.fileencodings = "utf-8,iso-2022-jp,euc-jp,sjis"
