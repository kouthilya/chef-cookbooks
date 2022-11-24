cookbook_file '/var/www/customers/public_html/index.php' do
  source 'index.php'
  owner 'web_admin'
  group 'web_admin'
  mode '0755'
  action :create
end
