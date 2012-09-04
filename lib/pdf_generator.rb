require 'prawn'

class PdfGenerator
	def create_pdf(parameters)
		pdf = Prawn::Document.new

		pdf.table(collect_data_into_array(parameters), :header => true)

		pdf.render
	end

	def collect_data_into_array(parameters)
		data = [["Unit", "Source", "Expression", "Description"]]

		parameters.each do |p|
      detail = p.parameter_detail
			data += [[detail.unit, detail.source, detail.expression, detail.description]]
		end

		data
	end
end