drawer: new Drawer(
        child: new Container(
          padding: const EdgeInsets.all(20),
          child: new Column(
            children: [
              BackButton(
                onPressed: () => Navigator.pop(context),
                color: Colors.deepOrange,
              ),
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
              new TextField(
                autocorrect: true,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    icon: Icon(Icons.phone_android),
                    hintText: '+963996...',
                    labelText: 'Enter Your Number'),
                onChanged: onChange,
              ),
              new Text('$val'),
              new Checkbox(
                value: valueCheckbox1,
                onChanged: onChangedcheCheckbox1,
                activeColor: Colors.red.shade400,
              ),
              new Checkbox(
                  value: valueCheckbox2, onChanged: onChangedcheCheckbox2),
              new CheckboxListTile(
                secondary: new Icon(Icons.air_sharp),
                value: valueCheckbox3,
                onChanged: onChangedcheCheckbox3,
                activeColor: Colors.green.shade500,
                title: new Text('hi title'),
                subtitle: new Text('hi subtitle'),
              ),
              Switch(value: valueSwitch1, onChanged: onChangedSwitch1),
              SwitchListTile(
                value: valueSwitch2,
                onChanged: onChangedSwitch2,
                activeColor: Colors.purple.shade500,
                title: new Text('hi title'),
                subtitle: new Text('hi subtitle'),
              )
            ],
          ),
        ),
      ),