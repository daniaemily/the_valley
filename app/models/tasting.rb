class Tasting < ApplicationRecord
  belongs_to :winery

  monetize :price_min_cents
  monetize :price_max_cents
end
