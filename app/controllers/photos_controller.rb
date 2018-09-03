class PhotosController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @photo = Photo.all
    end
    
    def new
        @photo = Photo.new

        
    end

    def show
        @photo = Photo.find(params[:id])
    end
        

    def create
        @photo = Photo.create(photo_params)
        redirect_to photos_path
      end

    end
      
    private
      
      def photo_params
        params.require(:photo).permit(:title, :description, :image)
      end
    
