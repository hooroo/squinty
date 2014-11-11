require "rubyserial"
require "squinty/version"
require "squinty/light"

module Squinty

  def self.new
    Squinty.new
  end

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
