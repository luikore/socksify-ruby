module Socksify
  class << self
    RED    = "\e[1m\e[31m"
    GREEN  = "\e[1m\e[32m"
    YELLOW = "\e[1m\e[33m"
    RESET  = "\e[0m\e[37m"

    attr_accessor :debug

    def debug_debug str
      ouput GREEN, str
    end

    def debug_notice str
      ouput YELLOW, str
    end

    def debug_error str
      ouput RED, str
    end

    private

    def ouput color, str
      if debug
        puts "#{color}#{now_s}#{RESET} #{str}"
      end
    end

    def now_s
      Time.now.strftime('%H:%M:%S')
    end
  end
end
