def NhapTen(ten)
	ten = ""
	puts "Hay nhap ten ban: "
	ten = gets.chomp
	return ten
end

def NhapDiem()
	diem = 0
	puts "So diem ma ban muon la:"
	diem = gets.chomp.to_i
	return diem
end

def DatCuoc()
	diem = NhapDiem()
	diembd = diem
	arr = [0,0,0,0,0,0]
	begin
		puts "Ban muon dat bao nhieu mat <toi da la 6>:"
	    somat = gets.chomp.to_i		
	end while somat <=0 || somat >6
	puts "1:BAU\n2:CUA\n3:TOM\n4:CA\n5:GA\n6:COP"
	(1..somat).each do |i|
		begin
			if(diem == 0)
				return arr
			end
			puts "Ban muon dat mat thu may."
			mat = gets.chomp.to_i
			mat -= 1
			puts "Nhap so tien mat thu #{i} ban dat."
			temp = gets.chomp.to_i
		end while temp<=0 ||  diem<temp || mat<0 || mat>5
		diem = diem - temp
		arr[mat] = temp
	end
	return [arr,diem,diembd]
end

def TungXucXac()
	xucxac = []
	(0..2).each do |i|
		xucxac[i] = rand(0..5)
		sleep(0.25)
		case xucxac[i]
		when 0
			puts "Xuc xac thu #{i+1} la BAU"
		when 1
			puts "Xuc xac thu #{i+1} la CUA"
		when 2
			puts "Xuc xac thu #{i+1} la TOM"
		when 3
			puts "Xuc xac thu #{i+1} la CA"
		when 4
			puts "Xuc xac thu #{i+1} la GA"
		when 5
			puts "Xuc xac thu #{i+1} la COP"
		end
	end
	return xucxac
end

def TinhDiem()
	ten = NhapTen(ten)
	arr = []
	arr,diem,diembd = DatCuoc()
	xucxac = []
	xucxac = TungXucXac()
	for i in xucxac
		(0..arr.length-1).each do |j|
			if xucxac[i] == j
				diem += arr[j]*2
			end
		end
	end
	if diembd-diem < 0
		puts "Nguoi choi #{ten} da thang duoc #{diem - diembd}"
	else
		puts "Nguoi choi #{ten} da thua #{diembd - diem}"
	end
	return 0
end
def main()
	ykien = 1
	begin
		TinhDiem()
		puts "De ket thuc bam 0"
		ykien = gets.chomp.to_i
	end while ykien != 0
end
main()
puts "Cam on ban da ung ho."
sleep(3)
