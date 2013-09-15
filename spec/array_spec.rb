require_relative '../lib/array'

describe Array do

	it 'should return Fuck this shit when invoked!' do
		a = Array.new
		expect(a.inspector).to eq "fuck this shit, it's sunday"
	end

end
