require 'rack'

app = Proc.new do |env|
  req = Rack::Request.new(env)
  path = req.path
  res = Rack::Response.new
  res['Content-Type'] = "text/html"
  # res.write("Hello world!")
  res.write(path + "xoxo")
  
  res.finish
end

Rack::Server.start({
  app: app,
  Port: 3000
})