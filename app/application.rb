class application

  def call(env)
    resp = Rack::Response.new
    req = Rack.request.new(env)

    

    req.finish
  end
end
