module ApplicationHelper

	def flash_class(type)
		case type
				when :alert ,"alert-error"
				when :notice, "alert-warning"
				when :success, "alert-success"
				when :info , "alert-info"

				else " "
		end

	end			


end