source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.22'

group :assets do
  gem 'sass-rails',   '~> 3.2.5'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.2.5'
  gem 'angularjs-rails'
end

gem 'font-awesome-sass', '~> 4.0.3.1'

gem 'jquery-rails'
gem 'unicorn', '~> 4.6.2' # web server
gem 'unicorn-worker-killer'
gem 'mysql2', '0.3.11'
gem 'exceptional', "2.0.33"                               #exception notifications
gem "wisepdf", "1.4.0"
gem 'wkhtmltopdf-binary'

group :development do
  gem 'sqlite3'
  gem 'sunspot_solr', '1.3.3'
  gem 'letter_opener'
  gem "wkhtmltopdf-binary"
end

group :production do
  gem "wkhtmltopdf-heroku"
end

#This points to edge.  For stable, use a published gem https://rubygems.org/gems/artfully_ose
# gem 'artfully_ose', :git => 'git://github.com/fracturedatlas/artfully_ose.git'
# gem 'artfully_ose', :path => '../artful.ly/lib/artfully_ose'

gem 'artfully_ose', "1.3.0.pre1"