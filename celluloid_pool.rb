require 'celluloid'
require 'mathn'
 
class PrimeWorker
include Celluloid
 
def prime_2(number)
if number.prime?
puts number
end
end
end
 
pool = PrimeWorker.pool
 
(2..100000).to_a.map do |i|
pool.prime_2 i
end
 
#sleep 100 
