# Be sure to restart your server when you modify this file.

ActiveScaffold.set_defaults do |config| 
  config.ignore_columns.add [:created_at, :updated_at, :lock_version]
end
