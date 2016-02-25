class BooklawnsController < InheritedResources::Base

  before_filter :prepare_lawngrounds
	before_filter :prepare_booklawn, only: [:show, :update, :edit]



	def index
		@booklawns=Booklawn.all.where('starttime>? OR starttime==?',Date.today, Date.today).order("starttime ASC")

	end

  def update
    @booklawn.update(booklawn_params)
    redirect_to action: :index
  end

  private

    def booklawn_params
      params.require(:booklawn).permit(:availability, :lawnname, :starttime, :endtime)
    end

    private
    def prepare_booklawn
      @booklawn = Booklawn.find(params[:id])
    end

    private
    def prepare_lawngrounds
    	@lawngrounds = Lawnground.all
    end
end

