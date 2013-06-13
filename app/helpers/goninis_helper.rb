module GoninisHelper
  def is_success?(response)
    if response==true
      true
    else
      false
    end
  end

  def is_number?(n)
    if n=~ /^\d+$/
      true
    else
      false
    end
  end
end
