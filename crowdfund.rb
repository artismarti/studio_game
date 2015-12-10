class Project

	def initialize(name, start_amount=0, target_amount=5000)
		@name = name.upcase
		@start_amount = start_amount
		@target_amount = target_amount
	end

	def to_s
		"Project #{@name} has $#{@start_amount} in funding towards a goal of $#{@target_amount}."
	end

	def add_funds
		@start_amount += 25
		"Project #{@name} got more funds!"
	end

	def remove_funds
		@start_amount -= 15
		"Project #{@name} lost some funds!"
	end

end

project1 = Project.new("lmn", 500, 3000)
project2 = Project.new("xyz", 25, 75)

puts project1
puts project2
puts project1.remove_funds
puts project2.add_funds
puts project1
puts project2
