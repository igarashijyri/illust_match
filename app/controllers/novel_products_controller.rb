class NovelProductsController < ApplicationController
  before_action :set_novel_product, only: [:show, :edit, :update, :destroy]

  def index
    @novel_products = NovelProduct.all
  end

  def show
    @user = current_user[:id]
  end

  def new
    @novel_product = NovelProduct.new
  end

  def edit
  end

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

  def destroy
    @novel_product.destroy
    respond_to do |format|
      format.html { redirect_to novel_products_url, notice: 'Novel product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_novel_product
      @novel_product = NovelProduct.find(params[:id])
    end

    def novel_product_params
      params.require(:novel_product).permit(:user_id)
      # params.fetch(:novel_product, {})
    end
end
