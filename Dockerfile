# Sử dụng ảnh Ubuntu làm hệ thống cơ sở
FROM ubuntu:latest

# Cài đặt Apache và một số công cụ cần thiết
RUN apt-get update && apt-get install -y apache2 && apt-get clean

# Mở cổng 80 để giao tiếp với Apache
EXPOSE 80

# Khởi động Apache khi container được khởi chạy
CMD ["apache2ctl", "-D", "FOREGROUND"]