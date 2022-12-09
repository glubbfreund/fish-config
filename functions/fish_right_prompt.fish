function fish_right_prompt
 set_color $fish_color_autosuggestion 2> /dev/null; or set_color 555
 date "+%H:%M:%S"
 echo " "
 set_color normal

 if [ $fish_key_bindings = fish_vi_key_bindings ]
    or test "$fish_key_bindings" = "fish_hybrid_key_bindings"
    switch $fish_bind_mode
        case default
            set_color 101010 -b 72E6CC 
            echo " NORMAL "
            set_color normal
        case insert
            set_color 101010 -b $fish_color_autosuggestion 
            echo " INSERT "
            set_color normal
        case visual
            set_color 101010 -b 9D7CD8 
            echo " VISUAL "
            set_color normal
        case replace_one
            set_color 101010 -b f7768e
            echo " REPLACE "
            set_color normal
    end
 end
end
