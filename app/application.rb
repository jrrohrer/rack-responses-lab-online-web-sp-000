class Application
  
  def call
    resp = Rack::Response.new 
    
    if Time.now < 12
      resp.write "Good morning!"
    else if Time.now >= 12
      resp.write "Good afternoon!"
    end
    
    resp.finish
  end
    
end