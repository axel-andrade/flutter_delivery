import 'dart:io';
import 'package:flutter/material.dart';
import 'package:masflu/models/client.dart';

class ClientListItem extends StatelessWidget {
  final ClientModel model;
  final bool isSkeleton;

  ClientListItem({@required this.model, @required this.isSkeleton});

  @override
  Widget build(BuildContext context) {
    if (isSkeleton == true) {
      return Container(
        width: 35,
        padding: EdgeInsets.only(top: 10, left: 12, right: 12),
        alignment: Alignment.center,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: ListTile(
            title: Text(''),
          ),
        ),
      );
    } else {
      return ListTile(
          leading: GestureDetector(
            onTap: () => () {},
            child: Container(
              width: 48,
              height: 48,
              padding: EdgeInsets.symmetric(vertical: 4.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.circular(48),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/profile-picture1.png")
                    // : FileImage(
                    //     File(model.picture),
                    //   ),
                    ),
              ),
            ),
          ),
          //  trailing:Icon(
          //           EvaIcons.arrowIosForward,
          //           color: Theme.of(context).primaryColor,
          //           size: 30
          //         ),
          title: Text(model.name),
          subtitle: Text(model.phone),
          onTap: () {
            // Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => DetailsView(
            //           id: model.id,
            //         ),
            //       ),
            //     );
          });
    }
  }
}

// class ClientListItem extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String subtitle;
//   final Function callback;
//   final bool isSkeleton;

//   ClientListItem(
//       {this.icon, this.title, this.subtitle, this.callback, this.isSkeleton});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
//       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
//       child: Row(
//         children: <Widget>[
//           Container(
//             width: 40.0,
//             height: 40.0,
//             margin: EdgeInsets.only(right: 15.0),
//             color: Theme.of(context).canvasColor,
//           ),
//           isSkeleton != true
//               ? Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       title,
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     Text(subtitle),
//                   ],
//                 )
//               : Expanded(
//                   child: Container(
//                     color: Theme.of(context).canvasColor,
//                   ),
//                 )
//         ],
//       ),
//     );
//   }
// }

// class ClientListItem extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String subtitle;
//   final Function callback;

//   ClientListItem(
//       {@required this.icon,
//       @required this.title,
//       @required this.subtitle,
//       @required this.callback});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: GestureDetector(
//         onTap: () => callback(),
//         child: Container(
//           width: 30,
//           height: 30,
//           padding: EdgeInsets.symmetric(vertical: 4.0),
//           alignment: Alignment.center,
//           child: Icon(icon, color: Theme.of(context).primaryColor),
//         ),
//       ),
//       title: Text(
//         title,
//         style: TextStyle(
//             color: Theme.of(context).accentColor, fontWeight: FontWeight.bold),
//       ),
//       subtitle: Text(
//         subtitle,
//         style: TextStyle(color: Theme.of(context).accentColor),
//       ),
//       onTap: () => callback(),
//     );
//   }
// }
