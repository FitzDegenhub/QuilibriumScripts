#!/bin/bash

# Step 0: Welcome
echo "✨ Welcome! This script will edit your .config/config.yml file and setup the gRPC calls.✨"
echo "Made with 🔥 by LaMat - https://quilibrium.one"
echo "====================================================================================="
echo ""
echo "Processing... ⏳"
sleep 7  # Add a 7-second delay

# Function to check if a line exists in a file
line_exists() {
    grep -qF "$1" "$2"
}

# Function to add a line after a specific pattern
add_line_after_pattern() {
    sudo sed -i "/^ *$1:/a\  $2" "$3" || { echo "❌ Failed to add line after '$1'! Exiting..."; exit 1; }
}

# Step 1: Enable gRPC and REST
echo "🚀 Enabling gRPC and REST..."
sleep 1
cd "$HOME/ceremonyclient/node" || { echo "❌ Failed to change directory to ~/ceremonyclient/node! Exiting..."; exit 1; }

# Delete existing lines for listenGrpcMultiaddr and listenRESTMultiaddr if they exist
sudo sed -i '/^ *listenGrpcMultiaddr:/d' .config/config.yml
sudo sed -i '/^ *listenRESTMultiaddr:/d' .config/config.yml

# Add listenGrpcMultiaddr: "/ip4/127.0.0.1/tcp/8337"
echo "listenGrpcMultiaddr: \"/ip4/127.0.0.1/tcp/8337\"" | sudo tee -a .config/config.yml > /dev/null || { echo "❌ Failed to enable gRPC! Exiting..."; exit 1; }

# Add listenRESTMultiaddr: "/ip4/127.0.0.1/tcp/8338"
echo "listenRESTMultiaddr: \"/ip4/127.0.0.1/tcp/8338\"" | sudo tee -a .config/config.yml > /dev/null || { echo "❌ Failed to enable REST! Exiting..."; exit 1; }

sleep 1

# Step 2: Enable Stats Collection
echo "📊 Enabling Stats Collection..."
if ! line_exists "statsMultiaddr: \"/dns/stats.quilibrium.com/tcp/443\"" .config/config.yml; then
    add_line_after_pattern "engine" "statsMultiaddr: \"/dns/stats.quilibrium.com/tcp/443\"" .config/config.yml
    echo "✅ Stats Collection enabled."
else
    echo "✅ Stats Collection already enabled."
fi

sleep 1

echo""
echo "✅ gRPC, REST, and Stats Collection setup was successful."
echo""
echo "✅ If you want to check manually just run: cd /root/ceremonyclient/node/.config/ && sudo nano config.yml"
