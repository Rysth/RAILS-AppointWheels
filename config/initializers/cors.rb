Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'  # Add your frontend URL
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      expose: [:Authorization]
  end
end