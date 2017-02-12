module Ruboty
  module Handlers
    class HttpSample < Base
      def initialize(robot)
        super
        start
      end

      def start
        Thread.new do
          Ruboty::HttpSample::App.run!(host: '0.0.0.0')
        end
      end
    end
  end
end
