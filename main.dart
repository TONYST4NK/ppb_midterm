import 'package:flutter/material.dart'; 
import 'package:reviews_slider/reviews_slider.dart'; 

void main() { 
	runApp(const myApp());
} 

class myApp extends StatelessWidget { 
	const myApp({ 
		super.key 
	}); 

	@override 
	Widget build(BuildContext context) { 
		return MaterialApp( 
			title: 'Review Slider', 
			theme: ThemeData( 
				primarySwatch: Colors.blue, 
			), 
			home: const MyHomePage(title: 'Restaurant Review'), 
		); 
	} 
} 

class MyHomePage extends StatefulWidget { 
	const MyHomePage({ 
		super.key, 
		required this.title 
	}); 

	final String title; 

	@override 
	State < MyHomePage > createState() => _MyHomePageState(); 
} 

class _MyHomePageState extends State < MyHomePage > { 
	int _counter = 0; 

	void _incrementCounter() { 
		setState(() { 
			_counter++; 
		}); 
	} 
 
	List < String > list = ['Terrible', 'Bad', 'Okay', 'Good', 'Great']; 
	
	
String selected_valueoftxt = ""; 

	@override 
	Widget build(BuildContext context) { 
		return Scaffold( 
			appBar: AppBar( 
				title: Text(widget.title), 
			), 
			body: Column( 
				mainAxisAlignment: MainAxisAlignment.center, 
				children: [ 
					Center( 
						child: ReviewSlider( 
							initialValue: 3, 
							options: list, 
							onChange: (int value) { 
								selected_valueoftxt = list[value]; 
								setState(() { 
								}); 
							} 
						), 
					), 
				// Now we implemented text and in this text our selected face text value show 
					Text(selected_valueoftxt, style: TextStyle( 
						color: Colors.black, 
						fontSize: 20, 
					), ) 
				], 
			), 
		);
	} 
}
