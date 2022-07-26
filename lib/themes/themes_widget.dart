import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemesWidget extends StatefulWidget {
  const ThemesWidget({
    Key? key,
    this.currentCategoryID,
    this.currentCategoryName,
    this.currentCategoryDescription,
  }) : super(key: key);

  final String? currentCategoryID;
  final String? currentCategoryName;
  final String? currentCategoryDescription;

  @override
  _ThemesWidgetState createState() => _ThemesWidgetState();
}

class _ThemesWidgetState extends State<ThemesWidget> {
  TextEditingController? txtSearchInpController;
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
            context.pop();
          },
        ),
        title: Text(
          widget.currentCategoryName!,
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 160,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 24, 8, 12),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 1,
                        child: Container(
                          width: double.infinity,
                          height: 48,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              width: 1,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Text(
                              widget.currentCategoryDescription!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 72,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                          child: StreamBuilder<List<CategoriesRecord>>(
                            stream: queryCategoriesRecord(
                              queryBuilder: (categoriesRecord) =>
                                  categoriesRecord
                                      .where('parent_id',
                                          isEqualTo: widget.currentCategoryID)
                                      .orderBy('class_name'),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<CategoriesRecord>
                                  listViewCategoriesRecordList = snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: listViewCategoriesRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewCategoriesRecord =
                                      listViewCategoriesRecordList[
                                          listViewIndex];
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 0, 8, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            setState(() =>
                                                FFAppState().currentClassID =
                                                    listViewCategoriesRecord!
                                                        .classId!);
                                            setState(() =>
                                                FFAppState().currentSubjectID =
                                                    listViewCategoriesRecord!
                                                        .subjectId!);
                                            setState(() => FFAppState()
                                                    .subjectSelectionCode =
                                                listViewCategoriesRecord!
                                                    .code!);
                                            setState(() => FFAppState()
                                                    .subjectSelectionID =
                                                listViewCategoriesRecord!.id!);
                                          },
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                              height: 48,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4,
                                                    color: Color(0xC08E77EE),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                gradient: LinearGradient(
                                                  colors: [
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor
                                                  ],
                                                  stops: [0, 1],
                                                  begin: AlignmentDirectional(
                                                      -1, 0),
                                                  end: AlignmentDirectional(
                                                      1, 0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                  color: Color(0xFF896BE6),
                                                  width: 0,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Text(
                                                  listViewCategoriesRecord!
                                                      .className!,
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              FutureBuilder<List<ThemesRecord>>(
                future: queryThemesRecordOnce(
                  queryBuilder: (themesRecord) => themesRecord
                      .where('subject_id',
                          isEqualTo: FFAppState().currentSubjectID)
                      .where('class_id', isEqualTo: FFAppState().currentClassID)
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
                  List<ThemesRecord> containerThemesRecordList = snapshot.data!;
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
                                      suffixIcon: txtSearchInpController!
                                              .text.isNotEmpty
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
                                    final themesListFiltered = functions
                                            .filterThemesList(
                                                containerThemesRecordList
                                                    .toList(),
                                                txtSearchInpController!.text)
                                            .map((e) => e)
                                            .toList()
                                            ?.toList() ??
                                        [];
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: themesListFiltered.length,
                                      itemBuilder:
                                          (context, themesListFilteredIndex) {
                                        final themesListFilteredItem =
                                            themesListFiltered[
                                                themesListFilteredIndex];
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
                                                      context.pushNamed(
                                                        'SubThemes',
                                                        queryParams: {
                                                          'theme': serializeParam(
                                                              themesListFilteredItem,
                                                              ParamType
                                                                  .Document),
                                                          'currentSubjectSelectorID':
                                                              serializeParam(
                                                                  FFAppState()
                                                                      .subjectSelectionID,
                                                                  ParamType
                                                                      .String),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          'theme':
                                                              themesListFilteredItem,
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
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
                                                            '${themesListFilteredItem!.number} ${themesListFilteredItem!.name}',
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
                                                      context.pushNamed(
                                                        'PlatformWebView',
                                                        queryParams: {
                                                          'platformURL': serializeParam(
                                                              functions.getThemePlatformURL(
                                                                  FFAppState()
                                                                      .baseCategoryPlatformURL!,
                                                                  FFAppState()
                                                                      .subjectSelectionCode!,
                                                                  FFAppState()
                                                                      .subjectSelectionGroupCode!,
                                                                  themesListFilteredItem!
                                                                      .code!),
                                                              ParamType.String),
                                                        }.withoutNulls,
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
