class LandingController < ApplicationController
  def index
    @user= User.new 
    @NewUser= params
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @landing }
    end
    #@post = Page.find(4);   
  end

  def new
  	
  end
end
