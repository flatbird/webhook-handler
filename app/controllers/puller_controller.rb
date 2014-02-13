
class PullerController < ApplicationController
	SYNC_SCRIPT = "./update.sh"
	def pull
		p params
		scriptPath = Rails.root.join(SYNC_SCRIPT)
		p 'Script: ' + scriptPath.to_s
		result = Bundler.clean_system(scriptPath.to_s)
		render :text => "Done", :status => 200
	end
end
