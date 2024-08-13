-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.media.presence-nvim" },
  { import = "astrocommunity.comment.mini-comment" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  { import = "astrocommunity.pack.rust" },
}
