-- My custom NeoVim function additional to kickstart

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})


--[[
function! CleanUpTheFile()
    call feedkeys("gg=G")     " Fix indent
    call feedkeys("2\<C-o>")  " Jump back to steps in the jump list, which should bring you to where
                              " before the indent changes
    %s/\s\+$//e               " Remove trailing whitespaces
    %s/\r//ge                 " Remove Windows LineEndings
endfunction
]]
--

--[[
" Add the current date as markdown headline for a new log entry
function! AddLogEntry()
    put =strftime('# %A %d.%m.%Y%n%n%n')
    let position = getpos(".")
    put _
    call setpos('.', position)
    execute "startinsert!"
endfunction
]]
--

function AddLogEntry()
	-- Insert the formatted date
	vim.api.nvim_put({ os.date("# %A %d.%m.%Y") .. "\n\n\n" }, "l", true, true)
	-- Save the current cursor position
	local position = vim.api.nvim_win_get_cursor(0)
	-- Insert an empty line after the date
	vim.api.nvim_put({ "_" }, "l", true, true)
	-- Restore the cursor position
	vim.api.nvim_win_set_cursor(0, position)
	-- Enter insert mode
	vim.cmd("startinsert!")
end

-- To use this function, you can map it to a key like this:
-- vim.api.nvim_set_keymap('n', '<leader>l', ':lua add_log_entry()<CR>', { noremap = true, silent = true })

--[[
function! AdvClose()
    :bp | sp | bn | bd
endfunction
]]
--

--[[
function! SuperCleverTab()
    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
        return "\<Tab>"
    elseif pumvisible()
        return "\<c-n>"
    else
        return "\<C-N>"
    endif
endfunction
]]
--
