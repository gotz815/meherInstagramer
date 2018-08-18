Rails.application.routes.draw do
  root "samples#top"
  post "/result" => "samples#result"
end
