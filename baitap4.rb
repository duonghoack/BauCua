def nhapSoDuong
	begin 
		puts "Ban hay nhap mot so nguyen duong: "
		x = gets.chomp.to_i
	end while x<0
	return x
end

def timChuSoLonNhat
	x = nhapSoDuong
	if x <10
		return "Chu so lon nhat la #{x}"
	end
	n = 1
	begin
		n *= 10		
	end while n<x
	max = x / n
	n /= 10
	begin
		temp = x / n
		begin 
			temp = temp % 10
		end while temp>=10

		if temp > max
			max = temp
		end
		n /= 10
	end while n>0
	return "Chu so lon nhat la #{max}"
end

puts timChuSoLonNhat
sleep(5)