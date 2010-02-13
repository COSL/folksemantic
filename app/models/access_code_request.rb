# == Schema Information
#
# Table name: access_code_requests
#
#  id           :integer(4)      not null, primary key
#  email        :string(255)
#  code_sent_at :datetime
#  created_at   :datetime
#  updated_at   :datetime
#

class AccessCodeRequest < ActiveRecord::Base
  acts_as_muck_access_code_request
end
