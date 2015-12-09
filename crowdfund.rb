def project_status(project,funding=0)
"#{project.upcase.center(20,"~")} has $#{funding} in funding."
end

project1 = "Project ABC"
project2 = "Project LMN"
project3 = "Project XYZ"

puts project_status("Project ABC", 23000)
puts project_status("Project LMN")
puts project_status("Project XYZ", 2000)