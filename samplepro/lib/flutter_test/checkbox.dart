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
            )