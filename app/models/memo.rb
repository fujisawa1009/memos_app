class Memo < ApplicationRecord
  # contentカラムのバリデーションを設定する
  # presence: true - 空に出来ない
  # lenght: {maximum: 1000} - 長さは最大1000文字
  validates :content, presence: true, length: {maximum: 1000}

  # titleカラムのバリデーションを設定する
  # lenght: {maximum: 50} - 長さは最大50文字
  validates :title, length: {maximum: 50}

end
