class CreateMemos < ActiveRecord::Migration[6.1]
  def change
    # memosテーブルを作成する
    create_table :memos do |t|
      # Text型のcontentカラムを作成する
      t.text :content, null: false

      # created_at(作成日時)、updated_at(更新日時)のカラムを作成する(デフォルト)
      t.timestamps
    end
  end
end
