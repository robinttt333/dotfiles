" Toggle quickfix window with leader key
function! ToggleQuickfix()
				for buffer in tabpagebuflist()
								if bufname(buffer) == ''
												" then it should be the quickfix window
												cclose
												return
								endif
				endfor
				copen
endfunction


" Check if git dir exists if it does search from there else do Files ~ ie search from home
function! s:find_files()
    let git_dir = system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
    if git_dir != ''
        execute 'GFiles --cached --others --exclude-standard'
    else
        execute 'Files ~'
    endif
endfunction
command! ProjectFiles execute s:find_files()

function GuiTabLabel()
    let label = ''
    let bufnrlist = tabpagebuflist(v:lnum)

    " Add '+' if one of the buffers in the tab page is modified
    for bufnr in bufnrlist
        if getbufvar(bufnr, "&modified")
            let label = '+'
            break
        endif
    endfor

    " Append the number of windows in the tab page if more than one
    let wincount = tabpagewinnr(v:lnum, '$')
    if wincount > 1
        let label .= wincount
    endif
    if label != ''
        let label .= ' '
    endif

    " Append the buffer name (not full path)
    return label . "%t"
endfunction

" This function moves lines up by a number ie positin
function! MoveEm(position)
  let saved_cursor = getpos(".")
  let previous_blank_line = search('^$', 'bn')
  let target_line = previous_blank_line + a:position - 1
  execute 'move ' . target_line
  call setpos('.', saved_cursor)
endfunction

for position in range(1, 9)
  execute 'nnoremap m' . position . ' :call MoveEm(' . position . ')<cr>'
endfor

" Toggle between horizontal and vertical splits
function! ToggleWindowHorizontalVerticalSplit()
  if !exists('t:splitType')
    let t:splitType = 'vertical'
  endif

  if t:splitType == 'vertical' " is vertical switch to horizontal
    windo wincmd K
    let t:splitType = 'horizontal'

  else " is horizontal switch to vertical
    windo wincmd H
    let t:splitType = 'vertical'
  endif
endfunction
" clang format on save for cpp files
function! Formatonsave()
  let l:formatdiff = 1
  pyf ~/.config/clang/clang-format.py
endfunction
