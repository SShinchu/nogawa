class PhotosController < ApplicationController
    def index
      @photos = Photo.all
    end

    def new
      @photo =Photo.new
    end

    def create
      photo = Photo.new(photo_params)
      if photo.save
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
    end

    def show
      @photo=Photo.find(params[:id])
    end

    def edit
      @photo=Photo.find(params[:id])
    end

    def update
      photo=Photo.find(params[:id])
      if photo.update(photo_params)
          redirect_to :action =>"show",:id =>photo.id
      else
          redirect_to :action => "new"
      end
    end

    def destroy
      photo=Photo.find(params[:id])
      photo.destroy
      redirect_to action: :index
    end

   


    private
    def photo_params
       params.require(:photo).permit(:comment, :image) 
    end

end
