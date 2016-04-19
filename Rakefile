# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
require 'rdoc/task'
require 'rdoc/rdoc'

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = "public/doc"
  rdoc.rdoc_files.include 'app/models/restaurant.rb'
  rdoc.rdoc_files.include 'app/models/user.rb'
  rdoc.rdoc_files.include 'app/controllers/users_controller.rb'
  rdoc.rdoc_files.include 'app/controllers/restaurants_controller.rb'
  rdoc.rdoc_files.include 'app/uploaders/logo_uploader.rb'
end