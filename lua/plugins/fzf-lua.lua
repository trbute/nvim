return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({})
  end,
  keys = {
    { "<leader>sf", "<cmd>FzfLua files<cr>", desc = "Find files" },
    { "<leader>sg", "<cmd>FzfLua live_grep<cr>", desc = "Live grep" },
    { "<leader>sb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
    { "<leader>sr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent files" },
    { "<leader>gs", "<cmd>FzfLua git_status<cr>", desc = "Git status" },
    { "<leader>gc", "<cmd>FzfLua git_commits<cr>", desc = "Git commits" },
    { "<leader>/", "<cmd>FzfLua grep_curbuf<cr>", desc = "Search buffer" },
    { "<leader>sw", "<cmd>FzfLua grep_cword<cr>", desc = "Search word" },
    { "<C-p>", "<cmd>FzfLua files<cr>", desc = "Find files" },
  },
}
