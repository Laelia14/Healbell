healclock:
  type: world
  events:
  #Thats is that when the player clicks on the Bell the Actions run.
      on player clicks bell location_flagged:healing_bell:
      #The Permission to do the Actions.. (The User that use the bell)
        - if <player.has_permission[heal.bell]>:
        # You can give a Player (Jail) a Flag that he dont can use the Bell
          - if <player.has_flag[healglock.disable]>:
            - heal
            - actionbar "<green>Die Glocke hat dich geheilt!"
          - else:
            - actionbar "<red>Die Glocke hat etwas böses entdeckt. Sie konnte dir nicht helfen!"
        - else:
          - actionbar "<red>Die Glocke hat etwas böses entdeckt. Sie konnte dir nicht helfen!"