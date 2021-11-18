class CluesController < ApplicationController
  before_action :login_required 
  # GET /clues
  # GET /clues.xml
  def index
    @clues = Clue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clues }
    end
  end

  # GET /clues/1
  # GET /clues/1.xml
  def show
    @clue = Clue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clue }
    end
  end

  # GET /clues/new
  # GET /clues/new.xml
  def new
    @clue = Clue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clue }
    end
  end

  # GET /clues/1/edit
  def edit
    @clue = Clue.find(params[:id])
  end

  # POST /clues
  # POST /clues.xml
  def create
    @clue = Clue.new(params[:clue])

    respond_to do |format|
      if @clue.save
        flash[:notice] = 'Clue was successfully created.'
        format.html { redirect_to(@clue) }
        format.xml  { render :xml => @clue, :status => :created, :location => @clue }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clues/1
  # PUT /clues/1.xml
  def update
    @clue = Clue.find(params[:id])

    respond_to do |format|
      if @clue.update_attributes(params[:clue])
        flash[:notice] = 'Clue was successfully updated.'
        format.html { redirect_to(@clue) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clues/1
  # DELETE /clues/1.xml
  def destroy
    @clue = Clue.find(params[:id])
    @clue.destroy

    respond_to do |format|
      format.html { redirect_to(clues_url) }
      format.xml  { head :ok }
    end
  end
end