module Squinty
  class Light

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

  end
end
