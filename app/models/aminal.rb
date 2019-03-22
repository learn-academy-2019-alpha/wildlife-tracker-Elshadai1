class Aminal < ApplicationRecord
    has_many :sightings
      validates :commonname, :latinname, :kingdom, presence: true
      validates :commonname, :latinname, uniqueness: true
      validate :commonname_validator
      validate :latinname_validator
      validate :kingdom_validator
      
      def commonname_validator
         if commonname.match( "^[A-Za-z- ]+$")
        else
            errors.add(:commonname," can be only be letters")
        end  
    end      
      
      def latinname_validator
         if latinname.match( "^[A-Za-z- ]+$")
        else
            errors.add(:latinname," can be only be letters")
        end  
    end 
    
     def kingdom_validator
         if kingdom.match( "^[A-Za-z- ]+$" )
        else
            errors.add(:kingdom," can be only be letters")
        end  
    end 
    
      

end
