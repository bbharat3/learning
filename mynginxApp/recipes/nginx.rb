execute 'update_apt' do
  command 'apt-get update'
  action :run
end

apt_package 'nginx' do
  action :install
end

template '/usr/share/nginx/html/' do
  source 'index.html.erb'
  action :create
end

template '/etc/nginx/sites-enabled/default' do
  source 'default.erb'
  action :create
end

service 'nginx' do
  action :start
end
