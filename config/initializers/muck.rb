
#
# Replace folksemantic.com in this file with your website's domain name
#

MuckEngine.configure do |config|

  # Environment sensitive values
  if Rails.env.production?
    config.application_url = 'www.folksemantic.com'     # Url of the application in production
  elsif Rails.env.staging?
    config.application_url = 'www.folksemantic.com'     # Url of the application on staging
  else
    config.application_url = 'localhost:3000'         # Url of the application for test or development
  end

  # Global application values.  These are used to display the app name, send emails, and configure where system emails go.
  config.application_name = 'Folksemantic'           # Common name for your application.  i.e. My App, Billy Bob, etc
  config.from_email = 'support@folksemantic.com'     # Emails will come from this address i.e. noreply@example.com, support@example.com, system@example.com, etc
  config.from_email_name = 'Folksemantic'            # This will show up as the name on emails.  i.e. support@example.com <Example>
  config.support_email = 'support@folksemantic.com'  # Support email for your application.  This is used for contact us etc.
  config.admin_email = 'admin@folksemantic.com'      # Admin email for your application
  config.customer_service_number = '1-800-'     # Phone number if you have one (optional)

  # Email charset.  No need to change this unless you have a good reason to change the encoding.
  config.mail_charset = 'utf-8'

  # Application settings
  config.local_jquery = false         # If true jquery will be loaded from the local directory. If false then it will be loaded from Google's CDN
  config.growl_enabled = false        # If true then notifications and errors will popup in an overlay div similar to 'growl' on the mac. This uses jGrowl which must be included in your layout

  # Email server configuration
  # Sendgrid is easy: https://sendgrid.com/user/signup
  config.email_server_address = "smtp.sendgrid.net"    # Email server address.  'smtp.sendgrid.net' works for sendgrid
  config.email_user_name = Secrets.email_user_name    # Email server username
  config.email_password = Secrets.email_password      # Email server password
  config.base_domain = 'folksemantic.com'                # Basedomain that emails will come from

  # ssl
  config.enable_ssl = false # Enable ssl if you have an ssl certificate installed.  This will provide security between the client and server.

  # Google Analtyics Configuration.  This will enable Google Analytics on your site and will be used if your template includes:
  #                                  <%= render :partial => 'layouts/global/google_analytics' %>
  config.google_tracking_code = "UA-9685460-1"     # Get a tracking code here: http://www.google.com/analytics/. The codes look like this: 'UA-9685000-0'
  config.google_tracking_set_domain = "folksemantic.com" # Base domain provided to Google Analytics. Useful if you are using subdomains but want all traffic
                                              # recorded into one account.
end

MuckUsers.configure do |config|

  # sign up options
  config.automatically_activate = true                    # Automatically active a users account during registration. If true the user won't get a
                                                          # 'confirm account' email. If false then the user will need to confirm their account via an email.
  config.automatically_login_after_account_create = true  # Automatically log the user in after they have setup their account. This should be false if you
                                                          # require them to activate their account.
  config.send_welcome = true                              # Send out a welcome email after the user has signed up.

  # if you use recaptcha you will need to also provide a public and private key available from http://recaptcha.net.
  config.use_recaptcha = false      # This will turn on recaptcha during registration. This is an alternative to sending the
                                    # user a confirm email and can help reduce spam registrations.

  config.let_users_delete_their_account = false   # Turn on/off ability for users to delete their own account. It is not recommended that you let
                                                  # users delete their own accounts since the delete can cascade through the system with unknown results.
end

MuckProfiles.configure do |config|
  config.enable_sunspot = false       # This enables or disables sunspot for profiles. Only use acts_as_solr or sunspot not both. Sunspot does not include multicore support.
  config.enable_solr = false           # This enables or disables acts as solr for profiles.
  config.enable_geokit = false         # Turn geokit functionality on/off.
  config.enable_guess_location = false # If true the profile system will attempt to determine the user's location via IP and populated with the location, lat and lon fields.
  config.policy = { :public => [:login, :first_name, :last_name, :about],
                     :authenticated => [:location, :city, :state_id, :country_id, :language_id],
                     :friends => [:email],
                     :private => [] }

