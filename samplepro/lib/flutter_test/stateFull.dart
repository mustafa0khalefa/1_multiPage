class mustafa extends StatefulWidget {
  @override
  _mustafaState createState() => _mustafaState();
}

class _mustafaState extends State<mustafa> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green.shade500,
        title: new Text('data'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20),
        child: new Row(
          children: [
            IconButton(
              padding: const EdgeInsets.all(30),
              alignment: Alignment.centerRight,
              icon: (_isFavorited
                  ? const Icon(Icons.star)
                  : const Icon(Icons.star_border)),
              color: Colors.red[500],
              onPressed: _toggleFavorite,
            ),
            new Text('$_favoriteCount'),
          ],
        ),
      ),
    );
  }
}
