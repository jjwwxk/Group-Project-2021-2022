import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.Line2D;
import java.awt.*;
import javax.swing.JComponent;
import javax.swing.JFrame;
import javax.swing.*;

class Main {
	  public static void main(String[] args){
	    JFrame frame = new JFrame();
	    frame.setSize(1500,1000);
	    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	    frame.add(new FaceComponent());

	    frame.setVisible(true);
	  }
	}
	  class FaceComponent extends JComponent{
	    public void pain(Graphics g){
	      Graphics2D g2 = (Graphics2D) g;
	      g2.setBackground(Color.white);
	      g2.setColor(Color.BLUE);
	      g2.setStroke(new BasicStroke(2));
	      Line2D.Double ground = new Line2D.Double(500,500,1000,500); 
	      g2.draw(ground);
	    }
	  }
