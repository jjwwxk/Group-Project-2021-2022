import java.util.*;
import javax.swing.*;
import java.awt.geom.Line2D;
import java.awt.*;
//import java.awt.Graphics2D;
import static java.lang.Math.*;

public class MMEntryPoint {
	class b extends JComponent{
		public void pain(Graphics g) {
			Graphics2D G =(Graphics2D) g;
			Line2D.Double ground = new Line2D.Double(20,20,30,20);
			G.setColor(Color.RED);
			G.draw(ground);
		}
	}
	
	public static void main(String[] args) {
		//jframe
		JFrame f = new JFrame("Music Mario");
		f.setSize(1500,1000);
		f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		f.add(b());
		f.setVisible(true);
		
	}
}
