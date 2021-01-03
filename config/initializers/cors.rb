Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins "http://locahost:3000"
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end

    # ALLOW YOUR FRONTEND TO BE DEFINED HERE
    allow do
        origins "http://locahost:3001"
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end
end