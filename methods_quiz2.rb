module MethodsQuiz2

	def without_doubles(d1, d2, no_doubles)
		if !no_doubles
			sum = d1 + d2
		elsif no_doubles
			if d1 == d2
				sum = dice_add_1(d1) + d2
			end
		end
		return sum
	end

end

private
	def dice_add_1(n1)
		if n1 == 6
			n1 = 1
		else
			n1 += 1
		end
		return n1
	end
