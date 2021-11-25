 new TextField(
              autocorrect: true,
              autofocus: true,
              obscureText: true,////// to invisibale word
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  icon: Icon(Icons.phone_android),
                  hintText: '+963996...',
                  labelText: 'Enter Your Number'),
                  onChanged: onChange,
            )