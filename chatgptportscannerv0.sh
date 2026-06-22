#!/bin/sh

# ChatGPT's Port Scanner 0.1

echo "================================="
echo "   ChatGPT's Port Scanner 0.1"
echo "================================="

printf "Target IP or Hostname: "
read TARGET

printf "Start Port: "
read START

printf "End Port: "
read END

echo ""
echo "Scanning $TARGET..."
echo ""

PORT=$START

while [ "$PORT" -le "$END" ]
do
    nc -z -w 1 "$TARGET" "$PORT" 2>/dev/null

    if [ $? -eq 0 ]; then
        echo "[OPEN] Port $PORT"
    fi

    PORT=$((PORT + 1))
done

echo ""
echo "Scan complete."