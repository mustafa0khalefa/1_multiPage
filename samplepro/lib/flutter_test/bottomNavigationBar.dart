 bottomNavigationBar: Container(
        height: 60,
        color: Colors.black12,
        child: InkWell(
          onTap: () => print('tap on close'),
          child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.close,
                  color: Theme.of(context).accentColor,
                ),
                Text('close'),
              ],
            ),
          ),
        ),
      )