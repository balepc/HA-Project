#$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
#require 'rvm/capistrano'
#set :rvm_ruby_string, 'ree'
#set :rvm_type, :system

set :default_environment, {
  'PATH' => "/usr/local/rvm/rubies/ree-1.8.7-2011.03/bin:/usr/local/rvm/gems/ree-1.8.7-2011.03/bin:/usr/local/rvm/bin:$PATH",
  'RUBY_VERSION' => 'ree',
  'GEM_HOME'     => '/usr/local/rvm/gems/ree-1.8.7-2011.03',
  'GEM_PATH'     => '/usr/local/rvm/gems/ree-1.8.7-2011.03:/usr/local/rvm/gems/ree-1.8.7-2011.03@global',
  'BUNDLE_PATH'  => '/usr/local/rvm/gems/ree-1.8.7-2011.03'  # If you are using bundler.
}

default_run_options[:pty] = true

set :ssh_options, {
  :forward_agent => true,
  :keys => ["/home/valery/projects/director/keys/fry.pem"],
  :auth_methods => "publickey"
}

set :rails_env, "production"

set :deploy_to, "/app/ha-project"





role :app,          "deploy@ec2-50-19-190-27.compute-1.amazonaws.com"  # Ha Proxy
role :app,          "deploy@ec2-50-16-170-184.compute-1.amazonaws.com" # Load Balancer


set :deploy_via, :remote_cache

set :application, "ha-project"

set :scm, :git
set :repository,  "git@github.com:balepc/HA-Project.git"

set :user, 'deploy'

namespace :deploy do

  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"    
  end

end