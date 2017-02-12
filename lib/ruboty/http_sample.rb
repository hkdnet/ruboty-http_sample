require "ruboty/http_sample/version"
require 'ruboty/http_sample/app'

fork do
  puts "forked"
  Ruboty::HttpSample::App.run!(bind: '0.0.0.0', port: ENV['PORT'])
end
