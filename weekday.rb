#date = 14

#month = 'may'

#year = '2011'
puts "Input date in this format april, 1, 2011"
str = gets.chomp

month, date, year = str.split(',')

month = month.strip
date = date.strip
year = year.strip

#puts 'Date please'
#date = gets.chomp

#puts "Month please"
#month = gets.chomp

#puts "Year please"
#year = gets.chomp

century_number = year.slice(0,2)
puts 'Century number is: ' + century_number

century = 2*(3-(century_number.to_i%4))
puts 'Century is:' + century.to_s

last_two = year.slice(2,2)
puts 'Last two of the year ' + last_two.to_s

last_two_value = last_two.to_i / 4
puts 'Last two divided by 4 ' + last_two_value.to_s

def is_leapyear year
 if year%4 == 0
 	return true
 else
 	return false
 end
end

months_table = 
{
	"january" => is_leapyear(year) ? 6 : 0,
	"february" => is_leapyear(year) ? 2 : 3,
	"march" => 3,
	"april" => 6,
	"may" => 1,
	"june" => 4,
	"july" => 6,
	"august" => 2,
	"September" => 5,
	"october" => 0,
	"november" => 3,
	"december" => 5
}

month_value = months_table[month.downcase]
puts 'Month value is ' + month_value.to_s

total = century.to_i + last_two.to_i + last_two_value.to_i + month_value.to_i + date.to_i
puts 'Total is ' + total.to_s

day_value = total.to_i%7
puts 'Day value is ' + day_value.to_s

days_table = 
{
	"sunday" => 0,
	"monday" => 1,
	"tueday" => 2,
	"wednesday" => 3,
	"thursday" => 4,
	"friday" => 5,
	"saturday" => 6
}

days_table = 
{
	0 => "sunday",
	1 => "monday",
	2 => "tueday",
	3 => "wednesday",
	4 => "thursday",
	5 => "friday",
	6 => "saturday"
}

day = days_table[day_value]
puts 'And your day issssss ' + day.to_s