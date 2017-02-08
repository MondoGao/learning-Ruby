# Rails
## Route
```ruby
# config/routes.rb
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about', to: 'static#about'
end

# app/controllers/static_controller.rb
class StaticController < ActionController::Base
  def about
    # render "some_page"
  end
end
```

## Gems
- rspec-rails
```ruby
require 'rails_helper'
```
```bash
rails g rspec:install
```