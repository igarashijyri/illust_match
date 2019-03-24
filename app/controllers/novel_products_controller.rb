class NovelProductsController < ApplicationController
  before_action :set_novel_product, only: [:show, :edit, :update, :destroy]

  # GET /novel_products
  # GET /novel_products.json
  def index
    @novel_products = NovelProduct.all
  end

  # GET /novel_products/1
  # GET /novel_products/1.json
  def show
  end

  # GET /novel_products/new
  def new
    @novel_product = NovelProduct.new
  end

  # GET /novel_products/1/edit
  def edit
  end

  # POST /novel_products
  # POST /novel_products.json
  def create
    @novel_product = NovelProduct.new(novel_product_params)

    respond_to do |format|
      if @novel_product.save
        format.html { redirect_to @novel_product, notice: 'Novel product was successfully created.' }
        format.json { render :show, status: :created, location: @novel_product }
      else
        format.html { render :new }
        format.json { render json: @novel_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /novel_products/1
  # PATCH/PUT /novel_products/1.json
  def update
    respond_to do |format|
      if @novel_product.update(novel_product_params)
        format.html { redirect_to @novel_product, notice: 'Novel product was successfully updated.' }
        format.json { render :show, status: :ok, location: @novel_product }
      else
        format.html { render :edit }
        format.json { render json: @novel_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novel_products/1
  # DELETE /novel_products/1.json
  def destroy
    @novel_product.destroy
    respond_to do |format|
      format.html { redirect_to novel_products_url, notice: 'Novel product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novel_product
      @novel_product = NovelProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novel_product_params
      params.require(:novel_product).permit(:user_id)
      # params.fetch(:novel_product, {})
    end
end
