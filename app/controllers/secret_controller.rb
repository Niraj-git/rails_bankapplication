class SecretController < ApplicationController
	http_basic_authenticate_with :name => "niraj", :password => "password"
	def index
	end
	end 
end
