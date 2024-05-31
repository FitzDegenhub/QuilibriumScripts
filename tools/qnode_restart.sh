#!/bin/bash

start_process() {
    GOEXPERIMENT=arenas go run ./... &
    main_process_id=$!
    local child_process_pid=$(pgrep -P $main_process_id)
    echo "Process started with PID $main_process_id and child PID $child_process_pid"
}

is_process_running() {
    ps -p $main_process_id > /dev/null 2>&1
    return $?
}

kill_process() {
    local process_count=$(pgrep -c "exe/node")
    local process_pids=$(pgrep "exe/node")

    if [ $process_count -gt 0 ]; then
        echo "Killing processes $process_pids"
        kill $process_pids
    else
        echo "No processes running"
    fi
}

# Move to the directory where the script resides
cd ~/ceremonyclient/node || exit


kill_process
start_process

while true; do
    if ! is_process_running; then
        echo "Process crashed or stopped. Restarting..."
        start_process
    fi

    sleep 60
done
