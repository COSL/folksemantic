# == Schema Information
#
# Table name: users
#
#  id                  :integer(4)      not null, primary key
#  login               :string(255)
#  email               :string(255)
#  first_name          :string(255)
#  last_name           :string(255)
#  crypted_password    :string(255)
#  password_salt       :string(255)
#  persistence_token   :string(255)
#  single_access_token :string(255)
#  perishable_token    :string(255)
#  login_count         :integer(4)      default(0), not null
#  failed_login_count  :integer(4)      default(0), not null
#  last_request_at     :datetime
#  last_login_at       :datetime
#  current_login_at    :datetime
#  current_login_ip    :string(255)
#  last_login_ip       :string(255)
#  terms_of_service    :boolean(1)      not null
#  time_zone           :string(255)     default("UTC")
#  disabled_at         :datetime
#  activated_at        :datetime
#  created_at          :datetime
#  updated_at          :datetime
#
# Indexes
#
#  index_users_on_login                (login)
#  index_users_on_email                (email)
#  index_users_on_persistence_token    (persistence_token)
#  index_users_on_perishable_token     (perishable_token)
#  index_users_on_single_access_token  (single_access_token)
#  index_users_on_last_request_at      (last_request_at)
#

require File.dirname(__FILE__) + '/../spec_helper'

describe User do

  describe 'A user instance' do
    it { should have_many :uploads }
  end

  it "should let itself view itself" do
    user = Factory(:user)
    user.can_view?(user).should be_true
  end
  
  describe "user activities" do
    before do
      @user = Factory(:user)
    end
    
    it "should add activities after create" do
      lambda{
        user = Factory(:user)
      }.should change(Activity, :count).by(2)
    end
    
    it "should add welcome activity" do
      templates = @user.activities.map(&:template)
      templates.should include('welcome')
    end
  
    it "should add status update activity" do
      templates = @user.activities.map(&:template)
      templates.should include('status_update')
    end
  
  end
  
end
