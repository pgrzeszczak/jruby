require 'java'
require './examples/SimpleJavaJar.jar'
java_import 'examples.SimpleJavaClass'

simple_object = SimpleJavaClass.new

puts simple_object
puts simple_object.getSomeNiceText