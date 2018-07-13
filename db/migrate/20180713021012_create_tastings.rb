class CreateTastings < ActiveRecord::Migration[5.2]
  def change
    create_table :tastings do |t|
      t.string :name
      t.boolean :reservation_required?
      t.boolean :is_private?

      t.timestamps
    end
  end
end
