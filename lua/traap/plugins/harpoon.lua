local  tok, telescope = pcall(require, "telescope")
if not tok then return end

local  hok, _ = pcall(require, "harpoon")
if not hok then return end

telescope.load_extension "harpoon"
