# class ArticleApiService
#   def self.fetch_data
#     require "json"
#     require "rest-client"

#     response = RestClient.get "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=239716d63e1e4a0d960b95e89cb342df"
#     repos = JSON.parse(response)
#   end
# end
