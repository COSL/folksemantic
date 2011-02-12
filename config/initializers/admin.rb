# Add admin links
MuckEngine.configuration.add_muck_admin_nav_item(I18n.translate('muck.admin.themes'), '/admin/theme/edit')

# Add items to the dashboard
#MuckEngine.add_muck_dashboard_item('admin/users/dashboard_widget') rescue nil

# Add css
MuckEngine.configuration.add_muck_admin_css('admin')
MuckEngine.configuration.add_muck_admin_css('folksemantic_admin')
