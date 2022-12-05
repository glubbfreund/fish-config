function fish_right_prompt
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
