class PagesController < ApplicationController
  skip_before_filter :authenticate

  rescue_from ActionView::MissingTemplate, :with => :invalid_page

  def show
    render params[:id]
  end

  def invalid_page
    redirect_to root_path
  end

end
