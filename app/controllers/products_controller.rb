class ProductsController < AuthenticationController

  skip_before_filter :verify_authenticity_token

  # /products Get all products
  def index
    product = Product.all
    if product
      render status: :ok, json: product
    else
      render status: :unprocessable_entity, json: product.errors
    end
  end

  # POST /products/ Create product
  def create
    product = Product.new(product_params)
    if product.save
      render status: :created, json: {message: 'Producto creado satisfactoriamente'}
    else
      render status: :unprocessable_entity, json: {Errors: product.errors}

    end
  end

  # GET /products/params Get a product
  def show
    product = Product.find(params[:id])
    if product
      render status: :ok, json: product
    end
  end

  # PUT /products/params Update a product
  def update
     product = Product.find(params[:id])
    if product.update(product_params)
      render status: :ok, json: {message: 'Producto actualizado con exito'}
    end
  end

  #DELETE /products/params Delete a product
  def destroy
    product = Product.find(params[:id])
    if product.destroy
    render status: :ok , json: {message: 'Producto eliminado'}
    end
  end


  private
  # Strong params
  def product_params
    params.require(:product).permit(:name, :description, :price, :state)
  end

end
