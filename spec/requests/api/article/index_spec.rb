RSpec.describe 'GET /api/articles', type: :request do
  # let!(:comment) { create(:comment, article: article1) }
  let!(:comment) { create(:comment) }
  # let!(:article1) { create(:article) }
  let!(:articles) { 3.times { create(:article, comment: comment) } }
  describe 'successfully' do
    before do
      get '/api/articles'
    end

    it 'is expected to return a 200 response' do
      expect(response).to have_http_status 200
    end

    it 'is expected to return three articles' do
      expect(response_json['articles'].count).to eq 3
    end
  end
end
