#!/usr/local/bin/fish

set -x PATH $PATH '/Users/hapham/.config/kotlin-language-server/server/build/install/server/bin' 
set -x LC_AL en_US.UTF-8
set -x LANG en_US.UTF-8

# fish_vi_key_bindings

abbr -a rl 'source ~/.config/fish/config.fish'
abbr -a ef 'nvim ~/projects/dot-files/fish/config.fish'
abbr -a effn 'nvim ~/.config/fish/functions/'

# Git abbreviations
abbr -a gf 'git fetch -p'
abbr -a gc 'git commit'
abbr -a gst 'git status'
abbr -a gm 'git merge'
abbr -a gma 'git stash; git checkout master;'
abbr -a gco 'git checkout'
abbr -a gbr 'git checkout -b'
abbr -a gp 'git stash pop'
abbr -a gdc 'git checkout -- .'
abbr -a grm 'git rebase master -i'
abbr -a gs 'git status'
abbr -a gbk 'git checkout -'
abbr -a gbp 'git checkout -; git pop'
abbr -g gl 'git log --oneline'

abbr -a e 'nvim'
abbr -a pc '~/projects/personio/perctl'
abbr -a psn 'cd ~/projects/personio'
abbr -a is 'cd ~/projects/invoice-service'
abbr -a kgp 'kubectl get pods'
abbr -a wkgp 'watch kubectl get pods'
abbr -a kd 'kubectl describe'
abbr -a ke 'kubectl exec -it'
abbr -a klg 'kubectl logs'
abbr -a kdc 'kubectl describe'
abbr -a proj 'cd ~/projects'
abbr -a aps 'cd ~/projects/admin-panel-service'
abbr -a ev 'nvim ~/projects/dot-files/nvim/init.vim'
abbr -a etm 'nvim ~/projects/dot-files/tmux/.tmux.conf'
abbr -a eal 'nvim ~/projects/dot-files/alacritty.yml'
abbr -a pre 'pr e'
abbr -a prc 'pr c'

function fish_right_prompt
	set st $status
	if test $st -eq 0
		set_color green
	else
		set_color red
	end
	echo -n $st
	set_color normal
	echo -n '|'
	date "+%H:%M:%S"
end

# set fish_color_autosuggestion d2d2d2
    
function pr -d "Go to project in $HOME/projects"
    cd "$HOME/projects"
    ls -d */ | string trim | fzf | read -l result

    switch "$argv"
        case code c
            code $result
        case e o v vim nvim
            nvim $result
        case '*'
            cd $result
        end
end

