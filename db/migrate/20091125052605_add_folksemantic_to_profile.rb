class AddFolksemanticToProfile < ActiveRecord::Migration
  def self.up
    add_column :profiles, :occupation, :string
    add_column :profiles, :gender, :string
    add_column :profiles, :birthday, :datetime
    add_column :profiles, :company, :string
    add_column :profiles, :alumni_of, :string
  end

  def self.down
    add_column :profiles, :occupation
    add_column :profiles, :gender
    add_column :profiles, :birthday
    add_column :profiles, :company
    add_column :profiles, :alumni_of
  end
end