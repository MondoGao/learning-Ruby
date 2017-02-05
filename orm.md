# ORM and SQL
## Basic
```ruby
conn = SQLite3::Database.new(db)
conn.results_as_hash # return database row as a hash
```

- Here Document
```ruby
# <<- + name of language contained in our multiline statement + the string, on multiple lines + name of language.
str = <<- SQL
  
SQL
```

- Bound Paramenters
```ruby
db.excute("Select * from ?", bound_paramenter)
```
