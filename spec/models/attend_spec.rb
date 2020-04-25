require 'rails_helper'

RSpec.describe Attend, type: :model do
	let(:attend) { create(:attend) }

  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Attend.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
    context 'Labモデルとの関係' do
      it 'N:1となっている' do
        expect(Attend.reflect_on_association(:lab).macro).to eq :belongs_to
      end
    end
  end

end
