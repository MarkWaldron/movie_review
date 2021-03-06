Rails.application.configure do
  config.cache_classes = true

  config.eager_load = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_files = true

  config.assets.js_compressor = :uglifier
  config.assets.compile = true

  config.assets.digest = true

  config.log_level = :info

  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new

  config.active_record.dump_schema_after_migration = false

  #AWS S3 Paperclip Settings

  config.paperclip_defaults = {
    :storage => :s3,
    :s3_credentials => {
      :bucket => ENV['S3_BUCKET'],
      :access_key_id => ENV['S3_ID'],
      :secret_access_key => ENV['S3_SECRET']
    }
  }
end
