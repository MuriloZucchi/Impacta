import '/flutter_flow/flutter_flow_util.dart';
import '/pages/calabresa/calabresa_widget.dart';
import '/pages/frango/frango_widget.dart';
import '/pages/pernil/pernil_widget.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for Row widget.
  ScrollController? rowController;
  // Model for calabresa component.
  late CalabresaModel calabresaModel1;
  // Model for frango component.
  late FrangoModel frangoModel1;
  // Model for pernil component.
  late PernilModel pernilModel1;
  // Model for calabresa component.
  late CalabresaModel calabresaModel2;
  // Model for frango component.
  late FrangoModel frangoModel2;
  // Model for pernil component.
  late PernilModel pernilModel2;
  // Model for calabresa component.
  late CalabresaModel calabresaModel3;
  // Model for frango component.
  late FrangoModel frangoModel3;
  // Model for pernil component.
  late PernilModel pernilModel3;
  // Model for calabresa component.
  late CalabresaModel calabresaModel4;
  // Model for frango component.
  late FrangoModel frangoModel4;
  // Model for pernil component.
  late PernilModel pernilModel4;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    rowController = ScrollController();
    calabresaModel1 = createModel(context, () => CalabresaModel());
    frangoModel1 = createModel(context, () => FrangoModel());
    pernilModel1 = createModel(context, () => PernilModel());
    calabresaModel2 = createModel(context, () => CalabresaModel());
    frangoModel2 = createModel(context, () => FrangoModel());
    pernilModel2 = createModel(context, () => PernilModel());
    calabresaModel3 = createModel(context, () => CalabresaModel());
    frangoModel3 = createModel(context, () => FrangoModel());
    pernilModel3 = createModel(context, () => PernilModel());
    calabresaModel4 = createModel(context, () => CalabresaModel());
    frangoModel4 = createModel(context, () => FrangoModel());
    pernilModel4 = createModel(context, () => PernilModel());
  }

  @override
  void dispose() {
    columnController?.dispose();
    rowController?.dispose();
    calabresaModel1.dispose();
    frangoModel1.dispose();
    pernilModel1.dispose();
    calabresaModel2.dispose();
    frangoModel2.dispose();
    pernilModel2.dispose();
    calabresaModel3.dispose();
    frangoModel3.dispose();
    pernilModel3.dispose();
    calabresaModel4.dispose();
    frangoModel4.dispose();
    pernilModel4.dispose();
  }
}
