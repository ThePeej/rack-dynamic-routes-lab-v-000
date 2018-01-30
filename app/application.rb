class application
  @@items = []
  
  def call(env)
    resp = Rack::Response.new
    req = Rack.request.new(env)

    if req.path.match(/songs/)
      item = req.path.split(/songs/).last


    else
      resp.write "Route not found"
      resp.status = 404

    req.finish
  end
end
