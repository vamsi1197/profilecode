#!/bin/bash

# Stop Tomcat
echo "Stopping Tomcat..."
CATALINA_PID=$(pgrep -f "catalina")
if [ -n "$CATALINA_PID" ]; then
    kill "$CATALINA_PID"
    echo "Tomcat stopped successfully."
else
    echo "Tomcat is already stopped."
fi