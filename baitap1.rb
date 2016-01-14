def nhap(matrix,dong,cot)
	puts "Nhap so dong cua ma tran:"
	dong = gets.chomp.to_i
	puts "Nhap so cot cua ma tran:"
	cot = gets.chomp.to_i
	(0..dong-1).each do |i|
		(0..cot-1).each do |j|
			puts "Nhap matrix[#{i}][#{j}] = "
			matrix[i][j] = gets.chomp.to_i
		end	
	end
	return [matrix,dong,cot]
end
def xuat(matrix,dong,cot)
	puts "Mang vua nhap la:"
	(0..dong-1).each do |i|
		(0..cot-1).each do |j|
			print matrix[i][j]
			print "\t"
		end
		print "\n"
	end
end
def timmax(matrix,dong,cot)
	max = matrix[0][0]
	r = 0
	c = 0
	(0..dong-1).each do |i|
		(0..cot-1).each do |j|
			if(max < matrix[i][j])
				max = matrix[i][j]
				r = i
				c = j
			end
		end
	end
	return [max,r,c]
end
def sumleft(matrix,dong,cot)
	sum = 0
	(0..dong-1).each do |i|
		sum += matrix[i][0]
	end
	return sum
end
def SapXep(matrix,dong,cot)
	(0..(dong*cot - 1)).each do |i|
		(i+1..(dong*cot)-1).each do |j|
			if(matrix[i/dong][i%dong] > matrix[j/dong][j%dong])
				temp = matrix[i/dong][i%dong]
				matrix[i/dong][i%dong]=matrix[j/dong][j%dong]
				matrix[j/dong][j%dong]=temp
			end
		end
	end
	return matrix
end
#main
matrix = Array.new(10) { Array.new(10) }
dong = 0
cot = 0
matrix,dong,cot =  nhap(matrix,dong,cot)
xuat(matrix,dong,cot)
max = 0
r = 0
c = 0
max,r,c = timmax(matrix,dong,cot)
puts "Max co gia tri #{max} tai dong #{r} cot #{c}"
puts "Tong cac phan tu ben trai la: #{sumleft(matrix,dong,cot)}"
puts "Ma tran sau khi sap xep:"
matrix = SapXep(matrix,dong,cot)
xuat(matrix,dong,cot)
sleep(4)