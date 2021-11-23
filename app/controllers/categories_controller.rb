class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])

    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: "Successfully Deleted." }
    end
  end

  def create
    @category = Category.new(category_params)

    respond_to do |f|
      if @category.save
        f.html {redirect_to @category, notice: "Successfully created"}
      else
        f.html (render :new)
      end
    end
  end

  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: "Successfully updated." }
      else
        format.html { render :edit}
      end
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
