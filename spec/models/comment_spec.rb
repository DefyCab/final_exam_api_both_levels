RSpec.describe Comment, type: :model do
  describe 'Database table' do
    it { is_expected.to have_db_column :body }
  end

  desribe 'Validations' do
    it { is_expected.to validate_presence_of :body }
  end

  describe 'Factory' do
    it 'is expected to have a valid Factory' do
      expect(create(:comment)).to be_valid
    end
  end
end
