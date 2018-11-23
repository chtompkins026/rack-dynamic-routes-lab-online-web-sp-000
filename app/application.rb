class Application
 
 @@items = [] 
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
      item_n = req.path.split("/items/").last 
        
      item = @@items.find{|it| it.name == item_n} 
      
       if item_n.nil? 
         
      
      resp.write item.price 
 
    resp.finish
  end
end