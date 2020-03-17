class Vote < ApplicationRecord
  belongs_to :account
  belongs_to :post

  validate_uniqueness_of
end
