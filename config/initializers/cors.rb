Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # 1. This tells Rails to trust your Vnews React frontend running locally
    origins "http://localhost:3000" 

    # 2. This allows React to access all API routes and use standard requests
    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end