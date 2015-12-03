require 'java'

JFrame = javax.swing.JFrame
JLabel = javax.swing.JLabel
frame  = JFrame.new "Hello!"
frame.setDefaultCloseOperation JFrame::EXIT_ON_CLOSE
frame.setSize 600, 400

label = JLabel.new "Is it me you're looking for?"
frame.add label

frame.setVisible(true)