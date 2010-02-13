# == Schema Information
#
# Table name: access_codes
#
#  id         :integer(4)      not null, primary key
#  code       :string(255)
#  uses       :integer(4)      default(0), not null
#  unlimited  :boolean(1)      not null
#  expires_at :datetime
#  use_limit  :integer(4)      default(1), not null
#  created_at :datetime
#  updated_at :datetime
#

class AccessCode < ActiveRecord::Base
  acts_as_muck_access_code
end
