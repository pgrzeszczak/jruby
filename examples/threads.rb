require 'java'

class MyThread < java.lang.Thread
  def initialize(number)
    super()
    @number = number
  end

  def run
    100.times { |it|
      puts "Thread #{@number} - iteration #{it}"
    }
  end
end

thread1 = MyThread.new 1
thread2 = MyThread.new 2
thread3 = MyThread.new 3

thread1.start
thread2.start
thread3.start

thread1.join
thread2.join
thread3.join