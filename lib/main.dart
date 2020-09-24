import 'package:flutter/material.dart';
import 'my_quote.dart';
import 'quote_card.dart';

//Always delete project->test to avoid unnecessary runtime issue
void main() => runApp(MaterialApp(home: QuoteList(),));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

//inheritance
class _QuoteListState extends State<QuoteList> {

  //Build your actions here
  List<Quote> quotes = [
    Quote('Oscar Wilde', 'Be yourself; everyone else is already taken'),
    Quote('Doc Surprise', 'I have nothing to declare except my genius'),
    Quote('Brune Demo', 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        //.map function loops through 'quotes' list_array, save it to variable(quote)
        //return the value(quote) in Text, and print in list format
        // children: quotes.map((quote) => Text('${quote.author} - ${quote.text}')).toList(),//print each loop into list
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }

        )).toList(),//map & print each loop into list

      ),
    );
  }
}