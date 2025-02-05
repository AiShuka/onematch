class Breed < ActiveHash::Base
  self.data = [
    { id: 1, name: "チワワ" },
    { id: 2, name: "トイプードル" },
    { id: 3, name: "柴犬" },
    { id: 4, name: "ダックスフンド" },
    { id: 5, name: "ゴールデン・レトリバー" },
    { id: 6, name: "ポメラニアン" },
    { id: 7, name: "ミニチュア・シュナウザー" },
    { id: 8, name: "ミックス犬" },
    { id: 9, name: "その他" }
  ]

  include ActiveHash::Associations
  has_many :dogs
end
