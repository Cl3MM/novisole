class EtapesController < ApplicationController
  # GET /etapes
  # GET /etapes.json
  def index
    @etapes = Etape.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @etapes }
    end
  end

  # GET /etapes/1
  # GET /etapes/1.json
  def show
    @etape = Etape.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @etape }
    end
  end

  # GET /etapes/new
  # GET /etapes/new.json
  def new
    @etape = Etape.new(:parent_id => params[:parent_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @etape }
    end
  end

  # GET /etapes/1/edit
  def edit
    @etape = Etape.find(params[:id])
  end

  # POST /etapes
  # POST /etapes.json
  def create
    @etape = Etape.new(params[:etape])

    respond_to do |format|
      if @etape.save
        format.html { redirect_to @etape, notice: 'Etape was successfully created.' }
        format.json { render json: @etape, status: :created, location: @etape }
      else
        format.html { render action: "new" }
        format.json { render json: @etape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /etapes/1
  # PUT /etapes/1.json
  def update
    @etape = Etape.find(params[:id])

    respond_to do |format|
      if @etape.update_attributes(params[:etape])
        format.html { redirect_to @etape, notice: 'Etape was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @etape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etapes/1
  # DELETE /etapes/1.json
  def destroy
    @etape = Etape.find(params[:id])
    @etape.destroy

    respond_to do |format|
      format.html { redirect_to etapes_url }
      format.json { head :no_content }
    end
  end
end
