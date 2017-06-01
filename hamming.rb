class Hamming
	def self.compute(a, b)
		raise ArgumentError unless a.length == b.length
		distance = 0
		index_of_letter = 0
		a_comp = a.split('')
		b_comp = b.split('')
		a_comp.each do |letter|
			if !letter.eql? b_comp[index_of_letter]
				distance += 1
			end
			index_of_letter += 1
		end

		return distance
	end
end

module BookKeeping
	VERSION = 3
end