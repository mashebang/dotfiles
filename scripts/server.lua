local pegasus = require 'pegasus'

local server = pegasus:new({
  port='9090',
  location='./'
})

server:start(function (request, response)
  print "It's running..."
end)
