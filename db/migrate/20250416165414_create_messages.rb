class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.string :from_name, null: false
      t.string :from_email, null: false
      t.string :to_email, null: false
      t.string :subject, null: false
      t.text :body
      t.datetime :read_at

      t.timestamps
    end
  end
end
