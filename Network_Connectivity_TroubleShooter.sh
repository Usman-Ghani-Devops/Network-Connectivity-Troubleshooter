#!/bin/bash

SERVER="google.com"
PORT=443

echo "=== Network Troubleshooting for $SERVER ==="

check_dns() {
    if nslookup "$SERVER" &> /dev/null; then
        echo "DNS Resolution OK"
    else
        echo "DNS Resolution FAILED"
    fi
}

check_ping() {
    if ping -c 3 -W 2 "$SERVER" &> /dev/null; then
        echo "PING Host reachable"
    else
        echo "PING Host unreachable"
    fi
}

check_port() {
    if nc -z -w 3 "$SERVER" "$PORT" &> /dev/null; then
        echo "PORT $PORT is OPEN"
    else
        echo "PORT $PORT is CLOSED"
    fi
}

check_route() {
    output=$(traceroute -m 10 "$SERVER" 2>/dev/null)

    if echo "$output" | grep -q "$SERVER"; then
        echo "ROUTE Path looks OK"
    else
        echo "ROUTE Possible routing issue or blocked hops"
    fi
}

check_dns
check_ping
check_port
check_route
