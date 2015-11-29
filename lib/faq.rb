require_relative './config_loader'

class Faq < ConfigLoader

  def id
    @id ||= question.gsub /\W/, ''
  end

end
