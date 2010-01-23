Disguise::Config.use_domain_for_themes = GlobalConfig.use_domain_for_themes
Disguise::Config.themes_enabled = GlobalConfig.themes_enabled

# These options are also available to configure disguise.  In most cases the defaults should work fine.
Disguise::Config.theme_path = 'themes'
Disguise::Config.theme_full_base_path = File.join(RAILS_ROOT, Disguise::Config.theme_path)