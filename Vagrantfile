Vagrant::Config.run do |config|
  config.vm.box = "lucid64"
  config.vm.forward_port('http', 3000, 3000)
  config.vm.share_folder('v-rails_app', '/rails_app', 'rails_app')
  config.vm.provision :puppet, :module_path => 'modules'
end
