require 'java'

W=800
H=600

frame = javax.swing.JFrame.new("Window")

frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
frame.pack
frame.setVisible(true)
frame.setSize(W,H)
frame.graphics.setColor(java.awt.Color.cyan)
frame.graphics.drawLine(0,0,100,100)
