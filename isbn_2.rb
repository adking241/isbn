def check_ISBN10?(isbn)  
  return false  if isbn.size != 10 or isbn !~ /\d{9}(\d|X)/  
  sum = isbn[0..-2].split("").each_with_index.map{|c,i|(10-i)*c.to_i}.inject(:+)  
  check_digit = (11 - sum % 11) % 11  
  isbn[-1] == "0123456789X"[check_digit]  
end  
  
ok = %w(031234161X 0525949488 076360013X 0671027360 0803612079  
        0307263118 0684856093 0767916565 0071392319 1400032806 0765305240)  
ok.each do |isbn|  
  puts "#{isbn} is #{check_ISBN10?(isbn)}"  
end  
puts  
bad = %w(0312341613 052594948X 0763600138 0671027364 080361207X 0307263110  
         0684856092 0767916567 0071392318 1400032801 0765305241 031234161  
         076530Y241 068485609Y)  
bad.each do |isbn|  
  puts "#{isbn} is #{check_ISBN10?(isbn)}"  
end  