class HelloModel
  def message(locale = :en)
    case locale
      when :tl then "Mabuhay"
      else "Hello world"
    end
  end
end


model = HelloModel.new
puts model.message(:tl)