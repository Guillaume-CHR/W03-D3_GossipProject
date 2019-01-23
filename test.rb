def test
  id=[]
  10.times do
  	id << (id[-1] + 1).to_s.rjust(10,'0')
  	instance_variable_set("#{(id[-1] + 1).to_s.rjust(10,'0')}", :)
  	instance_variable_get("@#{variable_name}")
  	id[-1] = "Hello"
  	puts 
  end

end

test