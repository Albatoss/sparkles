Sentry.init do |config|
  config.dsn = Rails.application.credentials.sentry_dsn
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # Capture and report all errors.
  config.traces_sample_rate = 1.0
end
