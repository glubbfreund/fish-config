function fish_right_prompt
 if [ $fish_key_bindings = fish_vi_key_bindings ]
    or test "$fish_key_bindings" = "fish_hybrid_key_bindings"
    switch $fish_bind_mode
        case default
            set_color 282A2E -b 72E6CC 
            echo " NORMAL "
            set_color normal
            echo " "
        case insert
            set_color 282A2E -b 9ECE6A 
            echo " INSERT "
            set_color normal
            echo " "
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
 set -l last_status $status
  if not test $last_status -eq 0
    set_color --bold 282A2E  -b D2042D
    echo -n ' ! '
    set_color normal
    echo " "
  end
  set_color $fish_color_autosuggestion 2> /dev/null; or set_color 555
  date "+%H:%M:%S"
  set_color normal
end
