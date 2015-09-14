module MethodsQuiz2

	def without_doubles(d1, d2, no_doubles)
		if no_doubles && d1 == d2
			d1 = dice_add_1(d1) 
		end
		d1 + d2
	end

	def max_maybe(n1, n2)
		if n1 == n2
			return 0
		end
		if n1 % 5 == n2 % 5
			n1 > n2 ? n2 : n1
		else
			n1 > n2 ? n1 : n2
		end
	end

	def squirrels_play?(temp, summer)
		if summer
			temp >= 60 && temp <= 100 ? true : false
		else
			temp >= 60 && temp <= 90 ? true : false
		end
	end

	def red_ticket(n1,n2,n3)
		if n1 == 2 && n1 == 2 && n3 == 2
			return 10
		elsif n1 == n2 && n2 == n3
			return 5
		elsif n1 != n2 && n1 != n3
			return 1
		else
			return 0
		end
	end

end

private
	def dice_add_1(n1)
		n1 == 6 ? n1 = 1 : n1 += 1
		return n1
	end
