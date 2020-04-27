require 'rails_helper'
RSpec.describe User, type: :model do

  describe 'バリデーションのテスト' do
    let(:user) { create(:user) }

    context 'nameカラム' do
      it '空欄でないこと' do
        user.name = ''
        expect(user.valid?).to eq false;
      end
      it '20文字以下であること' do
        user.name = Faker::Lorem.characters(number:21)
        expect(user.valid?).to eq false;
      end
    end
    context 'wordカラム' do
      it '200文字以下であること' do
        user.word = Faker::Lorem.characters(number:201)
        expect(user.valid?).to eq false;
      end
    end
  end
  describe 'アソシエーションのテスト' do
    context 'Labモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:labs).macro).to eq :has_many
      end
    end
    context 'Lab_commentモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:lab_comments).macro).to eq :has_many
      end
    end
    context 'Favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
    context 'Attendモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:attends).macro).to eq :has_many
      end
    end
  end

end
