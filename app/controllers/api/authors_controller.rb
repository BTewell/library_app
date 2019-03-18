class Api::AuthorsController < ApplicationController
  def index
    @authors = Author.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @author = Author.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @author = Author.new(
      name: params[:name],
      bio: params[:bio],
      genre_id: params[:genre_id], 
      )
    @author.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @author = Author.find_by(id: the_id)
    @author.name = params[:name] || @author.name
    @author.bio = params[:bio] || @author.bio
    @author.genre_id = params[:genre_id] || @author.genre_id
    @author.save
    render 'show.json.jbuilder'
  end

  def destroy
    the_id = params[:id]
    @author = Author.find_by(id: the_id)
    @author.destroy
    render 'destroy.json.jbuilder'

  end
end
