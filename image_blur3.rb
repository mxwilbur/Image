class Image

attr_accessor :ary, :y, :z, :distance

    def initialize(arg)
        @ary = arg
    end

    #def blur(distance)
    #    @distance = distance
    #    find_pixel_eq_1
    #    add_blur_to_image
    #    blurred_image
    #end
# section 1
    def find_pixel_eq_1    
        row = 0
        col = 0
        y = []
        @ary.each_index do |row|
            @ary[row].each_index do |col|
                if @ary[row][col] == 1;
                    y << [row.to_i, col.to_i]
                end
            end
        end
        @y = y
    end  

# section 2
    # calculate manhattan distance for all pixels
    # which are equal to or less than the manhattan distance given
    
    def add_blur_to_image
        r = 0
        c = 0
        rc = 0
        n = 1
        z = []
        u = @y.size.to_i
        while n <= u
            @ary.each_index do |r|
                @ary[r].each_index do |c|
                    if ((c.to_i - y[rc][1].to_i).abs + (r.to_i - y[rc][0].to_i).abs).between?(1, @distance.to_i);
                        z << [r.to_i, c.to_i]
                    end
                end
            end
            r = 0
            c = 0
            rc += 1
            n += 1
        end
        zz=[]
        r1 = 0
        c1 = 0
        z.each do |r|
            r1 = r[0].to_i
            c1 = r[1].to_i
            @ary[r1][c1] = 1
        end
    end


    # section 3
    # builds blurred image based on 
    # given manhattan distance
    def blur(distance)
        @distance = distance
        find_pixel_eq_1
        add_blur_to_image
        
        j = @ary.size
        q = @ary.flatten.size
        wa = q / j - 1
        l = q / j
        k = @ary.flatten
        m = 0
        n = l - 1
        while n <= q
            puts k[m..n].join
            m += l
            n += l
        end    
    end     
end  


image = Image.new([
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 1, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 1]
])
image.blur(3)
