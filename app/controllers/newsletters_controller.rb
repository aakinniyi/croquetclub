class NewslettersController < ApplicationController

before_filter :authenticate_admin_user!, :only=> [:edit, :new, :destroy]

  def index
  	@newsletters = Newsletter.all.order("newsdate DESC")
  end

end
