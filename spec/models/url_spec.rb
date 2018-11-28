describe Url do
	it '#can shorten its url' do
		g = Url.create(url: "http://google.com")
		expect(g.shorten).to eq("http://localhost:9393/#{g.encode_id}")
		g.destroy
	end
end