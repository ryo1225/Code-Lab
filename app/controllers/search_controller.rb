class SearchController < ApplicationController

 before_action :authenticate_user!
	def search
  		@content = params["search"]["content"]
    	@model = params["search"]["model"]
    	@labs = Lab.match(@model, @content)
  	end

end
