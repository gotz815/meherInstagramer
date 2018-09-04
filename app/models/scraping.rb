class Scraping
  def self.get_product(link)
    agent = Mechanize.new
    page = agent.get("https://www.udemy.com/ljfbtnot/learn/v4/content")
    image_url = page.at('.KLB4h src')[:src] if page.at('.KLB4h src')
  end
end
