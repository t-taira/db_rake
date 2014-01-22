namespace :db do
  desc "Dump tables in db specified by config/database.yml"
  task :dump => :environment do
    puts 'hello'
  end
end