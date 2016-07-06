class CreateVents < ActiveRecord::Migration
  def change
    create_table :vents do |t|
      t.string :title
      t.references :user
      t.text :vent_text

      t.timestamps null: false
    end
  end
end
