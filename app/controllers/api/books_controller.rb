class Api::BooksController < ApplicationController

  def index

    render 'index.json.jbuilder'
  end
end
