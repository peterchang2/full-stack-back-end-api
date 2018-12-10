class ImagesController < ProtectedController
  before_action :set_image, only: %i[show update destroy]
  # after_action :set_access_control_headers
  # def set_access_control_headers
  #   headers['Access-Control-Allow-Origin'] = '*'
  #   headers['Access-Control-Request-Method'] = '*'
  # end
  # GET /images
  def index
    @images = current_user.images

    render json: @images
  end

  # GET /images/1
  def show
    render json: @image
  end

  # POST /images
  def create
    @image = current_user.images.build(image_params)

    if @image.save
      render json: @image, status: :created, location: @image
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /images/1
  def update
    if @image.update(image_params)
      render json: @image
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /images/1
  def destroy
    @image.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_image
    @image = current_user.images.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def image_params
    params.require(:image).permit(:date, :caption, :url, :user_id)
  end
end
