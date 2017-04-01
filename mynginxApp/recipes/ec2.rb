require 'chef/provisioning/aws_driver'
with_driver "aws::#{node['mynginxApp']['region']}"

m = machine 'test' do
  add_machine_options bootstrap_options: { :key_name => 'myawskey',
  :instance_type => "#{node['mynginxApp']['instance_type']}",
  :image_id  => "#{node['mynginxApp']['image']}",
  :associate_public_ip_address => true,
  :subnet => "subnet-b47e9afc"
 }
 action :ready
end
