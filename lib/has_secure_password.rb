gem 'bcrypt'

# app/models/user.rb
class User < ActiveRecord::Base
  def password=(new_password)
    salt = BCrypt::Engine::generate_salt
    hashed = BCrypt::Engine::hash_secret(new_password, salt)
    self.password_digest = salt + hashed
  end

  # authenticate(password: string) -> User?
  def authenticate(password)
    # Salts generated by generate_salt are always 29 chars long.
    salt = password_digest[0..28]
    hashed = BCrypt::Engine::hash_secret(password, salt)
    return nil unless (salt + hashed) == self.password_digest
  end
end