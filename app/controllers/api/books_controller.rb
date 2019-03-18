class Api::BooksController < ApplicationController

  def index
    @books = Book.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @book = Book.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @book = Book.new(
      title:  params[:title],
      description: params[:description],
      image: params[:image], 
      author_id: params[:author_id],
      genre_id: params[:genre_id]
      )
    @book.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @book = Book.find_by(id: the_id)
    @book.title = params[:title] || @book.title
    @book.description = params[:description] || @book.description
    @book.image = params[:image] || @book.image
    @book.author_id = params[:author_id] || @book.author_id
    @book.genre_id = params[:genre_id] || @book.genre_id

    @book.save
    render 'show.json.jbuilder'
  end

  def destroy
    the_id = params[:id]
    @book = Book.find_by(id: the_id)
    @book.destroy
    render 'destroy.json.jbuilder'

  end
end
