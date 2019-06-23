class Image

attr_accessor :ary

    def initialize(arg)
        @ary = arg
    end


    def output_image
    # identifies sector with a 1 value in image    
        x = 0
        i = 0
        y = []
        @ary.each_index do |x|
            @ary[x].each_index do |i|
                if @ary[x][i] == 1;
                    y << [x, i]
                end
            end
        end

        #  updates image to add 1's to blur
        #  establishes variables for last section as well
        c = y
        h = c.size - 1
        w = c.flatten.size - 1
        j = @ary.size
        ha = j - 1
        q = @ary.flatten.size
        wa = q / j - 1
        l = q / j

        e = 0
        f = 0
        g = 1
        d = 0

        while d <= h 

            r = y[e][f]  
            s = y[e][g]     
            if r - 1 >= 0;
                @ary[r-1][s] = 1 
            end
            if r + 1 <= ha;
                @ary[r+1][s] = 1
            end
            if s -1 >= 0;
                @ary[r][s-1] = 1
            end 
            if s + 1 <= wa;
                @ary[r][s+1] = 1
            end
            d += 1
            e += 1
        end

        #  generates modified image of 0's and 1's
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
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [1, 0, 0, 0],
    [0, 0, 0, 0]
])
image.output_image

