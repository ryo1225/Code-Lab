require 'rails_helper'

describe '投稿のテスト' do
  let(:user) { create(:user) }
  let(:lab) { create(:lab, user: user) }
  let(:lab2) { create(:lab, user: user2) }

  before do
    visit new_user_session_path
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    click_button 'ログイン'
  end

  describe 'Lab新規登録のテスト' do
    before do
      visit new_lab_path
    end
    context '表示の確認' do
      it 'もくもく会新規投稿と表示される' do
        expect(page).to have_content 'もくもく会新規投稿'
      end
      it 'titleフォームが表示される' do
        expect(page).to have_field 'lab[title]'
      end
      it 'introductionフォームが表示される' do
        expect(page).to have_field 'lab[introduction]'
      end
      it 'monthフォームが表示される' do
        expect(page).to have_field 'lab[month]'
      end
      it 'dayフォームが表示される' do
        expect(page).to have_field 'lab[day]'
      end
      it 'timeフォームが表示される' do
        expect(page).to have_field 'lab[time]'
      end
      it 'regionフォームが表示される' do
        expect(page).to have_field 'lab[region]'
      end
      it 'placeフォームが表示される' do
        expect(page).to have_field 'lab[place]'
      end
      it 'languageフォームが表示される' do
        expect(page).to have_field 'lab[language]'
      end
      it 'priceフォームが表示される' do
        expect(page).to have_field 'lab[price]'
      end
      it 'peopleフォームが表示される' do
        expect(page).to have_field 'lab[people]'
      end
      it 'imageフォームが表示される' do
        expect(page).to have_field 'lab[image]'
      end
      it '投稿ボタンが表示される' do
        expect(page).to have_button '投稿'
      end
      it '投稿に成功する' do
        fill_in 'lab[title]', with: Faker::Lorem.characters(number:20)
        click_button '投稿'
      end
      it '投稿に失敗する' do
        click_button '投稿'
        expect(page).to have_content 'エラー'
        expect(current_path).to eq('/labs')
      end
    end
  end



end
    