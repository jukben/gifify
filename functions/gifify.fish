function gifify -d "gififi <input> <width> [optional]"
    set command "docker run --rm -v $PWD:/data maxogden/gifify $argv[1] -o $argv[1].gif --resize $argv[2]:-1 $argv[3..-1]"

    eval "echo '$command' | sh 2> /tmp/gifify"

    # Report success
    if test $status -eq 0
        echo (set_color green)"OK"
    else
        set reason (head -1 /tmp/gifify)
        echo (set_color red)"Something went wrong: $reason!"
        echo (set_color yellow)"$command"
    end
end
