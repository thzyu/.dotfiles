set fish_greeting
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/thzyu/miniconda3/bin/conda
    eval /home/thzyu/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/thzyu/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/thzyu/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/thzyu/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

