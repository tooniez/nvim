return {
  "David-Kunz/gen.nvim",
  dependencies = { "folke/which-key.nvim" },
  cmd = "Gen",

  -- Default config
  config = function()
    require("gen").setup({
      host = "localhost",
      port = "11434",
      model = "llama3.1:latest", -- The default model to use.
      display_mode = "split", -- The display mode. Can be "float" or "split".
      show_prompt = true, -- Shows the Prompt submitted to Ollama.
      show_model = true, -- Displays which model you are using at the beginning of your chat session.
      no_auto_close = true, -- Never closes the window automatically.
      quit_map = "q", -- set keymap for close the response window
      retry_map = "<c-r>", -- set keymap to re-send the current prompt
    })

    -- Prompts
    require("gen").prompts["Fix_Code"] = {
      prompt = "Fix the following code. Only ouput the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
      replace = true,
      extract = "```$filetype\n(.-)```",
    }

    -- Set up which-key maps
    require("which-key").register({
      a = { name = "+AI" }, -- This sets up a keybinding for AI
    }, {
      prefix = "<leader>", -- You can adjust this to your preferred leader key
      mode = "v", -- This setting is for visual mode only; you might want to set it to "n" or "i" instead
    })

  end,

  -- Keymaps for prompts
  keys = {
    vim.keymap.set("v", "<leader>af", "<cmd>Gen Fix_Code<CR>", { desc = "Fix Code" }),
  },
}
