#!/bin/bash
set -eux

# Update system
apt update -y

# Install Nginx
apt install -y nginx

# Enable and start Nginx
systemctl enable nginx
systemctl start nginx

# Create custom web page
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>AWS Web Server</title>
  <style>
    body {
      background-color: #0f172a;
      color: #22c55e;
      font-family: Arial, sans-serif;
      text-align: center;
      padding-top: 120px;
    }
    h1 { font-size: 40px; }
    p { font-size: 18px; }
  </style>
</head>
<body>
  <h1>Ubuntu EC2 is WORKING 🚀</h1>
  <p>User-data executed successfully</p>
  <p>Hostname: $(hostname)</p>
</body>
</html>
EOF

# Set correct permissions
chmod 644 /var/www/html/index.html
