require 'sinatra/activerecord/rake'
require './application'

namespace :db do
  desc 'Load the seed data from db/seeds.rb'
  task :seed do
    seed_file = 'db/seeds.rb'
    puts "Seeding database from: #{seed_file}"
    load(seed_file) if File.exist?(seed_file)
  end
end
