# Python image
FROM python:3.11-slim

# Çalışma dizinini ayarla
WORKDIR /app

# Gerekli paketleri yükle
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Projeyi kopyala
COPY . .

# Varsayılan ayar: Geliştirme ortamı
ENV DJANGO_ENV=dev

# Portları aç
EXPOSE 8000

# Sunucuyu başlat
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
