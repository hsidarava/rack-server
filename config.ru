
class App
  def call(env)
  [
    200, 
    {"content-type" => "text/html"},
    ["Hello, Rack"]
  ]
  end
end 

app = App.new

run app

