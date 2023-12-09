#!/bin/bash

# Start Tomcat using systemctl
sudo systemctl start tomcat9

# Wait for Tomcat to start
sleep 5

# Check if Tomcat is running
if systemctl is-active --quiet tomcat9; then
    echo "Tomcat is running."
else
    echo "Tomcat failed to start."
fi