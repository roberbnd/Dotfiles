" https://www.reddit.com/r/neovim/comments/yd6ncy/grapplenvim_a_simple_plugin_for_keeping_important/
Plug 'stevearc/resession.nvim'
Plug 'cbochs/grapple.nvim'
--require("grapple").setup({
--    ---@type "debug" | "info" | "warn" | "error"
--    log_level = "warn",

--    ---The scope used when creating, selecting, and deleting tags
--    ---@type Grapple.Scope
--    scope = "directory",

--    ---The save location for tags
--    save_path = vim.fn.stdpath("data") .. "/" .. "grapple.json",

--    ---Window options used for the popup menu
--    popup_options = {
--        relative = "editor",
--        width = 120,
--        height = 12,
--        style = "minimal",
--        focusable = false,
--        border = "single",
--    },

--    integrations = {
--        ---Support for saving tag state using resession.nvim
--        resession = true,
--    },
--})
Plug 'rgroli/other.nvim'

require("other-nvim").setup({
  mappings = {
    {
      pattern = "/packages/core/src/payment/strategies/humm/humm-payment-strategy.ts",
      target = "/packages/core/src/payment/strategies/humm/humm-payment-strategy.spec.ts",
      context = "test"
    }
  }
})

Plug 'ahmedkhalf/project.nvim'
require("project_nvim").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
  manual_mode = true,
  scope_chdir = 'tab'
}
