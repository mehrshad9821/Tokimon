class TokimonsController < ApplicationController
  before_filter :set_tokimon, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tokimons = Tokimon.all
    respond_with(@tokimons)
  end

  def display
    @tokimons = Tokimon.all
    respond_with(@tokimons)
  end

  def show
    respond_with(@tokimon)
  end

  def new
    @tokimon = Tokimon.new
    respond_with(@tokimon)
  end

  def edit
  end

  def create
    @tokimon = Tokimon.new(params[:tokimon])
    @tokimon.save
    respond_with(@tokimon)
  end

  def update
    @tokimon.update_attributes(params[:tokimon])
    respond_with(@tokimon)
  end

  def destroy
    @tokimon.destroy
    respond_with(@tokimon)
  end

  private
    def set_tokimon
      @tokimon = Tokimon.find(params[:id])
    end
end
