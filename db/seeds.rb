require 'httparty'


10.times do |k| 
	response = HTTParty.get("http://api.randomuser.me/")
	puts response
	code = Random.rand(6000)
	name = response.parsed_response['results'][0]['name']['first']

	user = User.create!(name: name, code: code)
	puts "nome de usuario: #{user.name}, code #{user.code}"

end
