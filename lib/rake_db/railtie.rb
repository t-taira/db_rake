require 'rails'

module RakeDb
  class Railtie < Rails::Railtie
    railtie_name :rake_db

    rake_tasks do
      load 'tasks/db.rake'
    end
  end
end