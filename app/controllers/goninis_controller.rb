class GoninisController < ApplicationController
  def landing
  	require 'mailchimp' # Use the 'mailchimp' gem instead
  	#@post = Page.find(4); Extrae contenido html 
  	
  	#@users = User.create(params)
  	#api = Mailchimp::API.new("3d4e4db74d95a9dd51e98f2a16c34ff2-us7", timeout: 60)
  	#api.timeout = 5
  	#@lists = api.lists({:start => 0, :limit=> 100})["data"]
  #	@response = api.listSubscribe(id: "00fdd8a64a", email_address:"gonzalo@semantic.mx", :merge_vars => {:EMAIL=>"", :FNAME => "Gonzalo", :LNAME => "JP Vargas", :CP=>12125}) 
  	 if params[:EMAIL]
  	 	@nombre = params[:FNAME]
  	 	api = Mailchimp::API.new("3d4e4db74d95a9dd51e98f2a16c34ff2-us7", timeout: 60)
  	 	api.timeout = 5
  	 	@response = api.listSubscribe(id: "00fdd8a64a", email_address: params[:EMAIL], :merge_vars => {:EMAIL=>params[:EMAIL], :CP=> params[:CP]}) 
      end
  end
  def new
  	@nombre = params[:FNAME]
  end
end
