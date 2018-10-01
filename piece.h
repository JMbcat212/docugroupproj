// Brock Ferrell
// CS2401
// November 23, 2015
// Project7

#ifndef PIECE_H
#define PIECE_H
enum color {black, white, blank};

class piece {
public:
	piece() {theColor = blank;}
	
	/*function: This function flips the colour of the piece while playing the game 
	*/
	void flip()
	{
		if (theColor == white) {
			theColor = black;
		}
		else if (theColor == black) {
			theColor = white;
		}
	}

	bool is_blank()const {return theColor == blank;} /// this function returns a blank colour
	bool is_black()const {return theColor == black;} /// this function returns a black colour
	bool is_white()const {return theColor == white;} /// this function returns a white colour
	void set_white() {theColor = white;} /// this function sets the color of piece to white
	void set_black() {theColor = black;} /// This function sets the color of piece to black

private:
	color theColor;

};

#endif

