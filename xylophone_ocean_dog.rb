# Executive Coaching Service

class ExecutiveCoaching 
  attr_accessor :name, :coaching_methods, :training_programs

  def initialize(name, coaching_methods, training_programs)
    @name = name 
    @coaching_methods = coaching_methods
    @training_programs = training_programs
  end 

  def self.describe
    puts "#{name} is an executive coaching service that helps leaders develop their leadership skills and achieve their professional goals. We offer a variety of coaching methods and training programs in order to best meet the needs of our clients."
  end 

  def self.find_coaching_method(method_name)
    coaching_methods.each do |method|
      return method if method.name == method_name
    end 
  end 

  def self.find_training_program(program_name)
    training_programs.each do |program|
      return program if program.name == program_name
    end 
  end 

  # Customer Reviews
  def self.customer_reviews
    puts "Here at #{name}, we've been fortunate enough to have some amazing reviews from our customers. We pride ourselves in doing whatever it takes to make sure our clients see the results they want." 
  end 

  # Coaching Methods 
  class CoachingMethods 
    attr_accessor :name, :description

    def initialize(name, description)
      @name = name 
      @description = description
    end 
  end 

  # Coaching Method: One-on-One Coaching 
  one_on_one_coaching = CoachingMethods.new("One-on-One Coaching", "One-on-one coaching is a powerful process that enables clients to develop clarity and focus to reach their goals and realize any potential that may be untapped.")

  # Coaching Method: Group Coaching 
  group_coaching = CoachingMethods.new("Group Coaching", "Group Coaching is an effective form of coaching that provides a platform to work with multiple clients in the same time frame. By working with a group, clients can easily gain support from their peers and have access to helpful feedback.")

  # Training Programs
  class TrainingPrograms 
    attr_accessor :name, :description

    def initialize(name, description)
      @name = name 
      @description = description
    end 
  end 

  # Training Program: Effective Leadership 
  effective_leadership = TrainingPrograms.new("Effective Leadership", "This program will help to develop the essential skills and knowledge needed to become an effective leader. Through this training, clients will gain insights into topics such as communication, delegation, decision-making, and more.")

  # Training Program: Strategic Thinking
  strategic_thinking = TrainingPrograms.new("Strategic Thinking", "This program will help clients hone their problem-solving and decision-making skills, and develop a strategic mindset. Clients will learn to think big and leverage their creativity to identify and take advantage of opportunities for growth.")

end 

# Print Executive Coaching Service
puts ExecutiveCoaching.describe