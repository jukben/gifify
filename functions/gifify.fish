function gifify -d "gififi <input> [width=350] [optional]"
    if test -z $argv[1]
        echo (set_color red)"You have to specify the input file"
        return 0
    end

    if test $argv[2]
        set width $argv[2]
    else 
        set width 350
    end

    set command "docker run --rm -v $PWD:/data maxogden/gifify $argv[1] -o $argv[1].gif --resize $width:-1"
	
    set log "/tmp/gifify"

    # should we spread arguments?
    if test $argv[3] 
        eval "echo '$command $argv[3..-1]' | sh 2> $log"
    else
        eval "echo '$command' | sh 2> $log"
    end

    # Report success
    if test $status -eq 0
        echo (set_color green)"OK"
    else
        set reason (head -1 $log)
        echo (set_color red)"Something went wrong: $reason"
    end
end
