Sentry.init do |config|
  config.dsn = 'https://49e59664c83a44e182d065d3609f7a9f@o1363332.ingest.sentry.io/6655811'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # Set traces_sample_rate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production.
  config.traces_sample_rate = 1.0
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end