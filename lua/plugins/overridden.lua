return {
  -- customize cmp mappings
  -- {
  --   "hrsh7th/nvim-cmp",
  --   -- override the options table that is used
  --   -- in the `require("cmp").setup()` call
  --   opts = function(_, opts)
  --     -- opts parameter is the default options table
  --     -- the function is lazy loaded so cmp is able to be required
  --     local cmp = require "cmp"
  --     -- modify the mapping part of the table
  --     opts.mapping["<C-x>"] = cmp.mapping.select_next_item()
  --   end,
  -- },
  -- customize neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      -- list like portions of a table cannot be merged naturally and require the user to merge it manually
      -- check to make sure the key exists
      -- if not opts.ensure_installed then
      --   opts.ensure_installed = {}
      -- end
      -- vim.list_extend(opts.ensure_installed, {
      --   "lua",
      --   "vim",
      --   -- add more arguments for adding more treesitter parsers
      -- })
      opts.window.width = 50
      opts.filesystem.filtered_items = { visible = true }

      return opts
    end,
  },
}
