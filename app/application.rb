require 'pry'

class Application
  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    binding.pry
    if req.path.match(/songs/)
      item = req.path.split(/songs/).last
      binding.pry
      if @@items.include?(item)
        resp.write "#{item.price}"
      else
        resp.write "Item is not here"
        resp.status = 400
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
