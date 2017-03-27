# This file is used by Rack-based servers to start the application.

require 'rack'
class App
  def call(env)
    puts env
    [200,
     {"Content-Type" => "text/html"},
     ["<body><h1>WWW</h1>Hello World</body>"]
    ]
  end
end
run App.new


require 'rack'
 class HelloRack
    def call(env)
    path = Dir.pwd + env["REQUEST_PATH"]
    if File.exist?(path)
       [200, {"Content-Type" => "text/html"}, [IO.read(path)]]
    else
       [404, {"Content-Type" => "text/html"}, ['Unknown File']]
      end
    end
  end
  run HelloRack.new
