def nhapSoThuc
	puts "Hay nhap vao mot so thuc: "
	x = gets.chomp.to_i
	return x
end

def demSoAm
	dem = 0
	x = 0
	begin
		x = nhapSoThuc
		if x<0
			dem += 1
		end
	end while x != 0
	return dem
end

puts "Chuong trinh nhap va dem so thuc am.Ket thuc bang viec nhap so 0."
puts "Co tong cong #{demSoAm} so thuc am."
def irb
	puts "Chuong trinh nhap va dem so thuc am.Ket thuc bang viec nhap so 0."
	puts "Co tong cong #{demSoAm} so thuc am."
end

sleep(5)
