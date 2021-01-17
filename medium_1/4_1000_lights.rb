=begin

You have a bank of switches before you, numbered from 1 to n.
Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them.
You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

    round 1: every light is turned on
    round 2: lights 2 and 4 are now off; 1, 3, 5 are on
    round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
    round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
    round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].


=end

# round 1 => you toggle everything
# round 2 => you toggle even lights
# round 3 => you toggle odd lights

# input: number of lights
# output: lights that are still on

# main datastructure = array

=begin

We iterate over our set of lights the same amount of time as their are lights in our bank.
All the lights are off at the beginning of our program. (an empty array)

On each iteration, we check what round we are on for the correct switching rules
On every iteration we iterate over all the lights.

  if we are on round 1, round 4, round 7, ...
    We switch everything => SUBROUTINE
  if we are on round 2, round 5, round 8, ...
    We switch the even lights => SUBROUTINE
  if we are on round 3, round 6, round 9, ...
    We switch theve odd lights => SUBROUTINE
=end

def switch_lights(lights)
  lights_on = []

  1.upto(lights) do |round|
    round.step(by: round, to: lights) do |light|
      lights_on.include?(light) ? lights_on.delete(light) : lights_on.push(light)
    end
  end

  lights_on
end

puts switch_lights(5) == [1, 4]
puts switch_lights(10) == [1, 4, 9]
