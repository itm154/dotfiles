function healthmode
    if test (count $argv) -ne 1
        echo "Usage: healthmode enable or disable"
        return 1
    end

    switch $argv[1]
        case enable
            set mode 1
        case disable
            set mode 0
        case '*'
            echo "Invalid argument: $argv[1]"
            echo "Usage: healthmode enable or disable"
            return 1
    end

    echo $mode | sudo tee /sys/bus/wmi/drivers/acer-wmi-battery/health_mode
end
