function ColorScheme(color)
    vim.cmd[[colorscheme nord]]

    vim.g.nord_contrast = true

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "Float", { bg = "none" })
end

ColorScheme()
