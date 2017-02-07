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
    @user = "name" # pass to view
    erb :index
  end
  
  get '/:dynamic' do
    params[:dynamic]
    # @user == nil here
  end
  
  helpers do
    def help_method

    end
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
<%= yield %>
<input name="students[grade][]" # [] => auto increace index
```

## Sessions
```ruby
class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    session[:id] = @user.id
  end
end
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

## Activrecord
### Setup
```ruby
# Gemfile
gem 'sinatra'
gem 'activerecord', '4.2.5'
gem 'sinatra-activerecord'
gem 'thin'
gem 'require_all'

group :development do
    gem 'shotgun'
    gem 'pry'
    gem 'tux'
    gem 'sqlite3'
end
```

## Tips
- The shotgun gem(auto-reload)
- Patch action setup: MethodOverride middleware will intercept every request sent and received by our application. If it finds a request with name="_method", it will set the request type based on what is set in the value attribute, which in this case is patch.
```ruby
# config.ru
use Rack::MethodOverride
```
```erb
# .erb
<form action="/" method="post">
    <input id="hidden" type="hidden" name="_method" value="patch">
    <input type="text" ...>
</form>
```