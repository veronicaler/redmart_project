class ReviewsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  # def index
  #   @reviews = Review.all
  # end
  #
  # # GET /products/1
  # # GET /products/1.json
  # def show
  # end
  #
  # # GET /products/new
  # def new
  #   @review = Review.new
  # end
  #
  # # GET /products/1/edit
  # def edit
  # end

  # POST /products
  # POST /products.json
  def create
    @review = current_user.reviews.build(review_params)
    if @review.save
      flash[:success] = "review created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  # def update
  #   respond_to do |format|
  #     if @review.update(review_params)
  #       format.html { redirect_to @review, notice: 'Review was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @review }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @review.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:review_content)
    end
  end
