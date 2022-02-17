RSpec.describe 'POST /api/comments', type: :request do
  let!(:comment) { create(:comment) }
  subject { response }
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
      expect(@comment).to_not eq nil
    end

    it 'is expected to have saved the comment in the database' do
      expect(@comment.body).to eq 'I really liked this!'
    end
  end
#   describe 'unsuccessfully' do
#     describe 'comment contains a empty body' do
#       before do
#         post '/api/comments', params: {
#           comment: {
#             body: ''
#           }
#         }
#       end
#     end
#     it 'is expected to return an error message' do
#       expect(response_json['message']).to eq "Comment body can't be blank"
#     end
#   end
end
