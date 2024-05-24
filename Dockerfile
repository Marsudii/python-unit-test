
FROM python:3.11.5

# Membuat folder 'app' di dalam container
WORKDIR /app

# Menyalin semua file ke dalam container di folder 'app/'
COPY . .

# Menginstal dependensi Python yang didefinisikan dalam requirements.txt
RUN pip install -r /app/requirements.txt

# Menjalankan aplikasi Flask ketika container dijalankan
CMD ["python3", "/app/main.py"]
