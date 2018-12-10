require 'pry'

# def consolidate_cart(cart)
#   count = Hash.new(0)
#
#   cart.each do |hash|
#     count[hash] += 1
#   end
#
#   new_hash = {}
#
#   count.each do |orig_hash,num|
#     orig_hash.each do |veg,info|
#       new_hash[veg] = info
#       new_hash[veg][info].merge(count: num)
#       binding.pry
#     end
#   end
#
#   return new_hash
# end


def consolidate_cart(cart)
  new_hash = {}

  cart.each do |hash|
    hash.each do |veg,info_hash|
      new_hash[veg] ||= {}
      new_hash[veg][:count] ||= 0
      new_hash[veg][:count] += 1
        info_hash.each do |attribute,val|
          new_hash[veg][attribute] = val
        #binding.pry
        end
    end
  end

  return new_hash
end


def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
