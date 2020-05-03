require 'rails_helper'

describe 'ユーザー認証のテスト' do
  describe 'ユーザー新規登録' do

    before do
      visit new_user_registration_path
    end
    context '新規登録画面に遷移' do
      it '新規登録に成功する' do
        fill_in 'user[name]', with: Faker::Internet.username(specifier: 5)
        fill_in 'user[email]', with: Faker::Internet.email
        fill_in 'user[password]', with: 'password'
        fill_in 'user[password_confirmation]', with: 'password'
        click_button '新規登録'
      end
      it '新規登録に失敗する' do
        fill_in 'user[name]', with: ''
        fill_in 'user[email]', with: ''
        fill_in 'user[password]', with: ''
        fill_in 'user[password_confirmation]', with: ''
        click_button '新規登録'
      end
    end
  end
end

  describe 'ユーザーログイン' do
    let(:user) { create(:user) }
    before do
      visit new_user_session_path
    end
    context 'ログイン画面に遷移' do
      let(:test_user) { user }
      it 'ログインに成功する' do
        fill_in 'user[email]', with: test_user.email
        fill_in 'user[password]', with: test_user.password
        click_button 'ログイン'
      end
      it 'ログインに失敗する' do
        fill_in 'user[email]', with: ''
        fill_in 'user[password]', with: ''
        click_button 'ログイン'
        expect(current_path).to eq(new_user_session_path)
      end
    end
  end

  describe '編集のテスト' do
    context '自分の編集画面への遷移' do
      it '遷移できる' do
        visit edit_user_path(user)
        expect(current_path).to eq('/users/' + user.id.to_s + '/edit')
      end
    end
    context '他人の編集画面への遷移' do
      it '遷移できない' do
        visit edit_user_path(test_user2)
        expect(current_path).to eq('/users/' + user.id.to_s)
      end
    end
  end
