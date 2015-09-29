# @author Tim Padjen <tpadjen@gmail.com>
class NumberSummary
	
	class << self

		def summarize(filename)
			array1 = []
			array = []
		 	file = File.open(filename, "r")
			file.each_line do |line|
				array1 = line.split(',')
			end
			array = array1.collect {|x| x.to_f}			
			return array
		end

		def max(array)
			return array.max 
		end
		
		def min(array)
			return array.min
		end
		
		def mean(array)
			sum = 0
			array.each do |n| (sum += n)
			end
			(sum / array.length).round(1)

		end

		def median(array)
			array.sort!
			if array.length % 2 == 0
				total = array.length / 2 
				((array[total] + array[total - 1]) / 2.0).round(1)
			elsif array.length % 2 != 0
				total = array.length / 2
				(array[total]).round(1)
			end
		end

		def mode(array)
			array.count
		end
	end

end