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

    def running!
      serialport.write "xf"
    end

    def warning!
      serialport.write "xbb"
    end

    def happy!
      serialport.write "xc"
    end

    def rainbow!
      serialport.write "xd"
    end

    def off!
      serialport.write "xi"
    end

  end
end
