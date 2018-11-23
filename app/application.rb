class Application
 
 @@items = [] 
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
      item_n = req.path.split("/items/").last 
      item = @@items.find{|it| it.name == item_n} 
      
      resp.write item.price 
    else 
      resp.write "Route not found"
      resp.status = 404 
    end 
 
    resp.finish
  end
end