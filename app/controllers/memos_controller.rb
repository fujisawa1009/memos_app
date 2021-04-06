class MemosController < ApplicationController
  def index
    # すべてのメモを取得する
    @memos = Memo.all
  end

  def show
    # :idのメモを取得する
    memo_id = params[:id]
    @memo = Memo.find(memo_id)
  end

  def new
    # 空のメモを作成する
    @memo = Memo.new
  end

  def create
    # 受け入れるパラメータを定義
    # requireにはモデル名、permitにはカラム名
    memo_param = params.require(:memo).permit(:content, :title)
    # メモの中身を埋めて作成
    @memo = Memo.new(memo_param)
    # セーブする(データベースに書き込む)
    if @memo.save
      # 成功した場合はメモ一覧にリダイレクト
      redirect_to(@memo)
    else
      # エラーが発生した場合はnew(フォーム)を再表示する
      render :new
    end
  end
end
