local status, presence = pcall(require, "presence")
if not status then
	return
end

presence.setup({
	main_image = "file",
	neovim_image_text = "ItIsWutItIs",
})
