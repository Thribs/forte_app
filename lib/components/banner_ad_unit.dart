import 'dart:html' as html;
import 'dart:ui_web';

import 'package:flutter/material.dart';

String viewId = "your-view-id";

class BannerAdUnit extends StatelessWidget {
  const BannerAdUnit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    platformViewRegistry.registerViewFactory(
        viewId,
        (int id) => html.IFrameElement()
          ..style.width = '100%'
          ..style.height = '100%'
          ..srcdoc = '''  
        <!DOCTYPE html>  
 <html> <head> </head> <body> <div data-frill-widget="ca-pub-6141143371416503" style="width: 340px; height: 460px;"></div>  
 <script async src="url"></script>
 </body>  
 </html>           '''
          ..style.border = 'none');

    return SizedBox(
      height: 460,
      width: 340,
      child: HtmlElementView(
        viewType: viewId,
      ),
    );
  }
}
