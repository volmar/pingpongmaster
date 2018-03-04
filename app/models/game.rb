class game < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with Valid
end
