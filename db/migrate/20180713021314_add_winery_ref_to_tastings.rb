class AddWineryRefToTastings < ActiveRecord::Migration[5.2]
  def change
    add_reference :tastings, :winery, foreign_key: true
  end
end
