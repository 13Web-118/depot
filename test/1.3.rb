class Base
        def meth(info)
              puts "This is Base #{info}"       

        end
end
class Derived < Base
        def meth(info)
            puts "This is derived #{info}"           

            super
        end
end

obj1 = Derived.new
obj1.meth("test");
