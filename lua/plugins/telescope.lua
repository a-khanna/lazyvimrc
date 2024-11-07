-- probably don't need the below we can search with <leader>sg
if true then
  return {}
end

return {
  "nvim-telescope/telescope.nvim",
  keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fd",
        function() require("telescope.builtin").grep_string({ search = vim.fn.input("Find (grep) > ")}) end,
        desc = "Find String (grep)",
      },
    {
      "<leader>fw",
      function()
        local builtin = require("telescope.builtin")
        local word = vim.fn.expand("<cword>")
        builtin.grep_string({ search = word })
      end,
      desc = "Find current word (grep)",
    },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}
