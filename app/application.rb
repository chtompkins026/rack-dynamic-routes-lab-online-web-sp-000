class Application
 
 @@items = [] 
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
      item_n = req.path.split("/items/").last 
      if item_n.nil? 
        
      item = @@items.find{|it| it.name == item_n} 
      
      resp.write item.price 
 
    resp.finish
  end
end