class ShowController < ApplicationController
  unloadable
  # 認証
  before_action :global_authorize
  #
  # インデックス
  #
  def index
    # 全ユーザーを取得する
    all_users = User.where(type: "User").where(status: 1)
    # 名前を配列に入れる
    @names = []
    all_users.each do |user|
      @names << user.firstname + user.lastname
    end
  end
  #
  # ログインユーザーを取得する
  #
  def set_user
    @current_user ||= User.current
  end
  #
  # ログインユーザーでなければエラー
  #
  def global_authorize
    set_user
    render_403 unless @current_user.type == 'User'
  end
end