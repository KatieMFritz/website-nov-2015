require 'yaml'

class ConfigLoader

  # -----
  # Class
  # -----

  class << self
    def all
      YAML::load_file(
        File.join(__dir__, "../config/#{self.name.downcase}s.yml")
      ).map do |hash|
        self.new hash
      end
    end
  end

  # --------
  # Instance
  # --------

  def initialize hash
    hash.each do |key, value|
      instance_variable_set "@#{key}", value
      self.class.class_eval { attr_reader key.to_sym }
    end
  end

end
