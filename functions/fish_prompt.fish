function fish_prompt
    set -l last_status $status
    set -l cwd (prompt_pwd)
    if not test $last_status -eq 0
        set_color D2042D
    else
        set_color 72E6CC
    end

    # Display current path
    set -l cwd (basename (prompt_pwd))
    echo -n "$cwd "

    # Show git branch and dirty state
    set -l git_branch (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
    set -l git_dirty (command git status -s --ignore-submodules=dirty 2> /dev/null)
    if test -n "$git_branch"
        if test -n "$git_dirty"
            set_color 101010 -b FECC27
            echo -n "  $git_branch "
        else
            set_color 101010 -b 9ECE6A 
            echo -n "  $git_branch "
        end
    end

    # Add a space
    set_color normal
    echo -n ' '
end
