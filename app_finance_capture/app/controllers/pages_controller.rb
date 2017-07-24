class PagesController < ApplicationController
  def home
    companies = ["YHOO","AAPL","GOOG","MSFT","NIPNF"]
    @commodities = []
    companies.each do |company|
      commodity = $redis.get(company)
      if commodity
        @commodities << JSON::parse(commodity).merge(id: company)
      end
    end
  end
end
