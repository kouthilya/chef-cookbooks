directory '/etc/apache2' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
