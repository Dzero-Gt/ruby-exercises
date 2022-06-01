def fibs(n)
    sequence = [0]
    temp = 0
    if n >= 1
        sequence << 1
    end
    if n > 1
        for i in 2..(n-1)
            temp = sequence[i-1] + sequence[i-2]
            sequence << temp
        end
    end
    return sequence
end

p fibs(3)

def fibs_rec(n)
    if n < 2
        return n
    else
        return fibs_rec(n-1) + fibs_rec(n-2)
    end
end

def fill_arr(j)
    seq = []
    for i in 0..(j-1)
        seq << fibs_rec(i)
    end
    return seq
end
p fill_arr(8)