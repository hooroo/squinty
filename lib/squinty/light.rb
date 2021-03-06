module Squinty
  class Light

    attr_reader :serialport

    def initialize serialport
      @serialport = serialport
    end

    def success!
      serialport.write "xbg"
    end

    def failure!
      serialport.write "xbr"
    end

    def running!
      serialport.write "s01e#7F4000t50"
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
