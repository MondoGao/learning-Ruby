# Sinatra
## Basic
```ruby
# app.rb
class Application < Sinatra::Base
  get '/' do
    "Hello, World!"
  end
end
```
```ruby
# config.ru
require 'sinatra'
require_relative 'app'

run Application
```