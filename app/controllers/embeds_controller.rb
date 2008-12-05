class EmbedsController < ApplicationController
  before_filter :find_objects
  
  def create
    @embed = Embed.new(params[:embed])
    @embed.save!
    photo = Photo.new(params[:image])
    photo.assetable = @embed
    photo.save
    redirect_to :back
     rescue ActiveRecord::RecordInvalid
        render :action => 'new'
  end
  private
  def find_objects
     @in_embed = Embed.first(:order=>"RAND()")
      @embeds = Embed.all(:order=>"RAND()", :limit=>20)
  end
end
