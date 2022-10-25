require_relative './dance_module'
require_relative './meta_dancing_module.rb'
require_relative './fancy_dance.rb'

class Dancer
    include Dance
    extend MetaDancing

  attr_accessor :name

  def initialize(name)
    @name = name
  end
    
    extend FancyDance::ClassMethod
    include FancyDance::InstanceMethods
  end