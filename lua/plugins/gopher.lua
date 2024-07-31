local M = {
    "olexsmir/gopher.nvim",
  }
  
  function M.config()
    require("gopher").setup({
      commands = {
        dlv = "dlv",
        go = "go",
        gomodifytags = "gomodifytags",
        gotests = "gotests",
        impl = "impl",
        iferr = "iferr",
      },
    })
  end
  
  return M