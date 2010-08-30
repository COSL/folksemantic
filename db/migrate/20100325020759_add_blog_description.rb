class AddBlogDescription < ActiveRecord::Migration
  def self.up
    add_column :blogs, :description, :text
  end

  def self.down
    remove_column :blogs, :description
  end
end
