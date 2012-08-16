class ActiveRecord::Base
  def human_readable_name
    self.class.name.underscore.humanize.downcase
  end
end
