FROM alpine

LABEL maintainer="RIZQI" \
      email="muhamadrizqi200105@gmail.com" \
      version="1.0"

# Install Apache2
RUN apk update && apk add --no-cache apache2

# Membuat direktori untuk website
RUN mkdir -p /var/www/localhost/htdocs

# Menyalin isi folder UAS-PCC-RIZQI-2025 saja (tanpa foldernya)

COPY index.html /var/www/localhost/htdocs/

# Menyediakan file teks sebagai demonstrasi
RUN touch UAS-PCC-RIZQI-2025.txt && \
    echo "UAS" > UAS-PCC-RIZQI-2025.txt

# Expose port 80 untuk Apache
EXPOSE 80

# Jalankan Apache di foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]