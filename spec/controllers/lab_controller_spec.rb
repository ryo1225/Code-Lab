require 'rails_helper'

RSpec.describe LabsController, type: :controller do

    describe '新規投稿ページ' do
      context "新規投稿ページが正しく表示される" do
        before do
          get :new
        end
      end
    end


end