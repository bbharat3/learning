#
# Cookbook Name:: mynginxApp
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
require 'chef/provisioning/aws_driver'
with_driver "aws::#{node['mynginxApp']['region']}"

################ Create VPC #####################

aws_vpc "#{node['mynginxApp']['vpc']}" do
    cidr_block "#{node['mynginxApp']['cidr']}"
end

############### Create Subnet ###################

aws_subnet "#{node['mynginxApp']['subnet']}" do
  vpc "#{node['mynginxApp']['vpc']}"
  availability_zone "#{node['mynginxApp']['az']}"
  cidr_block "#{node['mynginxApp']['sub_cidr']}"
end


########### Create Security Group ###############

aws_security_group "#{node['mynginxApp']['sg']}" do
  vpc "#{node['mynginxApp']['vpc']}"
  inbound_rules '0.0.0.0/32'=> [ 22 , 80 ]

end

include_recipe 'mynginxApp::ec2'
