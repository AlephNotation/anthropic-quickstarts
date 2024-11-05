#!/bin/bash
set -e

# create logs directory for supervisord
mkdir -p $HOME/logs


echo "Starting services..."
supervisord -n -c $HOME/supervisord.conf &

# wait for supervisord to start (longest startup time is 3 seconds)
sleep 5
echo "✨ Computer Use Demo is ready!"
echo "➡️  Open http://localhost:8080 in your browser to begin"

# # Keep the container running
tail -f /dev/null
