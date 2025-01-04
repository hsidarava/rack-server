
class App
  def call(env)
    case env['PATH_INFO']
    when "/"
      [
        200, 
        { 
          "content-type" => "text/html",
          "path-info" => env['PATH_INFO']
        },
        ["Hello, Rack"]
      ] 
    when "/contacts"
      [
        200, 
        { 
          "content-type" => "text/html",
          "path-info" => env['PATH_INFO']
        },
        ["Contacts"]
      ]
    else
      [
        400, 
        { 
          "content-type" => "text/html",
          "path-info" => env['PATH_INFO']
        },
        ["Unavaliable path"]
      ]         
    end
  end
end 

app = App.new

run app

