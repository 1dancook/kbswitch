
# kbswitch

A keyboard switching program for the command line.

Code is from [this stackoverflow question](https://stackoverflow.com/questions/23729704/change-osx-keyboard-layoutinput-source-programmatically-via-terminal-or-appl)

## Installation
- requires xcode command line tools
- run `make`
- copy `build/kbswitch` to place in path

## Usage

- `kbswitch list` list all available inputs
- `kbswitch com.apple.keylayout.ABC` for English (macos Ventura)
- `kbswitch com.apple.inputmethod.Kotoeri.RomajiTyping.Japanese` for Japanese (macos Ventura)

## Notes

There is an objective-c version `kbswitch.m` that can be compiled with
 `clang -framework Carbon -framework Foundation filename.m -o filename`. However, this doesn't necessarily work as is because it requires `com.apple.keylayout` prepended to the keyboard layout.

## Switch to English keyboard in Vim

If you want to switch from (other language) to English when going from insert mode to normal mode in vim/neovim, add this to your config:

`inoremap <ESC> <ESC>:execute 'silent! !kbswitch com.apple.keylayout.ABC'<CR>:echon ''<CR>`

Note that the exectuble must be in your $PATH.
