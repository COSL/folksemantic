# Add admin links
# MuckEngine.add_muck_admin_nav_item(I18n.translate('muck.admin.themes'), '/admin/theme/edit', '/images/admin/theme.gif')
MuckEngine.add_muck_admin_nav_item(I18n.translate('muck.admin.themes'), '/admin/theme/edit')

# Add items to the dashboard
#MuckEngine.add_muck_dashboard_item('admin/users/dashboard_widget') rescue nil

# Add css
MuckEngine.add_muck_admin_css('folksemantic_admin')