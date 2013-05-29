class GoninisController < ApplicationController
  def landing
  	@post = Page.find(4);
  end
end
