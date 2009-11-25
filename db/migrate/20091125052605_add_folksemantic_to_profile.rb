class AddFolksemanticToProfile < ActiveRecord::Migration
  def self.up
  end

  def self.down
  end
end



class AddMoreFieldsToProfiles < ActiveRecord::Migration
  def self.up
    add_column :profiles, :occupation, :string
    add_column :profiles, :gender, :string
    add_column :profiles, :birthday, :datetime
    add_column :profiles, :company, :string
    add_column :profiles, :zip, :string
    add_column :profiles, :mobile_phone, :string
    add_column :profiles, :home_phone, :string
    add_column :profiles, :alumni_of, :string
    add_column :profiles, :relationship_status, :string
  end

  def self.down
    add_column :profiles, :occupation
    add_column :profiles, :gender
    add_column :profiles, :birthday
    add_column :profiles, :company
    add_column :profiles, :zip
    add_column :profiles, :mobile_phone
    add_column :profiles, :home_phone
    add_column :profiles, :alumni_of
    add_column :profiles, :relationship_status
  end
end