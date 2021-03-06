default['mynginxApp']['vpc'] = 'default'
default['mynginxApp']['cidr'] = '172.31.0.0/16'
default['mynginxApp']['region'] = 'us-east-1'
default['mynginxApp']['sub_cidr'] = '172.31.16.0/20'
default['mynginxApp']['az'] = 'us-east-1a'
default['mynginxApp']['subnet'] = 'default'
default['mynginxApp']['image'] = 'ami-f4cc1de2'
default['mynginxApp']['instance_type'] = 't2.micro'
default['mynginxApp']['sg'] = 'my-sg'


default['mynginxApp']['proxy_server'] = 'http://localhost:8080'
default['mynginxApp']['context_proxy'] = 'test'
