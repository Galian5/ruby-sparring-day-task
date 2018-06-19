class Animal
  attr_reader :name, :description, :origin, :kind

  def initialize(params)
    @name = params[:name]
    @description = params[:description]
    @origin = params[:origin]
    @kind = params[:kind]
  end

end