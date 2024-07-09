function ColorScheme(color)
    vim.cmd[[colorscheme nord]]

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "Float", { bg = "none" })
end

ColorScheme()
