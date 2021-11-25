void showBottomSheet() {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return new Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text('Hello Mustafa'),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: new Text('close'))
            ],
          ),
        );
      });
}
