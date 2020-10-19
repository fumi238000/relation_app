class ApplicationController < ActionController::Base
  # ログインしていない場合、ログイン画面へリダイレクトする設定
  before_action :authenticate_user!
end
