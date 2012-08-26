class TranslationsController < ApplicationController
  
  def new
    @translation = Translation.new
  end

  def index
    @translations = Translation.paginate(page: params[:page])
  end
  
  def create
    @translation = Translation.new(params[:translation])
    if @translation.save
      flash[:success] = "Translation: #{@translation.locale}.#{@translation.key} -> #{@translation.value} created!"
      I18n.reload!
      redirect_to translate_path
    else
      flash[:error] = "Translation error!"
      redirect_to translate_path
    end
  end
end

