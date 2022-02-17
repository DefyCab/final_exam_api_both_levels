RSpec.describe 'GET /api/articles', type: :request do
  let!(:comment) { create(:comment) }
  let!(:articles) { 3.times { create(:article, comment_id: comment.id) } }
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

    it 'is expected to return a comment with article' do
      expect(response_json['articles'].first['comment_id']).to_not eq nil
    end
  end
end
