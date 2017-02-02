## Gems
```ruby
source "https://rubygems.org"

gem 'mail', '~> 2.6', '>= 2.6.3'
gem "sinatra"

group :development do
  gem "pry"
end
gem "pry", :group => "development"
```

## Bundler
```ruby
# config/environment.rb
require 'bundler/setup'
Bundler.require(:default, :development)
```

## Scraping
```ruby
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.baidu.com/"))
doc.css(css_selector) # one method to query elements
doc.css(css_selector).attribute(atr_str).value
```