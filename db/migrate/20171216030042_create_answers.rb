class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers, options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci" do |t|
      t.references :user, null: false, index: true
      t.references :question, null: false, index: true
      t.text :body, null: false

      t.timestamps
    end
  end
end
