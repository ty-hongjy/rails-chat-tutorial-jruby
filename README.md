# Rails chat application for jruby
Code of the rails chat tutorial for jruby is from [iridakos.com],modify for jruby 9.2.14.0 .
rails version is 5.2.4.2.
# MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

# Modify for jruby
```bash
    jgem install bundler --source 'http://gems.ruby-china.com'
    jgem install rake --source 'http://gems.ruby-china.com'
    jgem install rubyzip --source 'http://gems.ruby-china.com'
    jruby -S warble config
```
use bund.sh for bundle install under local path vendle 
```bash
    bundle config set --local path 'vendor/bundle'
    jruby -J-Xmx1024m -S  bundle  install --path vendor/bundle
```
database.yml
```yaml
#pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
    pool:  15
```
Gemfile add 
```ruby
    gem 'activerecord-jdbc-adapter'
    gem 'activerecord-jdbcsqlite3-adapter'
    gem 'rubyzip','~> 1.3.0'
```
myrails.sh
```shell
    jruby -J-Xmx1024m -S bundle exec rails s --binding=0.0.0.0 -p=3001
```
it need support by nodejs version 8.0.0 up
