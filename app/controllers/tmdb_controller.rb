class TmdbController < ApplicationController
  skip_before_action :authenticate_user!

  def movie
    searchMovie =
    HTTParty.get("https://api.themoviedb.org/3/search/movie", {
      query: { query: "#{params[:movie]}", api_key: ENV["TMDB_API_KEY"] },
      headers: { "Accept" => "application/json" }
    }).parsed_response

    p searchMovie


    render json: searchMovie, status: :ok
  end
end

# {params[:movie]}
