# Basic認証
user:admein_one
password:1111

## Usersテーブル (ユーザー情報)

| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |


### Association
- has_many :dogs
- has_many :chat_messages

---

## Dogsテーブル (犬情報)

| Column        | Type        | Options                         |
|---------------|-------------|---------------------------------|
| name          | string      | null: false                     |
| breed         | string      | null: false                     |
| age           | integer     | null: false                     |
| gender        | string      | null: false                     |
| user          | references  | null: false, foreign_key: true  |

### Association
- belongs_to :user

---

## ChatRoomsテーブル (チャットルーム)

| Column    | Type       | Options       |
|-----------|------------|---------------|
| name      | string     | null: false   |

### Association
- has_many :chat_messages

---

## ChatMessagesテーブル (チャットメッセージ)

| Column        | Type       | Options                          |
|---------------|------------|----------------------------------|
| content       | string     | null: false                     |
| user          | references | null: false, foreign_key: true  |
| chat_room     | references | null: false, foreign_key: true  |

### Association
- belongs_to :user
- belongs_to :chat_room

