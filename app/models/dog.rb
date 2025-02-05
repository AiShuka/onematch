class Dog < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :breed
  belongs_to :user
  has_one_attached :image  # 👈 画像を保存できるようにする！

  validates :name, :breed, :birthdate, :gender, presence: true
  validates :gender, inclusion: { in: %w(オス メス) }
  validates :breed_id, presence: true

  # 年齢を計算するメソッド（〇歳〇ヶ月で表示）
  def age
    return if birthdate.nil?
    
    today = Date.today
    years = today.year - birthdate.year
    years -= 1 if today < birthdate + years.years  # 誕生日がまだ来ていなければ1歳引く

    months = today.month - birthdate.month
    months -= 1 if today.day < birthdate.day  # 誕生日の「日」がまだ来てなければ1ヶ月引く
    months += 12 if months.negative?  # マイナスの月数を補正

    if years == 0
      "#{months}ヶ月"  # 0歳なら「〇ヶ月」
    else
      "#{years}歳#{months}ヶ月"  # 1歳以上なら「〇歳〇ヶ月」
    end
  end
end
