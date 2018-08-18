class Scraping
  def self.get_product(link)
    agent = Mechanize.new
    page = agent.get(link)
    image_url = page.at('.entry-content img')[:src] if page.at('.entry-content img')
    open_date = page.at('.date span').inner_text if page.at('.date span')

    image_url = image_url
    product.save
  end
end
