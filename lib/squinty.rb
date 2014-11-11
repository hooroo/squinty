require "rubyserial"
require "squinty/version"
require "squinty/light"

module Squinty

  class Squinty

    def initialize
    end

    def light
      @light ||= begin
        Light.new
      end
    end

  end

end
