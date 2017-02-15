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