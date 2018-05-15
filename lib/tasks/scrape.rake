namespace :weekly_functions do
  desc "Scrapes from Amazon every Monday"
  task fetch_amazon_products: :environment do
    results = `python #{Rails.root}/app/services/amazon_scrapper.py`
  end
end
