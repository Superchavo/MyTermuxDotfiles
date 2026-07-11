function fish_prompt
    set -l last_status $status
    if test $last_status -ne 0
        set_color ff6c6b
    else
        set_color 38f3d1
    end
    echo -n "➜  "
    set_color -o f57e65
    echo -n (whoami)
    set_color -o a392dc
    echo -n "@"
    set_color -o 38f3d1
    echo -n "localhost  "
    set_color 38f3d1
    echo -n (prompt_pwd)
    set_color normal
    echo -n " "
end
