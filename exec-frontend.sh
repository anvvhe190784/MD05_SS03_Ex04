#!/bin/bash
# Script khởi chạy container rikkei-frontend-qa và kiểm tra biến môi trường API_ENDPOINT

# 1. Xóa container cũ nếu đã tồn tại
docker rm -f rikkei-frontend-qa 2>/dev/null

# 2. Khởi chạy container từ image nginx với biến môi trường API_ENDPOINT
docker run -d --name rikkei-frontend-qa -e API_ENDPOINT=https://qa-api.rikkei.edu.vn nginx

# 3. Truy cập vào bash shell bên trong container và in giá trị biến API_ENDPOINT
docker exec -it rikkei-frontend-qa bash -c 'echo $API_ENDPOINT'
