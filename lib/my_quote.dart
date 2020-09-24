class Quote {

  //Set properties
  String text;
  String author;


  //Set constructor
  //Constructor allows to assign values to the instantiated class
  //assign user's values; text/author to the properties above
  Quote(this.text, this.author);

}
//1st object:You must assign values in order of input in constructor
//Quote myQuote = Quote(author:'Oscar Wilde', text:'This is the quote text');//2nd constructor doesn't follow order
