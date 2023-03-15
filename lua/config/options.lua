-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here


-- Backspace Indentation
vim.opt.backspace = { "indent", "eol", "start" }

-- vimtex options


vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = {
  callback = 1,
  continuous = 1,
  executable = "latexmk",
  options = {
    "-shell-escape",
    "-verbose",
    "-file-line-error",
    "-synctex=1",
    "-interaction=nonstopmode",
  },
}


-- Disable conceal
vim.g.vimtex_syntax_conceal = {
  accents = 0,
  cites = 0,
  fancy = 0,
  greek = 0,
  math_bounds = 0,
  math_delimiters = 0,
  math_fracs = 0,
  math_super_sub = 0,
  math_symbols = 0,
  sections = 0,
  styles = 0,
}

-- Latex warnings to ignore
vim.g.vimtex_quickfix_ignore_filters = {
  "Command terminated with space",
  "LaTeX Font Warning: Font shape",
  "Package caption Warning: The option",
  [[Underfull \\hbox (badness [0-9]*) in]],
  "Package enumitem Warning: Negative labelwidth",
  [[Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in]],
  [[Package caption Warning: Unused \\captionsetup]],
  "Package typearea Warning: Bad type area settings!",
  [[Package fancyhdr Warning: \\headheight is too small]],
  [[Underfull \\hbox (badness [0-9]*) in paragraph at lines]],
  "Package hyperref Warning: Token not allowed in a PDF string",
  [[Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in paragraph at lines]],
}
