function fish_mode_prompt
    if [ $fish_key_bindings = fish_vi_key_bindings ]
        or test "$fish_key_bindings" = "fish_hybrid_key_bindings"
        switch $fish_bind_mode
            case default
                set_color 282A2E -b 72E6CC 
                echo " NORMAL "
                set_color normal
                echo " "
            case insert
                echo ""
            case visual
                set_color 282A2E -b 9D7CD8 
                echo " VISUAL "
                set_color normal
                echo " "
            case replace_one
                set_color 282A2E -b f7768e
                echo " REPLACE "
                set_color normal
                echo " "
        end
    end
end
