import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.math.BigDecimal;
import java.text.NumberFormat;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.SwingConstants;
import java.text.ParseException;

public class Calculator implements ActionListener {
	
	//Declarations
	boolean isOperatorClicked=false, afterNumberClick=false, afterEqualClick=false;
	String oldValue="", newValue, operationValue="null", formattedText, buttonValue;
	float result=0, oldValueF, newValueF,oldPercentageValue;
	JFrame jf;
	JLabel displayLabel;
	JButton sevenButton, eightButton, nineButton, fourButton, fiveButton, sixButton, oneButton, twoButton, threeButton, dotButton, zeroButton, equalButton, divButton, multipButton, minusButton, plusButton, clearAllButton, plusMinusButton, clearScreenButton, backSpaceButton, persentageButton;
	String currentText;
	NumberFormat nf;
	BigDecimal bd;
	double value;
	Number number;
	
	NumberFormat numberFormat;
	
	//Construction Start
	public Calculator() {
		
		
		
		nf = NumberFormat.getInstance();
		
		//Frame
		//create objection of JFrame
		jf=new JFrame("NBK Calculator");//Add Title name 'Calculator'
		//Remove Layout
		jf.setLayout(null);
		//set size of Frame
		jf.setSize(330,480);
		//set Location of Frame in Screen
		jf.setLocation(300, 150);
		//Set color in JFrame
		jf.getContentPane().setBackground(Color.BLACK);
		//Hide Maximize button in JFrame
		jf.setResizable(false);
		
		
		//Label
		//create objection of JLabel
		displayLabel=new JLabel("0");
		//set size and Location of Label
		displayLabel.setBounds(15, 15, 285, 40);
		//set Background color of Label
		displayLabel.setBackground(Color.white);
		//Showing Label (Remove transparency of Label)
		displayLabel.setOpaque(true);
		//Change text HorizontalAlignment in Label
		displayLabel.setHorizontalAlignment(SwingConstants.RIGHT); 
		//Change text VerticalAlignment in Label
		displayLabel.setVerticalAlignment(SwingConstants.CENTER);
		//set Font size in Label
		displayLabel.setFont( new Font("Gilroy",Font.BOLD,25));
		//set Font color in Label
		displayLabel.setForeground(Color.black);
		//Add Label in Frame
		jf.add(displayLabel);
		
		
		// All Clear Button
		clearAllButton=new JButton("AC");
		clearAllButton.setBounds(15, 70, 60, 60);
		clearAllButton.addActionListener(this);
		clearAllButton.setFont(new Font("Gilroy",Font.BOLD,16));
		clearAllButton.setBackground(new Color(255, 153, 51));//import java.awt.Color;
		clearAllButton.setForeground(Color.WHITE);
		clearAllButton.setFocusPainted(false);
		clearAllButton.setBorderPainted(false);
		jf.add(clearAllButton);
		
		
		// Back Space Button
		backSpaceButton=new JButton("⌫");
		backSpaceButton.setBounds(90, 70, 60, 60);
		backSpaceButton.addActionListener(this);
		backSpaceButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		backSpaceButton.setBackground(new Color(255, 153, 51));//import java.awt.Color;
		backSpaceButton.setForeground(Color.WHITE);
		backSpaceButton.setFocusPainted(false);
		backSpaceButton.setBorderPainted(false);
		jf.add(backSpaceButton);
		
		// Clear Button
		persentageButton=new JButton("%");
		persentageButton.setBounds(165, 70, 60, 60);
		persentageButton.addActionListener(this);
		persentageButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		persentageButton.setBackground(new Color(255, 153, 51));//ORANGE Color;
		persentageButton.setForeground(Color.WHITE);
		persentageButton.setFocusPainted(false);
		persentageButton.setBorderPainted(false);
		jf.add(persentageButton);
		
		// Seven Button
		//create objection of JButton
		sevenButton=new JButton("7");//Add Title name is '7'
		//set size and Location of Button
		sevenButton.setBounds(15, 145, 60, 60);
		//Add action to Global
		sevenButton.addActionListener(this);
		//set Font size in Button
		sevenButton.setFont(new Font("Gilroy", Font.BOLD, 20));	
		sevenButton.setBackground(new Color(0, 102, 102));//import java.awt.Color;
		sevenButton.setForeground(Color.WHITE);
		sevenButton.setFocusPainted(false);
		sevenButton.setBorderPainted(false);
		//Add Button in Frame
		jf.add(sevenButton);
		
		// Eight Button
		eightButton=new JButton("8");
		eightButton.setBounds(90, 145, 60, 60);
		eightButton.addActionListener(this);
		eightButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		eightButton.setBackground(new Color(0, 102, 102));//import java.awt.Color;
		eightButton.setForeground(Color.WHITE);
		eightButton.setFocusPainted(false);
		eightButton.setBorderPainted(false);
		jf.add(eightButton);
		
		// Nine Button
		nineButton=new JButton("9");
		nineButton.setBounds(165, 145, 60, 60);
		nineButton.addActionListener(this);
		nineButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		nineButton.setBackground(new Color(0, 102, 102));//import java.awt.Color;
		nineButton.setForeground(Color.WHITE);
		nineButton.setFocusPainted(false);
		nineButton.setBorderPainted(false);
		jf.add(nineButton);
		
		// Four Button
		fourButton=new JButton("4");
		fourButton.setBounds(15, 220, 60, 60);
		fourButton.addActionListener(this);
		fourButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		fourButton.setBackground(new Color(0, 102, 102));//import java.awt.Color;
		fourButton.setForeground(Color.WHITE);
		fourButton.setFocusPainted(false);
		fourButton.setBorderPainted(false);
		jf.add(fourButton);
		
		// Five Button
		fiveButton=new JButton("5");
		fiveButton.setBounds(90, 220, 60, 60);
		fiveButton.addActionListener(this);
		fiveButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		fiveButton.setBackground(new Color(0, 102, 102));//import java.awt.Color;
		fiveButton.setForeground(Color.WHITE);
		fiveButton.setFocusPainted(false);
		fiveButton.setBorderPainted(false);
		jf.add(fiveButton);
		
		// Six Button
		sixButton=new JButton("6");
		sixButton.setBounds(165, 220, 60, 60);
		sixButton.addActionListener(this);
		sixButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		sixButton.setBackground(new Color(0, 102, 102));//import java.awt.Color;
		sixButton.setForeground(Color.WHITE);
		sixButton.setFocusPainted(false);
		sixButton.setBorderPainted(false);
		jf.add(sixButton);
		
		// One Button
		oneButton=new JButton("1");
		oneButton.setBounds(15, 295, 60, 60);
		oneButton.addActionListener(this);
		oneButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		oneButton.setBackground(new Color(0, 102, 102));//import java.awt.Color;
		oneButton.setForeground(Color.WHITE);
		oneButton.setFocusPainted(false);
		oneButton.setBorderPainted(false);
		jf.add(oneButton);
		
		// Two Button
		twoButton=new JButton("2");
		twoButton.setBounds(90, 295, 60, 60);
		twoButton.addActionListener(this);
		twoButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		twoButton.setBackground(new Color(0, 102, 102));//import java.awt.Color;
		twoButton.setForeground(Color.WHITE);
		twoButton.setFocusPainted(false);
		twoButton.setBorderPainted(false);
		jf.add(twoButton);
		
		// Three Button
		threeButton=new JButton("3");
		threeButton.setBounds(165, 295, 60, 60);
		threeButton.addActionListener(this);
		threeButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		threeButton.setBackground(new Color(0, 102, 102));//import java.awt.Color;
		threeButton.setForeground(Color.WHITE);
		threeButton.setFocusPainted(false);
		threeButton.setBorderPainted(false);
		jf.add(threeButton);

		// PlusMinus Button
		plusMinusButton=new JButton("+/-");
		plusMinusButton.setBounds(15, 370, 60, 60);
		plusMinusButton.addActionListener(this);
		plusMinusButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		plusMinusButton.setBackground(new Color(0, 102, 102));//import java.awt.Color;
		plusMinusButton.setForeground(Color.WHITE);
		plusMinusButton.setFocusPainted(false);
		plusMinusButton.setBorderPainted(false);
		jf.add(plusMinusButton);
		
		// Zero Button
		zeroButton=new JButton("0");
		zeroButton.setBounds(90, 370, 60, 60);
		zeroButton.addActionListener(this);
		zeroButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		zeroButton.setBackground(new Color(0, 102, 102));//import java.awt.Color;
		zeroButton.setForeground(Color.WHITE);
		zeroButton.setFocusPainted(false);
		zeroButton.setBorderPainted(false);
		jf.add(zeroButton);
		
		// Dot Button
		dotButton=new JButton(".");
		dotButton.setBounds(165, 370, 60, 60);
		dotButton.addActionListener(this);
		dotButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		dotButton.setBackground(new Color(0, 102, 102));//import java.awt.Color;
		dotButton.setForeground(Color.WHITE);
		dotButton.setFocusPainted(false);
		dotButton.setBorderPainted(false);
		jf.add(dotButton);
				
		// Division Button
		divButton=new JButton("÷");
		divButton.setBounds(240, 70, 60, 60);
		divButton.addActionListener(this);
		divButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		divButton.setBackground(new Color(255, 153, 51));//ORANGE Color;
		divButton.setForeground(Color.WHITE);
		divButton.setFocusPainted(false);
		divButton.setBorderPainted(false);
		jf.add(divButton);
		
		// Multiplication Button
		multipButton=new JButton("x");
		multipButton.setBounds(240, 145, 60, 60);
		multipButton.addActionListener(this);
		multipButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		multipButton.setBackground(new Color(255, 153, 51));//ORANGE Color;
		multipButton.setForeground(Color.WHITE);
		multipButton.setFocusPainted(false);
		multipButton.setBorderPainted(false);
		jf.add(multipButton);
		
		// Minus Button
		minusButton=new JButton("-");
		minusButton.setBounds(240, 220, 60, 60);
		minusButton.addActionListener(this);
		minusButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		minusButton.setBackground(new Color(255, 153, 51));//ORANGE Color;
		minusButton.setForeground(Color.WHITE);
		minusButton.setFocusPainted(false);
		minusButton.setBorderPainted(false);
		jf.add(minusButton);
		
		// Plus Button
		plusButton=new JButton("+");
		plusButton.setBounds(240, 295, 60, 60);
		plusButton.addActionListener(this);
		plusButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		plusButton.setBackground(new Color(255, 153, 51));//ORANGE Color;
		plusButton.setForeground(Color.WHITE);
		plusButton.setFocusPainted(false);
		plusButton.setBorderPainted(false);
		jf.add(plusButton);
		
		// Equal Button
		equalButton=new JButton("=");
		equalButton.setBounds(240, 370, 60, 60);
		equalButton.addActionListener(this);
		equalButton.setFont(new Font("Gilroy", Font.BOLD, 20));
		equalButton.setBackground(new Color(255, 153, 51));//ORANGE Color;
		equalButton.setForeground(Color.WHITE);
		equalButton.setFocusPainted(false);
		equalButton.setBorderPainted(false);
		jf.add(equalButton);
		
	
		//Enable frame visible
		jf.setVisible(true);
		// Console stop exit from Frame
		jf.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		
		
	}
	
