class SimilarController < ApplicationController
  require 'rspotify'
  RSpotify.authenticate(ENV["spotify_client_id"], ENV["spotify_client_secret"])

  def index
    if params[:search]
      @artists = RSpotify::Artist.search(params[:search], limit: 20, offset: 0, market: nil)
    end
  end

  def search

  end
end
