local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "markdown",
    "markdown_inline",
    "prisma",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettier",
    "eslint-lsp",
    "eslint_d",
    "node-debug2-adapter",
  },
}

M.nvimCmp = function(_, opts)
  local format_kinds = opts.formatting.format
  opts.formatting.format = function(entry, item)
    format_kinds(entry, item) -- add icons
    return require("tailwindcss-colorizer-cmp").formatter(entry, item)
  end
end

return M
