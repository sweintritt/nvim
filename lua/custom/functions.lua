-- My custom NeoVim function additional to kickstart

--[[
function! NextBuffer()
    if !exists("b:NERDTree")
        :bn
    endif
endfunction
]]
--

--[[
function! PreviousBuffer()
    if !exists("b:NERDTree")
        :bp
    endif
endfunction
]]
--

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
	local date = os.date("# %A %d.%m.%Y\n\n\n")
	--vim.api.nvim_put( os.date("# %A %d.%m.%Y\n\n\n"), "l", true, true)
	-- Save the current cursor position
	--local position = vim.api.nvim_win_get_cursor(0)
	-- Insert an empty line after the date
	-- vim.api.nvim_put({ "_" }, "l", true, true)
	-- Restore the cursor position
	--vim.api.nvim_win_set_cursor(0, position)
	-- Enter insert mode
	--vim.cmd("startinsert!")
end

--[[
Explanation:

    os.date is used to format the date and time in Lua.
    vim.api.nvim_put is the equivalent of put in Vimscript, allowing you to insert lines.
    vim.api.nvim_win_get_cursor(0) gets the current cursor position in the active window.
    vim.api.nvim_win_set_cursor(0, position) restores the cursor to its previous position.
    vim.cmd("startinsert!") switches to insert mode, equivalent to execute "startinsert!" in Vimscript.
]]
--

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
