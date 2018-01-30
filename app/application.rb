class application
  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack.request.new(env)

    if req.path.match(/songs/)
      item = req.path.split(/songs/).last
      if @@items.include?(item)
        resp.write "#{item.price}"
      else
        resp.write "Item is not here"
        resp.status = 400

    else
      resp.write "Route not found"
      resp.status = 404

    req.finish
  end
end
