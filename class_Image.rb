class Image

  def initialize(*arg)
    @image = Image
  end

  def output_image(*arg)
    y = []
    @image.each_index do |a|
        @image[a].each_index do |i|
            y << @image[a][i]
        end
        puts y.join 
        y = []
    end
  end 

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image

