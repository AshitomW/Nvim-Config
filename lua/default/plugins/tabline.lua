-- ## Tabline, defines how tabpages title looks like
-- For convenience of cross-probjects development, show project names directly.
-- ## Tabline, defines how tabpages title looks like
-- For convenience of cross-probjects development, show project names directly.

function MyTabLine()
	local tabline = ""
	for index = 1, vim.fn.tabpagenr("$") do
		-- Select the highlighting for the current tabpage.
		if index == vim.fn.tabpagenr() then
			tabline = tabline .. "%#TabLineSel#"
		else
			tabline = tabline .. "%#TabLine#"
		end

		local win_num = vim.fn.tabpagewinnr(index)
		local working_directory = vim.fn.getcwd(win_num, index)
		local project_name = vim.fn.fnamemodify(working_directory, ":t")

		-- Retrieve the file name without modifying the existing code.
		local file_name = vim.fn.fnamemodify(vim.fn.bufname(vim.fn.tabpagebuflist(index)[1]), ":t")

		tabline = tabline .. " " .. file_name .. " "
	end

	return tabline
end

vim.go.tabline = "%!v:lua.MyTabLine()"
