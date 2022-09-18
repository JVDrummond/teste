class MenuProductsController < ApplicationController
  before_action :set_menu_product, only: %i[ show edit update destroy ]
  before_action :set_menu_options, only: [ :new, :create, :update, :edit]
  before_action :set_products_options, only: [ :new, :create, :update, :edit]

  # GET /menu_products or /menu_products.json
  def index
    @menu_products = MenuProduct.all
  end

  # GET /menu_products/1 or /menu_products/1.json
  def show
  end

  # GET /menu_products/new
  def new
    @menu_product = MenuProduct.new
  end

  # GET /menu_products/1/edit
  def edit
  end

  # POST /menu_products or /menu_products.json
  def create
    @menu_product = MenuProduct.new(menu_product_params)

    respond_to do |format|
      if @menu_product.save
        format.html { redirect_to menu_product_url(@menu_product), notice: "Menu product was successfully created." }
        format.json { render :show, status: :created, location: @menu_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @menu_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_products/1 or /menu_products/1.json
  def update
    respond_to do |format|
      if @menu_product.update(menu_product_params)
        format.html { redirect_to menu_product_url(@menu_product), notice: "Menu product was successfully updated." }
        format.json { render :show, status: :ok, location: @menu_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @menu_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_products/1 or /menu_products/1.json
  def destroy
    @menu_product.destroy

    respond_to do |format|
      format.html { redirect_to menu_products_url, notice: "Menu product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_menu_options
       @menu_options = Menu.all.pluck(:description, :id)
    end

    def set_products_options
       @product_options = Product.all.pluck(:description, :id)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_menu_product
      @menu_product = MenuProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def menu_product_params
      params.require(:menu_product).permit(:menu_product, :menu_id, :product_id)
    end
end
