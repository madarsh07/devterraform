#!/bin/bash
# Update packages
yum update -y

# Install Apache (httpd)
yum install -y httpd

# Start and enable Apache on boot
systemctl start httpd
systemctl enable httpd

# Write a simple default web page
cat << 'EOF' > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>Welcome</title>
</head>
<body>
  <h1>Hello from AWS_WORLD</h1>
  <p>This is the default Apache page served via EC2 user‑data.</p>
</body>
</html>
EOF

# Set proper permissions
chown root:root /var/www/html/index.html
chmod 644 /var/www/html/index.html
