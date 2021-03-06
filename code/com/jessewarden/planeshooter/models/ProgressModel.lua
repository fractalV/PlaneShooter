 require "com.jessewarden.planeshooter.services.UserProgressService"
require "com.jessewarden.planeshooter.vo.UserProgressVO"

ProgressModel = {}

function ProgressModel:new()

	local model = {}
	model.classType = "ProgressModel"
	model.currentLevel = nil

	function model:saveProgress(levelFileName, score, weaponsConfig)
		local vo = UserProgressVO:new()
		vo.levelFileName = levelFileName
		vo.score = score
		vo.weaponsConfig = weaponsConfig

		local service = UserProgressService:new()
		service:save(vo)
	end

	function model:loadProgress()
		local service = UserProgressService:new()
		local vo = service:read()
		if vo ~= nil then
			Runtime:dispatchEvent({name="ProgressModel_loadProgress", target=self, vo=vo})
		end
	end

	return model

end

return ProgressModel