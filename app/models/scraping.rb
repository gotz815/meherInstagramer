class Scraping
  def self.get_product(link)
    agent = Mechanize.new
    page = agent.get(link)
    image_url = page.at('.entry-content img')[:src] if page.at('.KLB4h src')
  end
end
