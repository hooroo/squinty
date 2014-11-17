require "rubyserial"
require "squinty/version"
require "squinty/light"

module Squinty

  def self.new
    Squinty.new
  end

  class Squinty

    SERIAL_PORT = "/dev/ttyAMA0"
    BAUD_RATE   = 115200

    def initialize
    end

    def light
      @light ||= begin
        Light.new serialport
      end
    end

    private

    attr_reader :serialport

    def serialport
      begin
        @serialport ||= Serial.new SERIAL_PORT, BAUD_RATE
      rescue RubySerial::Exception => e
        raise "No such serial port"
      end
    end


  end

end
