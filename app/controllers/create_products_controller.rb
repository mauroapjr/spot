class CreateProductsController < ApplicationController
  before_action :set_create_product, only: %i[ show edit update destroy ]

  # GET /create_products or /create_products.json
  def index
    @create_products = CreateProduct.all
  end

  # GET /create_products/1 or /create_products/1.json
  def show
  end

  # GET /create_products/new
  def new
    @create_product = CreateProduct.new
  end

  # GET /create_products/1/edit
  def edit
  end

  # POST /create_products or /create_products.json
  def create
    @create_product = CreateProduct.new(create_product_params)

    respond_to do |format|
      if @create_product.save
        format.html { redirect_to create_product_url(@create_product), notice: "Create product was successfully created." }
        format.json { render :show, status: :created, location: @create_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @create_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_products/1 or /create_products/1.json
  def update
    respond_to do |format|
      if @create_product.update(create_product_params)
        format.html { redirect_to create_product_url(@create_product), notice: "Create product was successfully updated." }
        format.json { render :show, status: :ok, location: @create_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @create_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_products/1 or /create_products/1.json
  def destroy
    @create_product.destroy

    respond_to do |format|
      format.html { redirect_to create_products_url, notice: "Create product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_product
      @create_product = CreateProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_product_params
      params.require(:create_product).permit(:label, :description, :image, :quantity, :price)
    end
end
