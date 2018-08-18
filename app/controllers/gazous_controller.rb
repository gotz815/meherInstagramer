class GazousController < ApplicationController
  def top
    link = params[:image_url]
    image = Scraping.get_product(link)
    require "google/cloud/vision"
    project_id = "meter-213702"
    # Instantiates a client
    vision = Google::Cloud::Vision.new project: project_id
    # The name of the image file to annotate
    file_name = image
    @@res = vision.image(file_name).labels
  end

  def result
    @@res.each do |label|
      puts label.inspect
    end
  end
end
