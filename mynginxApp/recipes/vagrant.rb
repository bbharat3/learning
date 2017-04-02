require 'chef/provisioning/vagrant_driver'
with_driver 'vagrant'

options = {
  vagrant_config: "config.vm.provider \"virtualbox\" do |vb|\n  vb.memory = 1024\nend\n",
  vagrant_options: {
    'vm.box' => 'ubuntu/trusty64',
    'vm.network' => [
        ':private_network, {ip: "192.168.33.120"}'

      ]
  }
}


machine 'mymachine' do
  machine_options options
  converge true

  run_list ['mynginxApp::nginx']

end
