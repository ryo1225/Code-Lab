require 'rails_helper'
RSpec.describe 'Userモデルのテスト', type: :model do


  describe 'Userバリデーションチェック' do
  	it 'nameが空欄の場合、無効になる' do
  		@user = FactoryBot.build(:user, name: '')
  		expect(@user.valid?).to eq(false)
  	end

  	it 'emailが空欄の場合、無効になる' do
  		@user = FactoryBot.build(:user, email: '')
  		expect(@user.valid?).to eq(false)
  	end

  end
end
