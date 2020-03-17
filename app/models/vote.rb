class Vote < ApplicationRecord
  belongs_to :account_
  belongs_to :post

  validate_uniqueness_of
end
