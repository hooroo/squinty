require 'blinkee/colors'

module Squinty
  class Light

    SERIAL_PORT = "/dev/ttyAMA0"
    BAUD_RATE   = 115200

    def initialize
    end

    def success!
      serialport.write "xgg"
    end

    def failure!
      serialport.write "xgg"
    end

    def building!
      serialport.write "xgg"
    end

    def warning!
      serialport.write "xgg"
    end

    def off!
      serialport.write "xgg"
    end

    private

    attr_reader :serialport

    def serialport
      @serialport ||= Serial.new SERIAL_PORT, BAUD_RATE
    end

  end
end
