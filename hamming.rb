class Hamming
	def self.compute(a, b)
		distance = 0
		a_comp = a.split('')
		b_comp = b.split('')

		a_comp.each do |letter|
			index_of_letter = a_comp.index(letter)
			if !letter.eql? b_comp[index_of_letter]
				distance += 1
			end
		end

		return distance
	end
end