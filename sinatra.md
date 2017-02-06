# Sinatra
## Basic
```ruby
# app.rb
class Application < Sinatra::Base
 configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end
  
  get '/' do
    "Hello, World!"
    erb :index
  end
end
```
```ruby
# config.ru
require 'sinatra'
require_relative 'app'

run Application
```

## Erb
```erb
<% if statement %>
<%= params[:user_name] %>
<% end %>
```

## Capybara Tests
```ruby
# spec/spec_helper.rb
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'
 
RSpec.configure do |config|
  # Mixin the Capybara functionality into Rspec
  config.include Capybara::DSL
  config.order = 'default'
end
 
def app
  Rack::Builder.parse_file('config.ru').first
end
 
Capybara.app = app
```
```ruby
# spec/application_integration_spec.rb
require_relative 'spec_helper'

describe "GET '/' - Greeting Form" do
  it 'welcomes the user' do
    visit '/'
    fill_in(:name, :value => "Mondo") # click_button
    expect(page.body).to include("Welcome!")
    expect(page).to have_selector(:name) # have_field, have_text
  end
end
```

## Tips
- The shotgun gem(auto-reload)