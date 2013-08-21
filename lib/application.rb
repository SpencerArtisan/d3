class Application
  def links
    @links ||= []
  end

  def add_link link
    links << link
  end
end
