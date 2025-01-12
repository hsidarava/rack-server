require 'rack'


class App
  def call(env)
    req = Rack::Request.new(env)
    case req.path
    when "/" 
      response = Rack::Response.new(["Hello, Rack"], 200, {"content-type" => "text/html"})
      return response
    when "/contacts"
      [
        200, 
        { 
          "content-type" => "text/html"
        },
        ["Contacts"]
      ]
    else
      [
        400, 
        { 
          "content-type" => "text/html"
        },
        ["Unavaliable path"]
      ]         
    end
  end
end 

app = App.new

run app

