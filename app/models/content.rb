# == Schema Information
#
# Table name: contents
#
#  id               :integer(4)      not null, primary key
#  creator_id       :integer(4)
#  title            :string(255)
#  body             :text
#  locale           :string(255)
#  body_raw         :text
#  contentable_id   :integer(4)
#  contentable_type :string(255)
#  parent_id        :integer(4)
#  lft              :integer(4)
#  rgt              :integer(4)
#  is_public        :boolean(1)
#  state            :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  layout           :string(255)
#  comment_count    :integer(4)      default(0)
#
# Indexes
#
#  index_contents_on_parent_id   (parent_id)
#  index_contents_on_creator_id  (creator_id)
#

class Content < ActiveRecord::Base
  include MuckContents::Models::MuckContent
end
