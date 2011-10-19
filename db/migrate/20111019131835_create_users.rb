class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :last_name
      t.integer :status
      t.string :token

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
