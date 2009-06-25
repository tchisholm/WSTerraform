class HelppagesController < ApplicationController

  layout 'main'

  before_filter :get_helppage, :except => [:update]
  
  # GET /helppages
  # GET /helppages.xml
  def index
  end

  # GET /helppages/1
  # GET /helppages/1.xml
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @helppage }
    end
  end

  # GET /helppages/new
  # GET /helppages/new.xml
  def new
  end

  # GET /helppages/1/edit
  def edit
  end

  # POST /helppages
  # POST /helppages.xml
  def create
  end

  # PUT /helppages/1
  # PUT /helppages/1.xml
  def update
    @helppage = Helppage.find(params[:id])
    @helppage.update_attributes(params[:helppage])
    redirect_to session[:original_uri]
  end

  # DELETE /helppages/1
  # DELETE /helppages/1.xml
  def destroy
  end
  
private  

  def get_helppage
    @helppage = Helppage.find_by_name(params[:id])
    if !@helppage
      @helppage = Helppage.new
      @helppage.name = params[:id]
      @helppage.save
    end
  end

end
