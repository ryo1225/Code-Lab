require 'rails_helper'

RSpec.describe Favorite, type: :model do
    let(:favorite) { create(:favorite) }

  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Favorite.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
    context 'Labモデルとの関係' do
      it 'N:1となっている' do
        expect(Favorite.reflect_on_association(:lab).macro).to eq :belongs_to
      end
    end
  end

end
