class StagingModel < ActiveRecord::Base

	def self.get_matches(fac_id)
		models_array = []
		staging_models = StagingModel.where(:facility_id => fac_id)
		staging_models.each do |model|
			model_attr = [[model.model_name], [model.manufacturer_name], [model.vendor_name]]
			matches = BmetModel.where("model_name = ?", model.model_name)
			hasMatch = false
			matches.each do |match|
				if match.manufacturer_name == model.manufacturer_name and match.vendor_name == model.vendor_name and match.facility_id = fac_id
					hasMatch = true
				end
			end
			if hasMatch
				model_attr.each do |x|
					x.push('unchanged')
				end
			else
				model_attr.each do |x|
					x.push('changed')
				end
			end
			models_array.push(model_attr)
		end
		return models_array
	end

end