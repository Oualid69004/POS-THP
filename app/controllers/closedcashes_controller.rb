class ClosedcashesController < ApplicationController
  before_action :set_closedcash, only: [:show, :edit, :update, :destroy]

  # GET /closedcashes
  # GET /closedcashes.json
  def index
    @closedcashes = Closedcash.all
  end

  # GET /closedcashes/1
  # GET /closedcashes/1.json
  def show
  end

  # GET /closedcashes/new
  def new
    @closedcash = Closedcash.new
  end

  # GET /closedcashes/1/edit
  def edit
  end

  # POST /closedcashes
  # POST /closedcashes.json
  def create
    @closedcash = Closedcash.new(closedcash_params)

    respond_to do |format|
      if @closedcash.save
        format.html { redirect_to @closedcash, notice: 'Closedcash was successfully created.' }
        format.json { render :show, status: :created, location: @closedcash }
      else
        format.html { render :new }
        format.json { render json: @closedcash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /closedcashes/1
  # PATCH/PUT /closedcashes/1.json
  def update
    respond_to do |format|
      if @closedcash.update(closedcash_params)
        format.html { redirect_to @closedcash, notice: 'Closedcash was successfully updated.' }
        format.json { render :show, status: :ok, location: @closedcash }
      else
        format.html { render :edit }
        format.json { render json: @closedcash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /closedcashes/1
  # DELETE /closedcashes/1.json
  def destroy
    @closedcash.destroy
    respond_to do |format|
      format.html { redirect_to closedcashes_url, notice: 'Closedcash was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_closedcash
      @closedcash = Closedcash.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def closedcash_params
      params.require(:closedcash).permit(:money, :host, :hostsequence)
    end
end
