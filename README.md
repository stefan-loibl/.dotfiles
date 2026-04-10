# My dotfiles

## Setup

```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
git clone --bare https://github.com/stefan-loibl/.dotfiles $HOME/.cfg
config checkout
```

## Terminal Emulator (Wezterm)

See [here](https://wezterm.org/install/linux.html).

```
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo chmod 644 /usr/share/keyrings/wezterm-fury.gpg
sudo apt update
sudo apt install wezterm
sudo update-alternatives --config x-terminal-emulator
```

## Shell (zsh, ohmyzsh, powerlevel10k)

```
sudo apt install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
```

## Neovim

See [here](https://github.com/neovim/neovim/blob/master/BUILD.md).

```
sudo apt-get install ninja-build gettext cmake curl build-essential git
make CMAKE_BUILD_TYPE=Release
sudo make install
```

## WSL and i3

See [here](https://perweij.gitlab.io/posts/i3-in-wsl/)

* Ensure WSLG is disabled, in `%USERPROFILE%/.wslconfig`:
```
[wsl2]
guiApplications=false
```
* Install [TurboVNC](https://github.com/TurboVNC/turbovnc) on WSL
* Create `~/.Xsession`
```
export DISPLAY=:12  # Use display number 12 (port 5912)
export DONT_PROMPT_WSL_INSTALL=1

# Fixes for: 1. spurious scroll lock events (affecting Emacs, etc.), 2. activating the tilde key.
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS

## Clean environment
export XMODIFIERS=""
export GTK_IM_MODULE=""
export QT_IM_MODULE=""
export INPUT_METHOD=""

## Keyboard setup (adjust -layout se to your own layout)
setxkbmap -model pc105 -layout se -variant nodeadkeys
xmodmap -e "keycode 78 = "  # Disable spurious scroll lock
xmodmap -e "keycode 108 = ISO_Level3_Shift"  # Fix AltGr
xmodmap -e "clear mod5"
xmodmap -e "add mod5 = ISO_Level3_Shift"

# Start window manager
exec i3
```
* Launch
```
/opt/TurboVNC/bin/vncserver -depth 16 -fg -geometry 3440x1440 -xstartup ~/.Xsession :12
```
* Install VNC viewer on Windows, e.g. TurboVNC
* Connect to `localhost:5912`
