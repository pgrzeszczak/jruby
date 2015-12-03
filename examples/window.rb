require 'java'

JFrame = javax.swing.JFrame
JLabel = javax.swing.JLabel
frame  = JFrame.new "Hello, it's me"
frame.setDefaultCloseOperation JFrame::EXIT_ON_CLOSE
frame.setSize 600, 400
frame.setVisible(true)