end

MuckContents.configure do |config|
  config.sanitize_content = true
  config.enable_auto_translations = false         # If true then all content objects will automatically be translated into all languages supported by Google Translate
  config.enable_sunspot = false                   # This enables or disables sunspot for profiles. Only use acts_as_solr or sunspot not both. Sunspot does not include multicore support.
  config.enable_solr = true                       # Enables solr for the content system.  If you are using solr then set this to true.  If you do not wish to setup and manage solr
                                                  # then set this value to false (but search will be disabled).
  config.enable_comments = false

  # CSS files that should be fed into the tiny_mce content editor.
  # Note that Rails will typically generate a single all.css stylesheet.  Setting the stylesheets here let's
  # the site administrator control which css is present in the content editor and thus which css an end
  # user has access to to style their content.
  if Rails.env.production?
    config.content_css = ['/stylesheets/all.css']
  else
    config.content_css = ['/stylesheets/reset.css', '/stylesheets/styles.css']
  end
end


MuckActivities.configure do |config|
  config.enable_activity_comments = true     # Enable if you would like to enable comments for your project's activities feeds
  config.enable_live_activity_updates = true # Turns on polling inside the user's activity feed so they constantly get updates from the site
  config.live_activity_update_interval = 60  # Time between updates to live activity feed in seconds
                                             # Note that this will poll the server every 60 seconds and so will increase server load and bandwidth usage.
  config.enable_activity_shares = true       # Turn on shares in the activity feed

  # You can also use the 'contribute' helper method to render a richer status update if you have uploader installed and configured:
  config.enable_activity_file_uploads = true # Turn on file uploads in the activity feed.  Requires that uploader be installed.
  config.enable_activity_image_uploads = true # Turn on image uploads in the activity feed.  Requires that uploader and muck_albums be installed.
  config.enable_activity_video_sharing = true # Turn on video sharing in the activity feed.
end

MuckFriends.configure do |config|
  # Friend Configuration
  # The friend system provides a hybrid friend/follow model.  Either mode can be turned off or both can be enabled
  # If only following is enabled then users will be provided the ability to follow, unfollow, and block
  # If only friending is enabled then users will be provided a 'friend request' link and the ability to accept friend requests
  # If both modes are are enabled then users will be able to follow other users.  A mutual follow results in 'friends'.  An unfollow
  # leaves the other party as just a follower.
  # Note that at least one mode must be enabled.
  allow_following = true          # Turn on 'following'.  This is similar to the 'follow' functionality on Twitter in that it let's users watch one
                                  # another's activities without having explicit permission from the user.  A mutual follow essentially becomes a
                                  # friendship.
  enable_friending = true         # Turn on friend system.
  enable_friend_activity = true   # If true then friend related activity will show up in the activity feed.  Requires muck-activities gem
end

MuckComments.configure do |config|
  config.send_email_for_new_comments = true # If true this will send out an email to each user that has participated in a comment thread.  The default email is basic and only includes the body
                                            # of the comment.  Add new email views to provide a better email for you users.  They can be found in app/views/comment_mailer/new_comment.html.erb
                                            # and app/views/comment_mailer/new_comment.text.erb
  config.sanitize_content = true            # Turns sanitize off/on for comments. We highly recommend leaving this on.
end

MuckInvites.configure do |config|
  config.use_gravatar_in_photo_list = true            # The invite list can include photos from gravatar.
  config.create_activities_when_invited_joins = true  # Add an entry to the inviter's activity when the invited joins.
  config.email_inviters_when_invited_joins = true     # Send out an email to the inviter when the invited person joins.
end


if defined?(ActiveRecord)
  # Don't Include Active Record class name as root for JSON serialized output.
  ActiveRecord::Base.include_root_in_json = false
end
