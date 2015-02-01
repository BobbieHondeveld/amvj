cache_release_path = release_path
bash "installing atabase environment" do
  user "deploy"
  group "apache"
  #cwd ::File.join(cache_release_path, 'deploy')
  cwd cache_release_path
  code <<-EOH
    cp ./deploy/.htpasswd ./.htpasswd
    cp ./deploy/.htaccess ./.htaccess
    cp ./deploy/index.php ./index.php
    curl -sS https://getcomposer.org/installer | php -- --filename=composer
    chmod 0775 .
    chmod 0775 ./tmp
    mkdir conf
    chmod -R 0775 ./conf
    ./composer update
    chmod 0775 ./vendor/spekkionu/htmlpurifier/HTMLPurifier/DefinitionCache/Serializer
  EOH
end
