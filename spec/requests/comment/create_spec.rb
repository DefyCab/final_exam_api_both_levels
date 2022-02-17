RSpec.describe 'POST /api/comments', type: :reequest do
  let!(:comment) { create(:comment) }
  describe 'succesfully' do
    before do
      post '/api/comments', params: {
        comment: {
          body: 'I really liked this!'
        }
      }
      @comment = Comment.last
    end

    it 'is expected to return a 201 response' do
      expect(response).to have_http_status :created
    end

    it 'is expected to create a instance of a Comment' do
      expect(@comment).to_not eq niL
    end

    it 'is expected to have saved the comment in the database' do
      expect(@comment.body).to eq 'I really liked this!'
    end
    it 'is expected to return a success message' do
      expect(response_json['message']).to eq 'Your comment has been submitted!'
    end
  end
  describe 'unsuccessfully' do
  end
end
