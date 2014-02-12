
class PullerController < ApplicationController
	SYNC_SCRIPT = "./update.sh"
	def pull
		p params
		scriptPath = Rails.root.join(SYNC_SCRIPT)
		p 'Script: ' + scriptPath.to_s
		begin
	    	p Bundler.clean_exec(scriptPath.to_s)
	    rescue => ex
	    	p ex
	    end
		head 200
	end
end
