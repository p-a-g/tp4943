class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
  before_filter :set_locale
 
  private
    def set_locale
      I18n.locale = 'de'
    end
end

