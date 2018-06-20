class Animal
  attr_accessor :name, :description, :origin, :kind

  def initialize(params)
    @name = params[:name]
    @description = params[:description]
    @origin = params[:origin]
    @kind = params[:kind]
  end



  def introduce
    if origin.nil? then
      [self.class.name, name, description[0].downcase+description[1..-1]].compact.join( ' ')
    else
      [self.class.name, name, 'from ' + origin, description[0].downcase+description[1..-1]].compact.join( ' ')
    end

  end

end