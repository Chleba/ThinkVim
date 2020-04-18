
" For startify
let s:header = [
      \ '',
      \ '                 _a,                   ',
      \ '                _yQa.                  ',
      \ '               _qTWW(                  ',
      \ '               je`?QX:                 ',
      \ '              <d+ -3Wm;                ',
      \ '             _qos_s%mWw,               ',
      \ '             a2?????TWW(               ',
      \ '            sd(     -?Qm;.             ',
      \ '          .amm;     .xmWmc             ',
      \ '          """""`    """""""            ',
      \ '            +-+-+-+-+-+-+              ',
      \ '            |c|H|L|e|B|@|              ',
      \ '            +-+-+-+-+-+-+              ',
      \ '     [  thinvim version '.g:thinkvim_version.'  ]',
      \ '',
      \ ]

let s:footer = [
      \ '      Have fun     ',
      \ '',
      \ ]

function! Thinkvim_startify_center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

let g:startify_custom_header = Thinkvim_startify_center(s:header)
let g:startify_custom_footer = Thinkvim_startify_center(s:footer)

autocmd! FileType startify
autocmd  FileType startify set laststatus=0 showtabline=0
  \| autocmd BufLeave <buffer> set laststatus=2 showtabline=2

