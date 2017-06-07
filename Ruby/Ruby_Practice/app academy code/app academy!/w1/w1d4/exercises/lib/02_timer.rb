class Timer
  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

# hr = 0
# min = 0
# sec = 0
#
#     def hours
#       if seconds >= 3600
#         seconds / 3600
#       end
#     end
#
#     def minutes
#       if seconds >= 60
#         min = seconds / 60
#       end
#       if min % 60 == 0
#         min = 0
#       end
#     end
#
#     def secs
#       sec = 0
#       sec = seconds % 60
#     end
def hours
   (seconds / 3600)
 end

 def minutes
   (seconds % 3600) / 60)
 end

 def secs
   (seconds % 60))
 end

    def formatter(x)
      if x > 10
        "#{x}"
      else
        "0#{x}"
      end
    end

  def time_string
  formatter(hours) + ":" + formatter(minutes) + ":" + formatter(secs)
  end

end
