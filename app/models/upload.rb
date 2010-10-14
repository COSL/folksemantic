# == Schema Information
#
# Table name: uploads
#
#  id                  :integer(4)      not null, primary key
#  creator_id          :integer(4)
#  name                :string(255)
#  caption             :string(1000)
#  description         :text
#  is_public           :boolean(1)      default(TRUE)
#  uploadable_id       :integer(4)
#  uploadable_type     :string(255)
#  width               :string(255)
#  height              :string(255)
#  local_file_name     :string(255)
#  local_content_type  :string(255)
#  local_file_size     :integer(4)
#  local_updated_at    :datetime
#  remote_file_name    :string(255)
#  remote_content_type :string(255)
#  remote_file_size    :integer(4)
#  remote_updated_at   :datetime
#  created_at          :datetime
#  updated_at          :datetime
#
# Indexes
#
#  index_uploads_on_creator_id          (creator_id)
#  index_uploads_on_uploadable_id       (uploadable_id)
#  index_uploads_on_uploadable_type     (uploadable_type)
#  index_uploads_on_local_content_type  (local_content_type)
#

class Upload < ActiveRecord::Base
  
  include Uploader::Models::Upload

  # has_many :comments, :as => :commentable, :dependent => :destroy, :order => 'created_at ASC'
  # has_many :shared_uploads, :dependent => :destroy
  
  acts_as_taggable
  
  scope :is_public, :conditions => "is_public = true"
  scope :tagged_with, lambda {|tag_name| where("tags.name = ?", tag_name).includes(:tags) }

  # def after_create
    #  do add_activity
  # end
  
  # def share_with_friend(sharer, friend_id)
  #   friend = User.find(friend_id)
  #   friend.shared_uploads.find_or_create_by_upload_id_and_shared_by_id(self.id, sharer.id)
  # end
  # 
  # def share_with_group(sharer, group_id)
  #   group = Group.find(group_id)
  #   if group.is_member?(sharer)
  #     shared_upload = group.shared_uploads.find_or_create_by_upload_id_and_shared_by_id(self.id, sharer.id)
  #   end
  #   # TODO decide if we want to feed this into a feed somewhere
  #   shared_upload
  # end
  # 
  # def share_with_friends(user, friend_ids)
  #   friend_ids.each do |friend_id, checked|
  #     self.share_with_friend(user, friend_id) if (checked == "1")
  #   end    
  # end
  # 
  # def share_with_groups(user, group_ids)
  #   group_ids.each do |group_id, checked|
  #     self.share_with_group(user, group_id) if (checked == "1")
  #   end    
  # end
  
end
