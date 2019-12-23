# frozen_string_literal: true

namespace :db do
  desc 'Run migrations'
  task :migrate, [:version] do |_t, args|
    require 'sequel/core'
    require 'logger'
    Sequel.extension :migration
    version = args[:version].to_i if args[:version]
    logger = Logger.new($stderr)
    Sequel.connect(ENV.fetch('DATABASE_URL'), logger: logger) do |db|
      Sequel::Migrator.run(db, 'db/migrations', target: version)
    end
  end
end
