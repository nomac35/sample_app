module StaticPagesHelper
	def title
		base_title = "Ruby on Rails Tutorial Sample App"
		if @title.nil?
			base_title
		else
			"#{@title} | #{base_title}"
		end
	end

end
