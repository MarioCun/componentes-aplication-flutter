import 'package:conponentes_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _slidervalue = 100;
  bool _checkvalue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider && Checks'),
        ),
        body: Column(
          children: [
            Slider(
                min: 50,
                max: 400,
                value: _slidervalue,
                activeColor: AppTheme.primary,
                onChanged: _checkvalue
                    ? (value) {
                        _slidervalue = value;
                        setState(() {});
                      }
                    : null),
            Checkbox(
              value: _checkvalue,
              onChanged: (value) {
                _checkvalue = value ?? true;
                setState(() {});
              },
            ),
            Switch(
              value: _checkvalue,
              onChanged: (value) => setState(() {
                _checkvalue = value;
              }),
            ),
            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Activar o desactivar slider'),
              value: _checkvalue,
              onChanged: (value) {
                _checkvalue = value ?? true;
                setState(() {});
              },
            ),
            SwitchListTile(
              activeColor: AppTheme.primary,
              title: const Text('Activar o desactivar slider'),
              value: _checkvalue,
              onChanged: (value) {
                _checkvalue = value ;
                setState(() {});
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://www.snsmarketing.es/blog/wp-content/uploads/2016/02/gifanimado.gif'),
                  fit: BoxFit.contain,
                  width: _slidervalue,
                ),
              ),
            ),
            const SizedBox(height: 50)
          ],
        ));
  }
}
