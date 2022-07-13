import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../platform_web_view/platform_web_view_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubThemesWidget extends StatefulWidget {
  const SubThemesWidget({
    Key key,
    this.theme,
    this.currentSubjectSelectorID,
  }) : super(key: key);

  final ThemesRecord theme;
  final String currentSubjectSelectorID;

  @override
  _SubThemesWidgetState createState() => _SubThemesWidgetState();
}

class _SubThemesWidgetState extends State<SubThemesWidget> {
  TextEditingController txtSearchInpController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    txtSearchInpController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '${widget.theme.subjectName} ${widget.theme.className}',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Nunito Sans',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      width: 1,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                      child: Text(
                        '${widget.theme.number} ${widget.theme.name}',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                    ),
                  ),
                ),
              ),
              FutureBuilder<List<SubThemesRecord>>(
                future: querySubThemesRecordOnce(
                  queryBuilder: (subThemesRecord) => subThemesRecord
                      .where('theme_id', isEqualTo: widget.theme.id)
                      .orderBy('sort_order'),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ),
                    );
                  }
                  List<SubThemesRecord> containerSubThemesRecordList =
                      snapshot.data;
                  return Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.55,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 4, 0),
                                  child: TextFormField(
                                    controller: txtSearchInpController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'txtSearchInpController',
                                      Duration(milliseconds: 1000),
                                      () => setState(() {}),
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x6657636C),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x6657636C),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Color(0xA557636C),
                                        size: 20,
                                      ),
                                      suffixIcon:
                                          txtSearchInpController.text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () => setState(
                                                    () => txtSearchInpController
                                                        ?.clear(),
                                                  ),
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: Color(0xA557636C),
                                                    size: 24,
                                                  ),
                                                )
                                              : null,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(8, 12, 8, 0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0,
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    )
                                  ],
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                child: Builder(
                                  builder: (context) {
                                    final subthemesListFiltered = functions
                                            .filterSubThemesList(
                                                containerSubThemesRecordList
                                                    .toList(),
                                                txtSearchInpController.text)
                                            .map((e) => e)
                                            .toList()
                                            ?.toList() ??
                                        [];
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: subthemesListFiltered.length,
                                      itemBuilder: (context,
                                          subthemesListFilteredIndex) {
                                        final subthemesListFilteredItem =
                                            subthemesListFiltered[
                                                subthemesListFilteredIndex];
                                        return Material(
                                          color: Colors.transparent,
                                          elevation: 0,
                                          child: Container(
                                            width: double.infinity,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                )
                                              ],
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 2, 0, 2),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              PlatformWebViewWidget(
                                                            platformURL: functions
                                                                .getSubThemePlatformURL(
                                                                    FFAppState()
                                                                        .baseSimulatorURL,
                                                                    widget
                                                                        .theme,
                                                                    subthemesListFilteredItem,
                                                                    widget
                                                                        .currentSubjectSelectorID),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.7,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(8,
                                                                      0, 0, 0),
                                                          child: AutoSizeText(
                                                            '${subthemesListFilteredItem.number} ${subthemesListFilteredItem.name}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize: 16,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 12,
                                                    borderWidth: 1,
                                                    buttonSize: 60,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryColor,
                                                    icon: Icon(
                                                      FFIcons.kismartLogo,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 40,
                                                    ),
                                                    onPressed: () async {
                                                      await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              PlatformWebViewWidget(
                                                            platformURL: functions
                                                                .getSubThemePlatformURL(
                                                                    FFAppState()
                                                                        .baseSimulatorURL,
                                                                    widget
                                                                        .theme,
                                                                    subthemesListFilteredItem,
                                                                    widget
                                                                        .currentSubjectSelectorID),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
