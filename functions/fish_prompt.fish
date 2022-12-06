function fish_prompt
    set -l cwd (prompt_pwd)

    # Display current path
    set_color 72E6CC
    set -l cwd (basename (prompt_pwd))
    echo -n "$cwd "

    # Show git branch and dirty state
    set -l git_branch (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
    set -l git_dirty (command git status -s --ignore-submodules=dirty 2> /dev/null)
    if test -n "$git_branch"
        if test -n "$git_dirty"
            set_color black -b yellow
            echo -n "  $git_branch "
        else
            set_color black -b 9ECE6A 
            echo -n "  $git_branch "
        end
    end

    # Add a space
    set_color normal
    echo -n ' '
end
