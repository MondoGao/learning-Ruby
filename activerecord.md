# ActiveRecord
## Migration
```ruby
class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
    add_column :students, :birthdate, :string
    change_column :students, :birthdate, :datetime
  end
end

```

## CRUD
```ruby
class.find(id)
class.find(hash)
class.find_by(hash)
class.where(string_or_hash)

instance.update(string_or_hash)
instance.update_all(string_or_hash)

instance.destroy
instance.destroy_all
```

## Assiociation
```ruby
class A < ActiveRecord::Base
 has_many :bs
 has_many :cs, througn: :bs
 belongs_to :d
end

@a.bs.build # B.new
@b.build_a # @b.a = A.new
```
```ruby
# listing.rb
has_many :listings, :foreign_key => 'host_id'

# user.rb
belongs_to :host, :class_name => "User"
```
```erb
# has_many form
  <%= f.fields_for :categories, post.categories.build do |categories_fields| %>
    <%= categories_fields.text_field :name %>
  <% end %>
```

## Secure
```ruby
class A < ActiveRecord::Base
  has_secure_password
  validates_presence_of :username
end

a.authenticate(password)

def change
  t.string :password_digest
end
```

## Validations
```ruby
class A < ActiveRecord::Base
   validates :name, presence: true
   validates :name, uniqueness: true
   validates :name, length: {minimum: 2, maximum: 3, in: 6..20, is: 7}
   validates :name, acceptance: true
   validates :category, inclusion: { in: %w() }
   validates :title, uniqueness: {
    scope: [:release_year, :artist_name],
    message: "cannot be repeated by the same artist in the same year"
    }
  with_options if: :released? do |song|
    song.validates :release_year, presence: true
    song.validates :release_year, numericality: {
      less_than_or_equal_to: Date.today.year
    }
  end
end
```

## Lifecycle Methods
```ruby
  before_save :make_title_case 
  before_validation :make_title_case # when modifying an attribute of the model, use before_validation
  before_create :method
```

## Form Methods
```ruby
accepts_nested_attributes_for :address
# <%= f.fields_for :addresses do |addr| %>
```