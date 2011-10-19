class AddThreadIdToMessages < ActiveRecord::Migration
  def self.up
    remove_column :messages, :thread
    add_column :messages, :conversation_id, :integer
  end

  def self.down
    remove_column :messages, :conversation_id
    add_column :messages, :thread, :integer
  end
end
