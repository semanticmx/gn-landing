class GoninisController < ApplicationController
  def landing
    require 'mailchimp' # Use the 'mailchimp' gem instead
    if params[:EMAIL]
      @nombre = params[:FNAME]
      api = Mailchimp::API.new("b87d563704fc829d31e7bc41eb1da621-us6", timeout: 5)
      @response = api.listSubscribe(id: "a859092f9d", email_address: params[:EMAIL], :merge_vars => {:EMAIL=>params[:EMAIL], :ZIPCODE=> params[:CP]}) 
      puts @response
    end
  end
  
  def nosotros
  end
  def como
  end
  def porque
  end
  def porque_handy
  end
  def porque_usuario
  end
  def registrate
  end
  def conviertete
  end
  def seguridad
  end
  def politicas
  end
end
