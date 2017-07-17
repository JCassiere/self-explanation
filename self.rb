# Self represents the current or default object that you’re
# working with in your program. If you puts self in either 
# pry or a plain Ruby file, you will see main printed to 
# the screen. Main is the default object in which you work 
# in any file. It is the top level context - when you’re not 
# in the context of another class or module.

# In a module or class definition (i.e. outside of any class
# methods), self is the module or class object itself. When 
# in an instance method of a class, self is the instance of the class.

# See below code for further explanation.

#prints Object
puts self.class

#prints main
puts self

def new_method
    #still main
    puts self
end

new_method

class SelfClass
    #Here, self is actually the class itself (SelfClass)
    puts self
    def initialize
        #inside an instance of a class
        #self is the instance of the class
        puts self
    end

    def some_class_method
        #self is still the instance of the class
        puts self
    end

end

self_class = SelfClass.new
self_class.some_class_method