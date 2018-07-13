class AddPriceMinAndPriceMaxToTastings < ActiveRecord::Migration[5.2]
  def change
    add_monetize :tastings, :price_min, currency: { present: false }
    add_monetize :tastings, :price_max, currency: { present: false }
  end
end
