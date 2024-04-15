import 'package:myfestivalpoast_app/utilies/headers.dart';

AppBar appBar1({
  String title = "Home Page",
  required bool isList,
  required void Function() toggleList,
}) {
  return AppBar(
    title: Text(title),
    actions: [
      IconButton(
        onPressed: toggleList,
        icon: Icon(isList ? Icons.festival_rounded : Icons.festival),
      )
    ],
  );
}

AppBar appBar({
  String title = "Festival Page",
  required bool isList,
  required void Function() toggleList,
}) {
  return AppBar(
    backgroundColor: const Color(0xffaad1cb),
    title: Text(title),
    actions: [
      IconButton(
        onPressed: toggleList,
        icon: Icon(isList ? Icons.festival_rounded : Icons.festival),
      )
    ],
  );
}

AppBar appBar2({
  String title = "Quotes world",
  required bool isList,
  required void Function() toggleList,
}) {
  return AppBar(
    title: Text(title),
    actions: [
      IconButton(
        onPressed: toggleList,
        icon: Icon(isList ? Icons.grid_view_rounded : Icons.list),
      )
    ],
  );
}
