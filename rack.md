# Rack
```ruby
# app/application.rb
class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "something"
    resp.status = 404

    req = Rack::Request.new(env)
    req.params[param_name]
    req.path
  end
end
```
```ruby
# config.ru
require_relative 'config/environment'
run Application.new
```