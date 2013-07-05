class Person
      def initialize(name, gender, age)
         @name = name
         @gender = gender
         @age = age
      end
end

class Person
      def name
          @name
      end
      def gender
          @gender
      end
      def age
          @age
      end
end
people = Person.new('Tom', 'male', 15)
puts people.name
puts people.gender
puts people.age