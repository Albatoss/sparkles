Sentry.init do |config|
  config.dsn = Rails.application.credentials.sentry_dsn
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # Don't use Sentry for performance monitoring; stick to errors.
  config.traces_sample_rate = 0
end
