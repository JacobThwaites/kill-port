#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: kill-port <PORT_NUMBER>"
  exit 1
fi

PORT=$1
PID=$(lsof -i :$PORT -t)

if [ -z "$PID" ]; then
  echo "No process found on port $PORT"
else
  echo "Killing process $PID on port $PORT"
  kill -15 $PID
fi
