import 'package:flutter/material.dart';

class OfferRideScreen extends StatefulWidget {
  @override
  _OfferRideScreenState createState() => _OfferRideScreenState();
}

class _OfferRideScreenState extends State<OfferRideScreen> {
  int _availableSeats = 1;
  bool _isAirConditioned = false;
  bool _isSmokingAllowed = false;
  bool _isStopInBetweenAllowed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offer Ride'),
      centerTitle: true, // Center the title
      backgroundColor: Color(0xFF800000),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'From',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'To',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        ElevatedButton(
                          child: Text('Select'),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF800000), // set background color to 0xFF800000
                          ),
                          onPressed: () {
                            // TODO: Implement date picker
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Time',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        ElevatedButton(
                          child: Text('Select'),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF800000), // set background color to 0xFF800000
                          ),
                          onPressed: () {
                            // TODO: Implement time picker
                          },
                        ),
                      ],
                    ),

                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Available Seats',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: Text('-'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF800000), // set background color to 0xFF800000
                      ),
                      onPressed: () {
                        setState(() {
                          if (_availableSeats > 1) {
                            _availableSeats--;
                          }
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    '$_availableSeats',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: ElevatedButton(
                      child: Text('+'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF800000), // set background color to 0xFF800000
                      ),
                      onPressed: () {
                        setState(() {
                          _availableSeats++;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Options',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 10.0),
              CheckboxListTile(
                title: Text('Air Conditioned?'),
                value: _isAirConditioned,
                onChanged: (bool? value) {
                  setState(() {
                    _isAirConditioned = value ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Smoking?'),
                value: _isSmokingAllowed,
                onChanged: (bool? value) {
                  setState(() {
                    _isSmokingAllowed = value ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Vaccinated?'),
                value: _isStopInBetweenAllowed,
                onChanged: (bool? value) {
                  setState(() {
                    _isStopInBetweenAllowed = value ?? false;
                  });
                },
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                child: Text('Offer Ride'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF800000), // set background color to 0xFF800000
                ),
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


