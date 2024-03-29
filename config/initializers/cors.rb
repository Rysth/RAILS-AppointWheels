Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'origins 'https://appointwheels.onrender.com', 'https://appoint-wheels.onrender.com'
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head], 
      credentials: true,
      expose: [:Authorization]
  end
end