# Tmux config

## Steps

1. Install Tmux
2. Install Tmux Plugin Manager
3. Copy `tmux.conf` to `~/.config/tmux/tmux.conf`
3. Install All Plugin by enter `tmux` and typ <prefix> + I. (By default <prefix> is ctrl + B)
4. Enjoy new tmux

## How to use

### Copy and Paste

1. To enter copy mode, use `ctrl Space + [`
2. You can enter block mode with `v`, or line-block with `shift v`, or block with your mouse
3. You'll be automatically quit from copy mode
4. In normal mode, use `ctrl Space + ]` to paste the previous paste-buffer
5. To check all paste-buffer, type `ctrl Space + =`

## Troubleshooting

### [Ubuntu] Tmux conf not loaded automatically

1. Check your tmux version by run `tmux -V`
2. If your tmux version is bellow 3.1, you can't create tmux.conf on `~/.config/tmux/`
3. My solution is to create soft link on $HOME to `~/.config/tmux/tmux.conf`

```
cd $HOME
ln -s ~/.config/tmux/tmux.conf .tmux.conf

```
