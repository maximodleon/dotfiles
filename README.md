# DOTFILES

## i3wm

* Install i3wm for your system ([link](https://i3wm.org/))
* Instlal polybar following the documentation from the repo ([link](https://github.com/jaagr/polybar))
* Copy `.config/polybar` and `.config/i3` to your `~/.config`
* Open or restart i3 to see the changes

**Note 1**: For the icons on the bar to display correctly need to install Font-Awesome in your system ([link](https://fontawesome.com/how-to-use/on-the-desktop/setup/getting-started))

**Note 2**: For the weather widget to display need to get and API from OpenWeatherMap ([link](https://openweathermap.org/)) and set it in the `.config/polybar/scripts/weather.sh` script

**Note 3**: Default city is santo domingo. if you need a different one, need to set the CITY variable in `.config/polybar/scripts/weather.sh`

## ttyplot
 plotting software for the terminal

## awesomewm

* Install awesomewm for your system
* Download the config files
* Place in ~/.config/awesome folder
* Default theme is `multicolor` with icons from the material design icons library ([link](https://materialdesignicons.com/))

## tig
Git repository viewer

## Neovim
Default theme is [molokai_pro](https://github.com/phanviet/vim-monokai-pro)
### Font
Terminal or gui font should be set to a nerd font for filetype icons to display correctly.
Preferred font is [Space Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SpaceMono)
### Plugins and themes installation
#### Using minpac
1. Install minpac using the instructions in this [link](https://github.com/k-takata/minpac)
2. Copy the contents of the folder `nvim/` to you ~/.config/nvim. If the folder does not exist create it
3. Open vim and run `:call minpac#update()` to install all the plugins
