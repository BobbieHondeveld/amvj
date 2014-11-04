cache_release_path = release_path
bash "installing atabase environment" do
  user "deploy"
  group "www-data"
  #cwd ::File.join(cache_release_path, 'deploy')
  cwd cache_release_path
  code <<-EOH
    cp ./deploy/.htpasswd ./.htpasswd
    cp ./deploy/.htaccess ./.htaccess
    cp ./deploy/index.php ./index.php
    curl -sS https://getcomposer.org/installer | php -- --filename=composer
    chmod 0775 .
    mkdir conf
    chmod 0775 ./conf
    sudo chown deploy:www-data ./conf
    mkdir tmp
    chmod 0775 ./tmp
    mkdir content
    mkdir content/invoices
    mkdir content/products
    mkdir content/products/originals
    mkdir content/products/views
    mkdir content/products/thumbnails
    mkdir content/products/minis
    mkdir content/dafproduct_imgs
    mkdir content/brands
    mkdir content/brands/logos
    mkdir content/brands/headers
    mkdir content/brands/media
    mkdir content/Stores
    chmod -R 0775 ./content
    ./composer update
  EOH
end
