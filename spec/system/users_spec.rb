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

describe 'ユーザーのテスト' do
  let(:user) { create(:user) }
  let!(:test_user2) { create(:user) }
  before do
    visit new_user_session_path
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    click_button 'ログイン'
  end

  describe '詳細画面のテスト' do
    before do
      visit user_path(user)
    end
    context '表示の確認' do
      it 'プロフィールと表示される' do
        expect(page).to have_content('プロフィール')
      end
      it 'ユーザーの名前が表示される' do
        expect(page).to have_content(user.name)
      end
      it 'ユーザーのメールアドレスが表示される' do
        expect(page).to have_content(user.email)
      end
      it 'ユーザーの自己紹介が表示される' do
        expect(page).to have_content(user.word)
      end
      it 'ユーザー画像のリンク先が正しい' do
        expect(page).to have_link '', href: user_path(user)
      end
      it '以前のもくもく会開催と表示される' do
        expect(page).to have_content('以前のもくもく会開催')
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

    context '表示の確認' do
      before do
        visit edit_user_path(user)
      end
      it 'User編集ページと表示される' do
        expect(page).to have_content('User編集ページ')
      end
      it '名前編集フォームに自分の名前が表示される' do
        expect(page).to have_field 'user[name]', with: user.name
      end
      it '画像編集フォームが表示される' do
        expect(page).to have_field 'user[profile_image]'
      end
      it 'メールアドレス編集フォームに自分のメールアドレスが表示される' do
        expect(page).to have_field 'user[email]', with: user.email
      end
      it '自己紹介編集フォームに自分の自己紹介が表示される' do
        expect(page).to have_field 'user[word]', with: user.word
      end
      it '編集に成功する' do
        click_button '編集内容を保存する'
        expect(current_path).to eq('/users/' + user.id.to_s)
      end
      it '編集に失敗する' do
        fill_in 'user[name]', with: ''
        click_button '編集内容を保存する'
        expect(page).to have_content 'エラー'
        expect(current_path).to eq('/users/' + user.id.to_s)
      end
    end
  end
end








