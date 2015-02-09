# encoding: utf-8
deal = Random.new(1214)

i = 0
deck = 52

array_suit 		= 	["spade","dia","heart","club"]#スーツ
array_number	= 	["1","2","3","4","5","6","7","8","9","10","J","Q","K"]#数字
array_card		= 	[[1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1]]

array_my_hands 	= [nil,nil,nil,nil,nil]	#自分の手札
array_cpu_hands	= [nil,nil,nil,nil,nil] #相手の手札

puts "\n" + "**********カードを配ります**********"
while(i < 5)
	
	dealnum 	= rand(14.1)
	#p dealnum
	dealsuit	= rand(4)
	#p dealsuit
	if array_card[dealsuit,dealnum] == 0 then
		redo
	else
		deck = deck -1
		array_my_hands[i] = array_suit[dealsuit]
		array_cpu_hands[i] = array_number[dealnum - 1]
		array_card[dealsuit,dealnum] = 0
	end
	i = i + 1
	
end

i = i - 1

puts "1st deal"
puts "" 
while(i > -1) 
	print "[" + array_my_hands[i].to_s + "-" + array_cpu_hands[i].to_s + "]"
	i = i - 1
end

