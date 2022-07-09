class CreateRecips < ActiveRecord::Migration[6.1]
  def change
    create_table :recips do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :body, null: false
      t.string :recip_image,

      t.timestamps
    end
  end
end
