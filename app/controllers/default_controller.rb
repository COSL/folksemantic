class DefaultController < ApplicationController

  before_filter :go_to_dashboard, :only => :index
  caches_action [:index, :contact, :widgets, :oerrecommender, :integration]

  def index
    respond_to do |format|
      format.html { render :layout => false }
    end
  end

  def contact
    if request.post?
      send_form_email(params, t('muck.contact_request'))
      flash[:notice] = t('muck.contact_thanks') 
      redirect_to contact_url
    else
      respond_to do |format|
        format.html { render }
      end
    end
  end

  def sitemap
    respond_to do |format|
      format.html { render }
    end
  end

  def ping
    user = User.first
    render :text => 'we are up'
  end
  
  def widgets
    @page_title = t('folksemantic.widgets_title')
  end
  
  def oerrecommender
    @page_title = t('oerrecommender.page_title')
    respond_to do |format|
      format.html { render :layout => 'oerr' }
    end
  end
  
  def integration
    @page_title = t('oerrecommender.integration_page_title')
  end
  
  protected
    def go_to_dashboard
      if logged_in?
        redirect_to user_path(current_user.login)
      end
    end
    
end
