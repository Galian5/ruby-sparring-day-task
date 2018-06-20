class Animal
  attr_accessor :name, :description, :origin, :kind

  def initialize(params)
    @name = params[:name]
    @description = params[:description]
    @origin = params[:origin]
    @kind = params[:kind]
  end

  def hyphen
    '-' if kind
  end

  def use_kind
    "(kind: #{@kind})" if kind
  end

  def adjusted_description
    description[0].downcase+description[1..-1]
  end


  def introduce
    if origin.nil?
      [self.class.name, use_kind, name, hyphen, adjusted_description].compact.join( ' ')
    else
      [self.class.name, use_kind, name, hyphen, 'from ' + origin, adjusted_description].compact.join( ' ')
    end

  end

end