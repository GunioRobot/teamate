class User < ActiveRecord::Base
  before_save :encrypt_password
  has_many :messages

  validates_uniqueness_of :email
  validates_presence_of :password, :last_name, :name, :email
  validates_size_of :password, :within => 5..15
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates_confirmation_of :password

  def self.authenticate(email, password)
    user = find_by_email(email)
    (user && user.password == BCrypt::Engine.hash_secret(password, user.salt))? user : nil
  end

  private
    def encrypt_password
      if password.present?
        self.salt = BCrypt::Engine.generate_salt
        self.password = BCrypt::Engine.hash_secret(password, salt)
      end
    end
end
