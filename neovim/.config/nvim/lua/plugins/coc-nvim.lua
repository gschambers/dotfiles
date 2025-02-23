return {
  "neoclide/coc.nvim",
  branch = "release",

  config = function()
    -- Go to defintion for symbol under cursor
    vim.keymap.set("n", "gd", "<Plug>(coc-definition)", { silent = true })

    -- List references for symbol under cursor
    vim.keymap.set("n", "gr", "<Plug>(coc-references)", { silent = true })

    -- Show floating definition for symbol under cursor
    function _G.show_docs()
      local cw = vim.fn.expand("<cword>")
      
      if vim.fn.index({"vim", "help"}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command("h " .. cw)
      elseif vim.api.nvim_eval("coc#rpc#ready()") then
        vim.fn.CocActionAsync("doHover")
      else
        vim.api.nvim_command("!" .. vim.o.keywordprg .. " " .. cw)
      end
    end

    vim.keymap.set("n", "K", "<CMD>lua _G.show_docs()<CR>", { noremap = true, silent = true })

    -- Rename symbol under cursor
    vim.keymap.set("n", "<leader>rn", "<Plug>(coc-rename)", {})

    -- Confirm completion with <CR>
    vim.keymap.set("i", "<CR>", function()
      if vim.fn["coc#pum#visible"]() == 1 then
        return vim.fn["coc#pum#confirm"]()
      else
        return "<CR>"
      end
    end, { expr = true, noremap = true, silent = true })
  end
}
