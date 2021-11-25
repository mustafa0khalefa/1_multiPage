class mustafa extends StatelessWidget {
  void onClick() {
    print("hleooooo");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: new AppBar(
        title: new Text("khalefa"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              icon: const Icon(Icons.accessible_forward_sharp),
              onPressed: onClick)
        ],
      ),
      body: new Container(
          alignment: Alignment.center,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.access_alarm_rounded),
                onPressed: onClick,
              ),
              IconButton(
                icon: const Icon(Icons.access_alarm_rounded),
                onPressed: onClick,
              ),
              Text(
                "hi mustafa",
                style: new TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              new InkWell(
                child: Text(
                  "InkWell",
                  style: new TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onDoubleTap: onClick,
                onTap: null,
              )
            ],
          )),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint("floatingActionButton"),
        tooltip: 'bluetooth',
        child: new Icon(Icons.bluetooth),
        backgroundColor: Colors.yellow.shade600,
      ),
    );
  }
}
