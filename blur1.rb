class Image

attr_accessor :ary

    def initialize(arg)
        @ary = arg
    end

    def output_image
        y = []
        @ary.each_index do |x|
            @ary[x].each do |i|
                y << i           
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

