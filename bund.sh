# sudo bundle  install --path vendor/undle
bundle config set --local path 'vendor/bundle'
jruby -J-Xmx1024m -S  bundle  install --path vendor/bundle
