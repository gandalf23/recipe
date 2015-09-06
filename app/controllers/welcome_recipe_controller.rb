class WelcomeRecipeController < ApplicationController

  before_action :set_welcome_recipe, only: [:show, :edit, :update, :destroy]

  # GET /welcome_recipe
  # GET /welcome_recipe.json
  def index
    @welcome_recipe = welcome_recipe.all
  end

  # GET /welcome_recipe/1
  # GET /welcome_recipe/1.json
  def show
  end

  # GET /welcome_recipe/new
  def new
    @welcome_recipe = welcome_recipe.new
  end

  # GET /welcome_recipe/1/edit
  def edit
  end

  # POST /welcome_recipe
  # POST /welcome_recipe.json
  def create
    @welcome_recipe = welcome_recipe.new(welcome_recipe_params)

    respond_to do |format|
      if @welcome_recipe.save
        format.html { redirect_to @welcome_recipe, notice: 'welcome_recipe was successfully created.' }
        format.json { render :show, status: :created, location: @welcome_recipe }
      else
        format.html { render :new }
        format.json { render json: @welcome_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /welcome_recipe/1
  # PATCH/PUT /welcome_recipe/1.json
  def update
    respond_to do |format|
      if @welcome_recipe.update(welcome_recipe_params)
        format.html { redirect_to @welcome_recipe, notice: 'welcome_recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @welcome_recipe }
      else
        format.html { render :edit }
        format.json { render json: @welcome_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /welcome_recipe/1
  # DELETE /welcome_recipe/1.json
  def destroy
    @welcome_recipe.destroy
    respond_to do |format|
      format.html { redirect_to welcome_recipe_url, notice: 'welcome_recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_welcome_recipe
      @welcome_recipe = welcome_recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def welcome_recipe_params
      params.require(:welcome_recipe).permit(:name, :rating)
    end
end

