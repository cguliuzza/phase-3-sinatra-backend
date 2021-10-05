class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :gamer_tag
      t.string :bio
      t.date :creation_date
      t.string :image_url
    end
  end
end
