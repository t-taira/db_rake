require "rake_db/version"

module RakeDb
  require "rake_db/railtie" if defined?(Rails)
end
