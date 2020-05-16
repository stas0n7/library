class BookDecorator < Draper::Decorator
  delegate_all

  def authors_names
    authors.map(&:name).join(', ')
  end

end
