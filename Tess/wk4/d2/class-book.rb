class Book

  attr_accessor :empty_pages, :full_pages

  def initialize (empty_pages)
    @empty_pages = empty_pages
    @full_pages = 0
  end

  def write_page (number_of_pages)
    if number_of_pages <= @empty_pages
    @empty_pages -= number_of_pages
    @full_pages += number_of_pages
    else
    puts "I don't have room for that"
  end
end

  def report
    "I have #{@full_pages} pages with #{@empty_pages} remaining"
  end

end