	//Main method
	public static void main(String[] args) {
		
		//Calling construction of Calculator Class
		new Calculator();
	}

	//Action start
	@Override
	public void actionPerformed(ActionEvent e) {
		
		//Clear Button Action
		 if(e.getSource().equals(clearAllButton)){
			displayLabel.setText("0");	
			result=0;
			oldValue="";
			newValue="";
			oldValueF=0;
			newValueF=0;
			currentText="0";
			isOperatorClicked=false;
			afterNumberClick=false;
			oldPercentageValue=0;
			afterEqualClick=false;
			
			//Backspace Button Action
		 }else if(e.getSource().equals(backSpaceButton)) {	
			 
			 if(displayLabel.getText() !="" && displayLabel.getText() != "0") {
			 displayLabel.setText(displayLabel.getText().substring(0, displayLabel.getText().length() - 1));
			 if(displayLabel.getText() =="") {
				 displayLabel.setText("0");
			 }
			 }
			 
			//Percentage Button Action
		 }else if(e.getSource().equals(persentageButton)) {	
			 
			 if(oldValue =="") {
				 displayLabel.setText("0");
			 }

					if(afterNumberClick) {
						try {
							newValue=displayLabel.getText();
							numberFormat = NumberFormat.getInstance();
							oldValueF = numberFormat.parse(oldValue).floatValue();
							newValueF = numberFormat.parse(newValue).floatValue();
						} catch (ParseException e1) {
							e1.printStackTrace();
						}
						
						result=newValueF/100;
						oldPercentageValue=oldValueF;
						displayLabel.setText(numberFormat.format(result));
						
					}
					operationValue="persentage";
				oldValue=displayLabel.getText();
				afterNumberClick=false;
				afterEqualClick=false;
					
			//Seven Button Action
		}else if(e.getSource().equals(sevenButton)) {	
				
				buttonValue = "7";
				
				if(isOperatorClicked || afterEqualClick) {
					displayLabel.setText(buttonValue);
					isOperatorClicked=false;
					afterNumberClick=true;
					afterEqualClick=false;
				}else {
					currentText = displayLabel.getText();

				    // Remove leading zeros
					if (currentText.startsWith("0") && !currentText.startsWith("0.") && currentText.length() > 0) {
				        currentText = currentText.replaceFirst("^0+", ""); // Remove leading zeros
				    }
					
					if(displayLabel.getText().contains(".")) {
						// Append "0" or update display label
					    displayLabel.setText(currentText + buttonValue);
					}else {
					
					// Append "7 to the current text
		            currentText += buttonValue;
		            
		            // Format the number and update the display label
		            try {
		                number = NumberFormat.getInstance().parse(currentText);
		               formattedText = NumberFormat.getInstance().format(number);
		                displayLabel.setText(formattedText);
		            } catch (ParseException e1) {
		                e1.printStackTrace();
		                displayLabel.setText(currentText); // Fallback to unformatted text if parsing fails
		            }
				}
				}
		
			//Eight Button Action
		}else if(e.getSource().equals(eightButton)){

			buttonValue = "8";
			
			if(isOperatorClicked || afterEqualClick) {
				displayLabel.setText(buttonValue);
				isOperatorClicked=false;
				afterNumberClick=true;
				afterEqualClick=false;
			}else {
				currentText = displayLabel.getText();

			    // Remove leading zeros
				if (currentText.startsWith("0") && !currentText.startsWith("0.") && currentText.length() > 0) {
			        currentText = currentText.replaceFirst("^0+", ""); // Remove leading zeros
			    }
				
				if(displayLabel.getText().contains(".")) {
					// Append "0" or update display label
				    displayLabel.setText(currentText + buttonValue);
				}else {
				
				// Append "8" to the current text
	            currentText += buttonValue;
	            
	            // Format the number and update the display label
	            try {
	                number = NumberFormat.getInstance().parse(currentText);
	               formattedText = NumberFormat.getInstance().format(number);
	                displayLabel.setText(formattedText);
	            } catch (ParseException e1) {
	                e1.printStackTrace();
	                displayLabel.setText(currentText); // Fallback to unformatted text if parsing fails
	            }
			}
			}
			
			//Nine Button Action		
		}else if(e.getSource().equals(nineButton)){

			buttonValue = "9";
			
			if(isOperatorClicked || afterEqualClick) {
				displayLabel.setText(buttonValue);
				isOperatorClicked=false;
				afterNumberClick=true;
				afterEqualClick=false;
			}else {
				currentText = displayLabel.getText();

			    // Remove leading zeros
				if (currentText.startsWith("0") && !currentText.startsWith("0.") && currentText.length() > 0) {
			        currentText = currentText.replaceFirst("^0+", ""); // Remove leading zeros
			    }
				
				if(displayLabel.getText().contains(".")) {
					// Append "0" or update display label
				    displayLabel.setText(currentText + buttonValue);
				}else {
				
				// Append "9" to the current text
	            currentText += buttonValue;
	            
	            // Format the number and update the display label
	            try {
	                number = NumberFormat.getInstance().parse(currentText);
	               formattedText = NumberFormat.getInstance().format(number);
	                displayLabel.setText(formattedText);
	            } catch (ParseException e1) {
	                e1.printStackTrace();
	                displayLabel.setText(currentText); // Fallback to unformatted text if parsing fails
	            }
			}
			}
			
			//Four Button Action		
		}else if(e.getSource().equals(fourButton)){

			buttonValue = "4";
			
			if(isOperatorClicked || afterEqualClick) {
				displayLabel.setText(buttonValue);
				isOperatorClicked=false;
				afterNumberClick=true;
				afterEqualClick=false;
			}else {
				currentText = displayLabel.getText();

			    // Remove leading zeros
				if (currentText.startsWith("0") && !currentText.startsWith("0.") && currentText.length() > 0) {
			        currentText = currentText.replaceFirst("^0+", ""); // Remove leading zeros
			    }
				
				if(displayLabel.getText().contains(".")) {
					// Append "0" or update display label
				    displayLabel.setText(currentText + buttonValue);
				}else {
				
				// Append "4" to the current text
	            currentText += buttonValue;
	            
	            // Format the number and update the display label
	            try {
	                number = NumberFormat.getInstance().parse(currentText);
	               formattedText = NumberFormat.getInstance().format(number);
	                displayLabel.setText(formattedText);
	            } catch (ParseException e1) {
	                e1.printStackTrace();
	                displayLabel.setText(currentText); // Fallback to unformatted text if parsing fails
	            }
			}
			}
			
			//Five Button Action
		}else if(e.getSource().equals(fiveButton)){

			buttonValue = "5";
			
			if(isOperatorClicked || afterEqualClick) {
				displayLabel.setText(buttonValue);
				isOperatorClicked=false;
				afterNumberClick=true;
				afterEqualClick=false;
			}else {
				currentText = displayLabel.getText();

			    // Remove leading zeros
				if (currentText.startsWith("0") && !currentText.startsWith("0.") && currentText.length() > 0) {
			        currentText = currentText.replaceFirst("^0+", ""); // Remove leading zeros
			    }
				
				if(displayLabel.getText().contains(".")) {
					// Append "0" or update display label
				    displayLabel.setText(currentText + buttonValue);
				}else {
				
				// Append "5" to the current text
	            currentText += buttonValue;
	            
	            // Format the number and update the display label
	            try {
	                number = NumberFormat.getInstance().parse(currentText);
	               formattedText = NumberFormat.getInstance().format(number);
	                displayLabel.setText(formattedText);
	            } catch (ParseException e1) {
	                e1.printStackTrace();
	                displayLabel.setText(currentText); // Fallback to unformatted text if parsing fails
	            }
			}
			}
			
			//Six Button Action
		}else if(e.getSource().equals(sixButton)){

			buttonValue = "6";
			
			if(isOperatorClicked || afterEqualClick) {
				displayLabel.setText(buttonValue);
				isOperatorClicked=false;
				afterNumberClick=true;
				afterEqualClick=false;
			}else {
				currentText = displayLabel.getText();

			    // Remove leading zeros
				if (currentText.startsWith("0") && !currentText.startsWith("0.") && currentText.length() > 0) {
			        currentText = currentText.replaceFirst("^0+", ""); // Remove leading zeros
			    }
				
				if(displayLabel.getText().contains(".")) {
					// Append "0" or update display label
				    displayLabel.setText(currentText + buttonValue);
				}else {
				
				// Append "6" to the current text
	            currentText += buttonValue;
	            
	            // Format the number and update the display label
	            try {
	                number = NumberFormat.getInstance().parse(currentText);
	               formattedText = NumberFormat.getInstance().format(number);
	                displayLabel.setText(formattedText);
	            } catch (ParseException e1) {
	                e1.printStackTrace();
	                displayLabel.setText(currentText); // Fallback to unformatted text if parsing fails
	            }
			}
			}
			
			//One Button Action
		}else if(e.getSource().equals(oneButton)){

			buttonValue = "1";
			
			if(isOperatorClicked || afterEqualClick) {
				displayLabel.setText(buttonValue);
				isOperatorClicked=false;
				afterNumberClick=true;
				afterEqualClick=false;
			}else {
				currentText = displayLabel.getText();

			    // Remove leading zeros
				if (currentText.startsWith("0") && !currentText.startsWith("0.") && currentText.length() > 0) {
			        currentText = currentText.replaceFirst("^0+", ""); // Remove leading zeros
			    }
				
				if(displayLabel.getText().contains(".")) {
					// Append "0" or update display label
				    displayLabel.setText(currentText + buttonValue);
				}else {
				
				// Append "1" to the current text
	            currentText += buttonValue;
	            
	            // Format the number and update the display label
	            try {
	                number = NumberFormat.getInstance().parse(currentText);
	               formattedText = NumberFormat.getInstance().format(number);
	                displayLabel.setText(formattedText);
	            } catch (ParseException e1) {
	                e1.printStackTrace();
	                displayLabel.setText(currentText); // Fallback to unformatted text if parsing fails
	            }
			}
			}
				
			//Two Button Action
		}else if(e.getSource().equals(twoButton)){

			buttonValue = "2";
			
			if(isOperatorClicked || afterEqualClick) {
				displayLabel.setText(buttonValue);
				isOperatorClicked=false;
				afterNumberClick=true;
				afterEqualClick=false;
			}else {
				currentText = displayLabel.getText();

			    // Remove leading zeros
				if (currentText.startsWith("0") && !currentText.startsWith("0.") && currentText.length() > 0) {
			        currentText = currentText.replaceFirst("^0+", ""); // Remove leading zeros
			    }
				
				if(displayLabel.getText().contains(".")) {
					// Append "0" or update display label
				    displayLabel.setText(currentText + buttonValue);
				}else {
				
				// Append "2" to the current text
	            currentText += buttonValue;
	            
	            // Format the number and update the display label
	            try {
	                number = NumberFormat.getInstance().parse(currentText);
	               formattedText = NumberFormat.getInstance().format(number);
	                displayLabel.setText(formattedText);
	            } catch (ParseException e1) {
	                e1.printStackTrace();
	                displayLabel.setText(currentText); // Fallback to unformatted text if parsing fails
	            }
			}
			}
			
			//Three Button Action
		}else if(e.getSource().equals(threeButton)){

			buttonValue = "3";
			
			if(isOperatorClicked || afterEqualClick) {
				displayLabel.setText(buttonValue);
				isOperatorClicked=false;
				afterNumberClick=true;
				afterEqualClick=false;
			}else {
				currentText = displayLabel.getText();

			    // Remove leading zeros
				if (currentText.startsWith("0") && !currentText.startsWith("0.") && currentText.length() > 0) {
			        currentText = currentText.replaceFirst("^0+", ""); // Remove leading zeros
			    }
				
				if(displayLabel.getText().contains(".")) {
					// Append "0" or update display label
				    displayLabel.setText(currentText + buttonValue);
				}else {
				
				// Append "3" to the current text
	            currentText += buttonValue;
	            
	            // Format the number and update the display label
	            try {
	                number = NumberFormat.getInstance().parse(currentText);
	               formattedText = NumberFormat.getInstance().format(number);
	                displayLabel.setText(formattedText);
	            } catch (ParseException e1) {
	                e1.printStackTrace();
	                displayLabel.setText(currentText); // Fallback to unformatted text if parsing fails
	            }
			}
			}
					
			//Dot Button Action
		}else if(e.getSource().equals(dotButton)){
			
			if(isOperatorClicked || afterEqualClick) {
				displayLabel.setText("0.");
				isOperatorClicked=false;
				afterNumberClick=true;	
				afterEqualClick=false;
			}else {
				
			if(! displayLabel.getText().contains(".") && displayLabel.getText() == "")
	          {
				displayLabel.setText(displayLabel.getText()+"0.");
				isOperatorClicked=false;
				afterNumberClick=true;
				
	          }else if(! displayLabel.getText().contains("."))
		          {
					displayLabel.setText(displayLabel.getText()+".");
					isOperatorClicked=false;
					afterNumberClick=true;
	          }
			}	
			
			// PlusMinus Action Button
		}else if(e.getSource().equals(plusMinusButton)){
			
			if(displayLabel.getText() == "" || displayLabel.getText() == "0") return;
			
			     if(!displayLabel.getText().startsWith("-")){
			    	 currentText = displayLabel.getText();
			    	displayLabel.setText("-"+displayLabel.getText());
			    	
			    }else if (displayLabel.getText().startsWith("-")) {
					displayLabel.setText(currentText);
				}
			
			afterNumberClick=false;
			
			//Zero Button Action
		}else if(e.getSource().equals(zeroButton)){
			
			buttonValue = "0";
											
			if(isOperatorClicked || afterEqualClick) {
				if(!displayLabel.getText().equals("0")) {
				displayLabel.setText(buttonValue);
				isOperatorClicked=false;
				afterNumberClick=true;
				afterEqualClick=false;
				}else {
					
				}
			}else {
				if (!displayLabel.getText().equals("0")) {
					
					if(displayLabel.getText().contains(".")) {
						// Append "0" or update display label
						displayLabel.setText(displayLabel.getText()+buttonValue);
					}else {
					
					// Append "0" to the current text
					currentText = displayLabel.getText();
		            currentText += buttonValue;
		            
		            // Format the number and update the display label
		            try {
		                number = NumberFormat.getInstance().parse(currentText);
		               formattedText = NumberFormat.getInstance().format(number);
		                displayLabel.setText(formattedText);
		            } catch (ParseException e1) {
		                e1.printStackTrace();
		                displayLabel.setText(currentText); // Fallback to unformatted text if parsing fails
		            }
				}
				}
			}
			
			//Equal Button Action
		}else if(e.getSource().equals(equalButton)){
					
			if(oldValue=="0") return;
			afterEqualClick=true;
			
			if(oldValue != "") {
			try {
				newValue=displayLabel.getText();
				numberFormat = NumberFormat.getInstance();
				oldValueF = numberFormat.parse(oldValue).floatValue();
				newValueF = numberFormat.parse(newValue).floatValue();
			} catch (ParseException e1) {
				e1.printStackTrace();
			}
			
			switch (operationValue) {
			case "division" :
				if(newValueF !=0) {
					result=oldValueF/newValueF;
				}else {
					displayLabel.setText("Cannot divide by zero");
					return;
				}
				break;
			
			case "multiplication":
				result=oldValueF*newValueF;
				break;
				
			case "minus":
				result=oldValueF-newValueF;
				break;
				
			case "plus":
				result=oldValueF+newValueF;
				break;
			
			case "persentage":
				result=oldValueF*oldPercentageValue;
				value = Math.round(value*100) / 100.0;
				break;
			
			default:
				result=0;
			}
			displayLabel.setText(numberFormat.format(result));	
			oldValue="0";
			
			afterNumberClick=false;
			afterEqualClick=true;
			}
			
			
			//Division Button Action
		}else if(e.getSource().equals(divButton)){
			if(oldValue=="0") return;

			if(oldValue!="" && afterNumberClick) {
				try {
					newValue=displayLabel.getText();
					numberFormat = NumberFormat.getInstance();
					oldValueF = numberFormat.parse(oldValue).floatValue();
					newValueF = numberFormat.parse(newValue).floatValue();
				} catch (ParseException e1) {
					e1.printStackTrace();
				}

			if(operationValue.equals("minus")) {
				result=oldValueF-newValueF;

			}else if(operationValue.equals("plus")) {
				result=oldValueF+newValueF;

			}else if(operationValue.equals("division")) {
				if(newValueF !=0) {
					result=oldValueF/newValueF;
				}else {
					displayLabel.setText("Cannot divide by zero");
					return;
				}

			}else if(operationValue.equals("multiplication")) {
				result=oldValueF*newValueF;
					}
			
			displayLabel.setText(numberFormat.format(result));
			}
			operationValue="division";
			isOperatorClicked=true;
			oldValue=displayLabel.getText();
			afterNumberClick=false;
			afterEqualClick=false;
			
			//Multiplication Button Action
		}else if(e.getSource().equals(multipButton)){
			
			if(oldValue=="0") return;

			if(oldValue!="" && afterNumberClick) {
				try {
					newValue=displayLabel.getText();
					numberFormat = NumberFormat.getInstance();
					oldValueF = numberFormat.parse(oldValue).floatValue();
					newValueF = numberFormat.parse(newValue).floatValue();
				} catch (ParseException e1) {
					e1.printStackTrace();
				}

			if(operationValue.equals("minus")) {
				result=oldValueF-newValueF;

			}else if(operationValue.equals("plus")) {
				result=oldValueF+newValueF;

			}else if(operationValue.equals("division")) {
				if(newValueF !=0) {
					result=oldValueF/newValueF;
				}else {
					displayLabel.setText("Cannot divide by zero");
					return;
				}

			}else if(operationValue.equals("multiplication")) {
				result=oldValueF*newValueF;
					}
			
			displayLabel.setText(numberFormat.format(result));
			}		
			operationValue="multiplication";
			isOperatorClicked=true;
			oldValue=displayLabel.getText();
			afterNumberClick=false;
			afterEqualClick=false;
			
			//Minus Button Action
		}else if(e.getSource().equals(minusButton)){
						
			if(oldValue=="0") return;

			if(oldValue!="" && afterNumberClick) {
				try {
					newValue=displayLabel.getText();
					numberFormat = NumberFormat.getInstance();
					oldValueF = numberFormat.parse(oldValue).floatValue();
					newValueF = numberFormat.parse(newValue).floatValue();
				} catch (ParseException e1) {
					e1.printStackTrace();
				}

			if(operationValue.equals("minus")) {
				result=oldValueF-newValueF;

			}else if(operationValue.equals("plus")) {
				result=oldValueF+newValueF;

			}else if(operationValue.equals("division")) {
				if(newValueF !=0) {
					result=oldValueF/newValueF;
				}else {
					displayLabel.setText("Cannot divide by zero");
					return;
				}

			}else if(operationValue.equals("multiplication")) {
				result=oldValueF*newValueF;
					}
			
			displayLabel.setText(numberFormat.format(result));
			}
			operationValue="minus";
			isOperatorClicked=true;
			oldValue=displayLabel.getText();
			afterNumberClick=false;
			afterEqualClick=false;
			
			//Plus Button Action
		}else if(e.getSource().equals(plusButton)){
			
			if(oldValue=="0") return;

			if(oldValue!="" && afterNumberClick) {
				try {
					newValue=displayLabel.getText();
					numberFormat = NumberFormat.getInstance();
					oldValueF = numberFormat.parse(oldValue).floatValue();
					newValueF = numberFormat.parse(newValue).floatValue();
				} catch (ParseException e1) {
					e1.printStackTrace();
				}

			if(operationValue.equals("minus")) {
				result=oldValueF-newValueF;

			}else if(operationValue.equals("plus")) {
				result=oldValueF+newValueF;

			}else if(operationValue.equals("division")) {
				if(newValueF !=0) {
					result=oldValueF/newValueF;
				}else {
					displayLabel.setText("Cannot divide by zero");
					return;
				}

			}else if(operationValue.equals("multiplication")) {
				result=oldValueF*newValueF;
					}
			
			displayLabel.setText(numberFormat.format(result));
			}
			
		 	operationValue="plus";
			isOperatorClicked=true;
			oldValue=displayLabel.getText();
			afterNumberClick=false;
			afterEqualClick=false;
		
		}
	}
}
