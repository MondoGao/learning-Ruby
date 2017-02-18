# Rails
## Route
### Route Map and Controller Action
```ruby
# config/routes.rb
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about', to: 'static#about'
  
    resources :authors, only: [:show] do
      # nested resource for posts
      resources :posts, only: [:show, :index]
    end
    
  scope '/admin', module: 'admin' do
    resources :stats, only: [:index]
  end
  
  # same as above, but the url_helper method change
  namespace :admin do
    resources :stats, only: [:index]
  end
end

# app/controllers/static_controller.rb
class StaticController < ActionController::Base
  def about
    # render "some_page"
  end
end

# controllers/admin/stats_controller.rb
 
class Admin::StatsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def index
    return head(:forbidden) unless session.include? :user_id
  end
end
```
### Resource Routing
```ruby
# routes.rb
resources :photos
```

## ActionView
### Helper Methods
- form
    ```erb
    <%= form_tag posts_path do %>
      <%= text_field_tag :'post[title]' %>
      <%= text_area_tag :'post[description]' %>
      <!-- <%= hidden_field_tag :authenticity_token, form_authenticity_token %> -->
    
      <%= submit_tag "Submit Post" %>
    <% end %>
    ```
    - Use form_for when your form is directly connected to a model

## ActionController
- strong params
```ruby
params.require(:post).permit(:title, :description)
```

- ``before_action :set_article, only: [:show, :edit, :update, :destroy]``

## Generators
- Migrations
- Models
- Controllers
- Resources
- Scaffold
- ``--no-test-framework``

## Gems
- rspec-rails
```ruby
require 'rails_helper'
```
```bash
rails g rspec:install
```

- Omniauth
- Devise
- authlogic
- rolify
- CanCanCan and Pundit