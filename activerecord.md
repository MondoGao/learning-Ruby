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