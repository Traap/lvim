-- {{{ zymurgy : The last word in 1980 Webster's new collegiate dictionary.

vim.api.nvim_create_autocmd('ColorScheme', { command = 'highlight clear Folded' })

-- See
-- https://mitchellt.com/2022/05/15/WSL-Neovim-Lua-and-the-Windows-Clipboard.html

in_wsl = os.getenv('WSL_DISTRO_NAME') ~= nil

if in_wsl then
    vim.g.clipboard = {
        name = 'wsl clipboard',
        copy =  { ["+"] = { "clip.exe" },   ["*"] = { "clip.exe" } },
        paste = { ["+"] = { "nvim_paste" }, ["*"] = { "nvim_paste" } },
        cache_enabled = true
    }
end

-- ------------------------------------------------------------------------- }}}
