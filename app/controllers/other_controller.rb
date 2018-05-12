class OtherController < ApplicationController
	def test_action
		@testvar = params[:testvari]
	end
end
