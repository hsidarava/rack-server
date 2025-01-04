
class App
  def call(env)
    case env['PATH_INFO']
    when "/"
      [
        200, 
        { 
          "content-type" => "text/html"
        },
        ["Hello, Rack"]
      ] 
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

