class Robot
  # Informs the robot that the game is starting. The
  # control_unit is provided for getting sensor data and
  # issuing commands.
  def start_game(name, color, controller)
  end

  # Informs the robot that it has collided with an object
  # and how much damage the collision caused.
  def collision(damage)
  end

  # Called every virtual clock tick.  The robot is allowed
  # to do some procesing every clock tick.
  def tick
  end

  # Informs the robot that it has died.  The robot should
  # not perform any further actions on its controller.
  def dead
  end

  # Informs the robot that the game is over.
  def end_game
  end
end
