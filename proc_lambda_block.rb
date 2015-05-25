summ = proc { |a, b| a + b }
double_proc = proc { |a| a * 2 }

def proc_example(a,b,&proc)
	proc.call a,b	
end	

def block_example(a)
	if block_given?
	yield 10	
else
	'no block'
end
end

p proc_example 10,5,&summ
#p block_example(10){|x| x*2}
#p block_example {|x| x*2}
