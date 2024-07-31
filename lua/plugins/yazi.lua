return {
    "DreamMaoMao/yazi.nvim",
    lazy = false,
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
      },

    keys = {
        { "<leader>fy", "<cmd>Yazi<CR>", desc = "Toggle Yazi" },
      },
}

