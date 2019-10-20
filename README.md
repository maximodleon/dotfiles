# DOTFILES

## awesomewm

* Install awesomewm for your system
* Download the config files
* Place in ~/.config/awesome folder
* Default theme is `multicolor` with icons from the material design icons library ([link](https://materialdesignicons.com/))

## tig
Git repository viewer

## i3wm

* Install i3wm for your system ([link](https://i3wm.org/))
* Instlal polybar following the documentation from the repo ([link](https://github.com/jaagr/polybar))
* Copy `.config/polybar` and `.config/i3` to your `~/.config`
* Open or restart i3 to see the changes

**Note 1**: For the icons on the bar to display correctly need to install Font-Awesome in your system ([link](https://fontawesome.com/how-to-use/on-the-desktop/setup/getting-started))

**Note 2**: For the weather widget to display need to get and API from OpenWeatherMap ([link](https://openweathermap.org/)) and set it in the `.config/polybar/scripts/weather.sh` script

**Note 3**: Default city is santo domingo. if you need a different one, need to set the CITY variable in `.config/polybar/scripts/weather.sh`

## Vim
Default theme is [molokai_pro](https://github.com/phanviet/vim-monokai-pro)
### Font
Terminal or gui font should be set to a nerd font for filetype icons to display correctly.
Preferred font is [Space Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SpaceMono)
### Plugins and themes installation
#### Using vim-plug
1. Copy the `.vimrc` file to you home directory.
2. Install the plugin manager vim-plug ([link](https://github.com/maximodleon/dotfiles))
3. Open vim and run `:PlugInstall`
#### Plugins list
* **ale:** ([link](https://github.com/w0rp/ale)) asynchronous linter
* **vim-airline:** ([link](https://github.com/vim-airline/vim-airline)) status line
    * **Note**: Need to install powerline fonts to support nice status bar display
    * **Note**: Need to install fugitive for git integration
* **emmet-vim:** ([link](https://github.com/mattn/emmet-vim)) emmet completion support for vim
* **goyo:** ([link](https://github.com/junegunn/goyo.vim)) distraction-free writting
* **The NERD Commenter:** ([link](https://github.com/scrooloose/nerdcommenter)) code commenting made easy
* **The NERD Tree:** ([link](https://github.com/scrooloose/nerdtree)) file system explorer
* **previm:** ([link](https://github.com/previm/previm)) markdown preview
* **quick-scope:** ([link](https://github.com/unblevable/quick-scope)) fast word movement
* **tabular:** ([link](https://github.com/godlygeek/tabular)) text filtering and alignment
* **UltiSnips** ([link](https://github.com/sirver/ultisnips)) snippets manager
* **vim-fugitive:** ([link](https://github.com/tpope/vim-fugitive)) git wrapper
* **vim-indent-guides:** ([link](https://github.com/nathanaelkane/vim-indent-guides)) visually display of indentation levels
* **vim-javascript:** ([link](https://github.com/pangloss/vim-javascript)) javascript syntax support
* **vim-jsx:** ([link](https://github.com/mxw/vim-jsx)) JSX syntax highlighting and indentation
* **vim-markdown:** ([link](https://github.com/plasticboy/vim-markdown)) markdown highlighting, matching rules and mappings
* **vim-multiple-cursor:** ([link](https://github.com/terryma/vim-multiple-cursors)) Sublime text-like multiple cursors
* **vim-snippets** ([link](https://github.com/honza/vim-snippets)) UltiSnips snippets for different languages
* **vim-startify:** ([link](https://github.com/mhinz/vim-startify)) start screen for vim and neovim
* **vim-surround:** ([link](https://github.com/tpope/vim-surround)) mappings for easy delete, change and add surrounding parentheses, brackets, quotes, etc
* **vim-test:** ([link](https://github.com/janko-m/vim-test)) run tests on different granularities
* **youcompleteme:** ([link](https://github.com/valloric/youcompleteme)) code completion engine
    * **Note**: for javascript complete is [tern](http://ternjs.net/) base
    * **Note**: make sure to read javascript specific instructions for setup [link](https://github.com/valloric/youcompleteme#javascript-semantic-completion)
* **vim-devicons** ([link](https://github.com/ryanoasis/vim-devicons)) display icons depending on file type
    * **Note**: Need to install nerd fonts ([link](https://github.com/ryanoasis/nerd-fonts))
* **vim-css-color**: ([link](https://github.com/ap/vim-css-color)) display css colors inline
* **comfortable-motion**: ([link](https://github.com/yuttie/comfortable-motion.vim)) smooth scrolling through files
* **ctrlp.vim**: ([link](https://github.com/ctrlpvim/ctrlp.vim)) Fuzzy finder for vim
