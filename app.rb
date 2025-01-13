require 'rack'

class App
  def call(env)
    req = Rack::Request.new(env)
    case req.path
    when "/" 
      response = Rack::Response.new(["Hello, Rack"], 200, {"content-type" => "text/html"})
    when "/contacts"
      response = Rack::Response.new(["Contacts"], 200, {"content-type" => "text/html"})
    else
      response = Rack::Response.new(["Unavaliable path"], 400, {"content-type" => "text/html"})      
    end
    response.finish   
  end
end 