require_relative './config_loader'

class Service < ConfigLoader

  def id
    @id ||= title.gsub /\W/, ''
  end

end
