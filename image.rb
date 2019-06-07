image = [[0,0,0,0],[0,1,0,0],[0,0,0,1],[0,0,0,0]]
y = []
image.each_index do |a|
    image[a].each_index do |i|
        y << image[a][i]
    end
    puts y.join 
    y = []
end
