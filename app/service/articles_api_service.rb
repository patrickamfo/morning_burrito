require "json"
require "rest-client"

class ArticleApiService
  def self.fetch_data
    response = RestClient.get "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=239716d63e1e4a0d960b95e89cb342df"
    return JSON.parse(response)
  end
end
