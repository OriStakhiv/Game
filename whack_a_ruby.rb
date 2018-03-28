require 'gosu'
class WhackARuby < Gosu::Window

  def initialize
    super(800, 600)
    self.caption = "Whack the Ruby!"
    @image = Gusu::Image.new('ruby.png')
    @x = 200
    @y = 200
    @width = 50
    @height = 43
    @velocity_x = 5
    @velocity_y = 5
    @visible = 0
    @hammer_image = Gosu::Image.new('hammer.png')
    @hit = 0
    @score = 0
    @font = Gosu::Font.new(30)
    @playing = true
    @start_time = 0
  end

  def draw
    @image.draw(@x-@width / 2, @y - @height / 2, 1)
  end

  def update
    @x += @velocity_x
    @y += @velocity_y 
  end
window = WhackARuby.new
window.show
end
