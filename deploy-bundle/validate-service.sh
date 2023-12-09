if systemctl is-active --quiet tomcat9; then
    echo "Tomcat is running."
else
    echo "Tomcat failed to start."
fi