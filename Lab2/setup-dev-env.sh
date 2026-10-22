#!/bin/bash

echo "============================================="
echo "  AUTOMATION: SETUP DEVELOPMENT ENVIRONMENT  "
echo "============================================="
echo ""

# 1. Tạo thư mục chứa ảnh chụp màn hình
echo "📁 [1/3] Tạo thư mục screenshots..."
mkdir -p screenshots
echo "  ✔ Thư mục screenshots đã sẵn sàng."

# 2. Tự động tạo package.json nếu chưa có
echo "📄 [2/3] Kiểm tra & khởi tạo package.json..."
if [ ! -f package.json ]; then
  cat << 'EOF' > package.json
{
  "name": "devops-lab2-docker",
  "version": "1.0.0",
  "description": "DevOps Lab 2 — Docker Lean Demo",
  "main": "server.js",
  "scripts": {
    "start": "node server.js"
  }
}
EOF
  echo "  ✔ Đã tự động tạo file package.json thành công!"
else
  echo "  ✔ File package.json đã tồn tại."
fi

# 3. Tự động tạo server.js nếu chưa có
echo "📄 [3/3] Kiểm tra & khởi tạo server.js..."
if [ ! -f server.js ]; then
  cat << 'EOF' > server.js
const http = require('http');

const server = http.createServer((req, res) => {
    res.writeHead(200, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({
        message: 'Hello from Docker!',
        lab: 'DevOps Lab 2 — Lean Principle',
        timestamp: new Date().toISOString(),
        node_version: process.version,
        platform: process.platform,
    }));
});

const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
    console.log(`Environment: Node.js ${process.version} on ${process.platform}`);
});
EOF
  echo "  ✔ Đã tự động tạo file server.js thành công!"
else
  echo "  ✔ File server.js đã tồn tại."
fi

echo ""
echo "============================================="
echo "✅ Môi trường dev đã sẵn sàng trong chưa đầy 5 giây!"
echo "============================================="