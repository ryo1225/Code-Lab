require 'rails_helper'
RSpec.describe Lab, type: :model do

  describe 'バリデーションのテスト' do
    let(:user) { create(:user) }
    let!(:lab) { build(:lab, user_id: user.id) }

    context 'titleカラム' do
      it '空欄でないこと' do
        lab.title = ''
        expect(lab.valid?).to eq false;
      end
      it '20文字以下であること' do
        lab.title = Faker::Lorem.characters(number:21)
        expect(lab.valid?).to eq false;
      end
    end
    context 'introductionカラム' do
      it '空欄でないこと' do
        lab.introduction = ''
        expect(lab.valid?).to eq false;
      end
    end
    context 'monthカラム' do
    	it '空欄でないこと' do
    	  lab.month = ''
    	  expect(lab.valid?).to eq false;
    	end
    end
    context 'dayカラム' do
    	it '空欄でないこと' do
    	  lab.day = ''
    	  expect(lab.valid?).to eq false;
    	end
    end
    context 'timeカラム' do
    	it '空欄でないこと' do
    	  lab.time = ''
    	  expect(lab.valid?).to eq false;
    	end
    end
    context 'regionカラム' do
    	it '空欄でないこと' do
    	  lab.region = ''
    	  expect(lab.valid?).to eq false;
    	end
    end
    context 'placeカラム' do
    	it '空欄でないこと' do
    	  lab.place = ''
    	  expect(lab.valid?).to eq false;
    	end
    end
    context 'languageカラム' do
    	it '空欄でないこと' do
    	  lab.language = ''
    	  expect(lab.valid?).to eq false;
    	end
    end
    context 'priceカラム' do
    	it '空欄でないこと' do
    	  lab.price = ''
    	  expect(lab.valid?).to eq false;
    	end
    end
    context 'peopleカラム' do
    	it '空欄でないこと' do
    	  lab.people = ''
    	  expect(lab.valid?).to eq false;
    	end
    end
  end
  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Lab.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
    context 'Lab_commentとの関係' do
      it '1:Nとなっている' do
        expect(Lab.reflect_on_association(:lab_comments).macro).to eq :has_many
      end
    end
    context 'Favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(Lab.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
    context 'Attendモデルとの関係' do
      it '1:Nとなっている' do
        expect(Lab.reflect_on_association(:attends).macro).to eq :has_many
      end
    end
  end

end
