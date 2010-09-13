class AddDeadEntryFields < ActiveRecord::Migration
  def self.up
#    add_column :entries, :permalink_good, :boolean, :default => true
    add_column :entries, :permalink_checked_at, :datetime, :default => '1971-01-01 01:01:01', :null => false
    add_index :entries, :permalink_good
  end

  def self.down
    remove_index :entries, :permalink_good
    remove_column :entries, :permalink_good
    remove_column :entries, :permalink_checked_at
  end
end
