FROM php:7.4-fpm

# Copy composer.lock and composer.json into the working directory
COPY composer.lock composer.json /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Install dependencies for the operating system software
# RUN apt-get update && apt-get install -y \
#     build-essential \
 #    libpng-dev \
 #    libjpeg62-turbo-dev \
 #    libfreetype6-dev \
 #    locales \
  #   zip \
  #   jpegoptim \
  #   optipng \
  #   pngquant \
  #   gifsicle \
  #   vim \
  #   libzip-dev \
  #   unzip \
  #   git \
  #   libonig-dev \
  #   curl

# Clear cache
# RUN apt-get clean && rm -rf /var/lib/apt/lists/*


# Install extensions for php
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl
# Expose port 9000 and start php-fpm server (for FastCGI Process Manager)
EXPOSE 9093
CMD ["php-fpm"]
