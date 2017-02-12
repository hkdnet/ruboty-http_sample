require 'sinatra/base'

module Ruboty::HttpSample
  class App < Sinatra::Base
    get '/' do
      "Hello, world"
    end
  end
end
