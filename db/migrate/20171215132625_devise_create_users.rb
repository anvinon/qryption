class DeviseCreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci" do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :name, null: false, default: ''
      t.text :profile
      t.string :website
      t.string :image

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
