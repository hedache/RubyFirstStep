class PhotosController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @photos = Photo.all
    end

    def show
        @photo = Photo.find( params[:id] )

        # render json: @photo
        respond_to do |format|
            format.html { render :show }
            format.json { render json: @photo }

        end


    end

    def new
        # render "nueva_vista" #views/photos/nueva_vista.html nueva_vista.html.erb
        # render "carpeta/nueva_vista" #views/carpeta/photos/nueva_vista.html nueva_vista.html.erb
    end

    # /photos/:id/edit
    def edit
        @id = params[:id]
    end

    # PUT/PATCH /photos/:id
    def update
        photo = Photo.find( params[:id] )

        # photo.title = params[:photo][:title]
        # photo.image_url = params[:photo][:image_url]
        # filtered_params = params.require(:photo).permit(:title, :image_url)

        # photo.save
        photo.update(photo_params)

        # redirect_to photo, status: :moved_permanently
        redirect_to photo
    end

    def create
        photo = Photo.new(photo_params)

        # photo.title = params[:photo][:title]
        # photo.image_url = params[:photo][:image_url]
        # params.permit(:email, password)
        # filtered_params = params.fecth(photo: {}).permit(:title, :image_url)
        # filtered_params = params.require(:photo).permit(:title, :image_url)

        # @photo = Photo.new(filtered_params)
        photo.save

        # redirect_to "/photos/#{photo.id}"
        # redirect_to photo
        respond_to do |format|
            format.html { redirect_to "/photos" }
            format.json { render json: @photo, status: :created }

        end
    end


    # DELETE /photos/:id
    def destroy
        photo = Photo.find( params[:id] )
        photo.destroy

        # redirect_to "/photos"
        respond_to do |format|
            format.html { redirect_to "/photos" }
            format.json { head 200 }

        end
    end

    private
        def photo_params
            filtered_params = params.require(:photo).permit(:title, :image_url)
        end



end
