class Admin::ThemesController < ActionController::Base #Admin::Disguise::ThemesController
  before_filter :login_required
  before_filter :admin_access_required

end