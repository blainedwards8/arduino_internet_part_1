require 'serialport'
require 'redis'

port = "/dev/ttyACM0"

sp = SerialPort.new(port)
sp.read_timeout = 1000
redis = Redis.new

loop do
	sleep(5)
	sp.write('a')
	temp = sp.read.chomp
	puts "This is working: #{Time.now}"
	redis.set("temp", temp)
end


