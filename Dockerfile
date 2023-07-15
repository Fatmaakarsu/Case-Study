# Uygulamanın temel alınacağı bir Docker imajı
FROM python:3.9

# Uygulama kodları Docker içine kopyalandı
COPY app.py /uygulama/app.py

# Flask'ı yüklüyoruz
RUN pip install flask

# Uygulama çalışacak çalışma dizini
WORKDIR /uygulama

# Uygulama çalıştırılacak komutu
CMD ["python", "app.py"]
