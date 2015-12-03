require 'java'

array = [5,6,2,4,8,1]
puts "array #{array}"
java_array = array.to_java
puts "java_array #{java_array}"
java.util.Arrays.sort(java_array)
puts "sorted #{java_array}"
puts "sorted as ruby array #{java_array.to_a}"