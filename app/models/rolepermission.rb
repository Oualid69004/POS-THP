class Rolepermission < ApplicationRecord
    belongs_to :role
    belongs_to :screen

    def self.roleperm(screens)
      screens.each do |screen|
      unless screen == nil
        screenId = screen[1...-1].to_i
        roleId = screen[1...-1].last.to_i
        select_screen = Screen.find(screenId)
        select_role = Role.find(roleId)
          unless select_role.screens.include?(select_screen)
            Rolepermission.create(role: select_role, screen: select_screen)
          end
        end
      end
    end
end
