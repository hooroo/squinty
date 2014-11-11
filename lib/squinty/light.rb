require 'blinkee/colors'

module Squinty
  class Light

    SERIAL_PORT = "/dev/ttyAMA0"
    BAUD_RATE   = 115200

    def initialize
    end

    def success!
      serialport.write "xbg"
    end

    def failure!
      serialport.write "xbr"
    end

    def building!
      serialport.write "xb"
    end

    def warning!
      serialport.write "xbb"
    end

    def off!
      serialport.write "xi"
    end

    private

    attr_reader :serialport

    def serialport
      @serialport ||= Serial.new SERIAL_PORT, BAUD_RATE
    end

  end
end
