FROM node:14

# نصب پیش‌نیازها
RUN apt-get update && apt-get install -y \
    build-essential \
    graphicsmagick \
    curl \
    && rm -rf /var/lib/apt/lists/*

# کلون کردن پروژه (اختیاری اگر داخل مخزن هست)
WORKDIR /app
COPY . /app

# نصب پکیج‌ها
RUN npm install

# اجرای برنامه
CMD ["npm", "start"]
