class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [ :seller, :new, :create, :update, :destroy]
  before_action :check_user, only: [:edit, :update, :destroy]
  # GET /listings
  # GET /listings.json
  def seller 
    @listings = Listing.where(user: current_user).order("created_at DESC")
  end


  def index
   
    search_term = params[:search]
  
      if search_term.blank?
          @listings = Listing.all
      else
          @listings = Listing.where("upper(name) LIKE ?", "%#{search_term.upcase}%")
      end
      # @listings = Listing.all.order("created_at DESC")
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
  end

  # GET /listings/new
  def new
    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(
      name: listing_params[:name],
      description: listing_params[:description],
      price: listing_params[:price],
      )
    @listing.image.attach(listing_params[:image])
    @listing.user_id = current_user.id
    @listing.address = Address.new(country: listing_params[:country], name: "n/a", address: "n/a")

    respond_to do |format|
      if @listing.save && @listing.address.save
        format.html { redirect_to listing_path(@listing.id), notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to listing_path(@listing.id), notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:name, :description, :price, :image, :country)
    end
    
    def check_user
      if current_user != @listing.user
        redirect_to root_url, alert: "sorry, this listing belongs to someone else"

      end
    end


  end
