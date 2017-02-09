# Rails
## Route
### Route Map and Controller Action
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
### Resource Routing
```ruby
# routes.rb
resources :photos
```

## ActionView
### Helper Methods
- form
```erb
<!-- <form action="<%= posts_path %>" method="post"> -->
<%= form_tag posts_path do %>
  <label>Post title:</label><br>
  <!-- <input type="text" id="post_title" name="post[title]"><br> -->
  <%= text_field_tag :'post[title]' %><br>

  <label>Post description:</label><br>
  <!-- <textarea id="post_description" name="post[description]"></textarea><br> -->
  <%= text_area_tag :'post[description]' %><br>


  <!-- <input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>"> -->
  <!-- <%= hidden_field_tag :authenticity_token, form_authenticity_token %> -->

  <!-- <input type="submit" value="Submit Post"> -->
  <%= submit_tag "Submit Post" %>
<% end %>
```

## Gems
- rspec-rails
```ruby
require 'rails_helper'
```
```bash
rails g rspec:install
```