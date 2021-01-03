
#d work/gx_report
#m work/gx_report/config/puma.rb
rm config/puma.rb
#cd work/gx_report
#sudo bundle exec rails s --binding=0.0.0.0 -p=3001
jruby -J-Xmx1024m -S bundle exec rails s --binding=0.0.0.0 -p=3001
#uudo bundle exec rails s --binding=192.168.2.174

