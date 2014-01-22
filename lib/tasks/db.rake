namespace :db do
  desc "Dump tables in db specified by config/database.yml"
  task :dump => :environment do

    db_config = Rails.configuration.database_configuration
    user = db_config[Rails.env]['username']
    password = db_config[Rails.env]['password']
    host = db_config[Rails.env]['host']
    database = db_config[Rails.env]['database']

    filename = "dump-#{database}-#{Time.now.strftime('%Y-%m-%d')}.sql"

    command = 'mysqldump'
    command += ' --add-drop-table'
    command += " -u #{user}"
    command += " -p#{password}" unless password.blank?
    command += " #{database}"
    command += " > #{filename}"

    sh command

    puts 'done.'
  end
end