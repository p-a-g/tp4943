class Translation < ActiveRecord::Base
  attr_accessible :locale, :key, :value
end
