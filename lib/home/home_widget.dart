import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../platform_web_view/platform_web_view_widget.dart';
import '../sign_up/sign_up_widget.dart';
import '../themes/themes_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_search/text_search.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  List<CategoriesRecord> simpleSearchResults = [];
  String uploadedFileUrl2 = '';
  String uploadedFileUrl1 = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String uploadedFileUrl3 = '';

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
            Icons.menu,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 30,
          ),
          onPressed: () async {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: Text(
          'Учимся с iSmart',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Nunito Sans',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 22,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.exit_to_app,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30,
            ),
            onPressed: () async {
              await signOut();
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Drawer(
          elevation: 16,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryColor,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
                ),
                if ((currentUserEmail != null && currentUserEmail != ''))
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: AuthUserStreamWidget(
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      currentUserPhoto,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.01, -2.2),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.photo_camera,
                                    color: Color(0x73FFFFFF),
                                    size: 40,
                                  ),
                                  onPressed: () async {
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      allowPhoto: true,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      showUploadMessage(
                                        context,
                                        'Uploading file...',
                                        showLoading: true,
                                      );
                                      final downloadUrls = (await Future.wait(
                                              selectedMedia.map((m) async =>
                                                  await uploadData(
                                                      m.storagePath, m.bytes))))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
                                      if (downloadUrls != null &&
                                          downloadUrls.length ==
                                              selectedMedia.length) {
                                        setState(() => uploadedFileUrl3 =
                                            downloadUrls.first);
                                        showUploadMessage(
                                          context,
                                          'Success!',
                                        );
                                      } else {
                                        showUploadMessage(
                                          context,
                                          'Failed to upload media',
                                        );
                                        return;
                                      }
                                    }

                                    final usersUpdateData =
                                        createUsersRecordData(
                                      photoUrl: uploadedFileUrl3,
                                    );
                                    await currentUserReference!
                                        .update(usersUpdateData);
                                  },
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: AuthUserStreamWidget(
                                child: Text(
                                  currentUserDisplayName,
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Nunito Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Text(
                              currentUserEmail,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 64, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await signOut();
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpWidget(),
                                  ),
                                );
                              },
                              text: 'Выйти',
                              icon: Icon(
                                Icons.exit_to_app,
                                size: 15,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40,
                                color: Color(0xD5FFCC00),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Nunito Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                elevation: 2,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if ((currentUserEmail == null || currentUserEmail == ''))
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Приятно, что зашли!',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 64, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await signOut();
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpWidget(),
                                  ),
                                );
                              },
                              text: 'Зарегистрироваться?',
                              icon: Icon(
                                Icons.person,
                                size: 15,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40,
                                color: Color(0xD5FFCC00),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Nunito Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                elevation: 2,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: StreamBuilder<List<CategoriesRecord>>(
                    stream: queryCategoriesRecord(
                      queryBuilder: (categoriesRecord) => categoriesRecord
                          .where('type', isEqualTo: 'category')
                          .where('is_visible', isEqualTo: true),
                      singleRecord: true,
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
                      List<CategoriesRecord> columnCategoriesRecordList =
                          snapshot.data!;
                      // Return an empty Container when the document does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final columnCategoriesRecord =
                          columnCategoriesRecordList.first;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                            child: Container(
                              width: double.infinity,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                                shape: BoxShape.rectangle,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(0),
                                    ),
                                    child: Image.network(
                                      functions.getImageURL(
                                          FFAppState().baseURL!,
                                          columnCategoriesRecord!.imageUrl!),
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(8),
                                          topLeft: Radius.circular(0),
                                          topRight: Radius.circular(8),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4, 0, 4, 0),
                                          child: AutoSizeText(
                                            columnCategoriesRecord!.name!,
                                            style: FlutterFlowTheme.of(context)
                                                .title1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (valueOrDefault(
                                          currentUserDocument?.isAdmin,
                                          false) ??
                                      true)
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.02, -1.08),
                                      child: AuthUserStreamWidget(
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 20,
                                          borderWidth: 1,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.more_vert,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 30,
                                          ),
                                          onPressed: () async {
                                            final selectedMedia =
                                                await selectMediaWithSourceBottomSheet(
                                              context: context,
                                              allowPhoto: true,
                                            );
                                            if (selectedMedia != null &&
                                                selectedMedia.every((m) =>
                                                    validateFileFormat(
                                                        m.storagePath,
                                                        context))) {
                                              showUploadMessage(
                                                context,
                                                'Uploading file...',
                                                showLoading: true,
                                              );
                                              final downloadUrls = (await Future
                                                      .wait(selectedMedia.map(
                                                          (m) async =>
                                                              await uploadData(
                                                                  m.storagePath,
                                                                  m.bytes))))
                                                  .where((u) => u != null)
                                                  .map((u) => u!)
                                                  .toList();
                                              ScaffoldMessenger.of(context)
                                                  .hideCurrentSnackBar();
                                              if (downloadUrls != null &&
                                                  downloadUrls.length ==
                                                      selectedMedia.length) {
                                                setState(() =>
                                                    uploadedFileUrl1 =
                                                        downloadUrls.first);
                                                showUploadMessage(
                                                  context,
                                                  'Success!',
                                                );
                                              } else {
                                                showUploadMessage(
                                                  context,
                                                  'Failed to upload media',
                                                );
                                                return;
                                              }
                                            }

                                            final categoriesUpdateData =
                                                createCategoriesRecordData(
                                              imageUrl: uploadedFileUrl1,
                                            );
                                            await columnCategoriesRecord!
                                                .reference
                                                .update(categoriesUpdateData);
                                          },
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/620d2782cf9e172916fd74d0_main_image.png',
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                              child: StreamBuilder<List<CategoriesRecord>>(
                                stream: queryCategoriesRecord(
                                  queryBuilder: (categoriesRecord) =>
                                      categoriesRecord
                                          .where('parent_id',
                                              isEqualTo:
                                                  columnCategoriesRecord!.id)
                                          .where('is_visible', isEqualTo: true)
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                      ),
                                    );
                                  }
                                  List<CategoriesRecord>
                                      gridViewCategoriesRecordList =
                                      snapshot.data!;
                                  return GridView.builder(
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 4,
                                      mainAxisSpacing: 4,
                                      childAspectRatio: 1.5,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        gridViewCategoriesRecordList.length,
                                    itemBuilder: (context, gridViewIndex) {
                                      final gridViewCategoriesRecord =
                                          gridViewCategoriesRecordList[
                                              gridViewIndex];
                                      return Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    1,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xFFF0F7EA),
                                                      Color(0xFFDDEBFC)
                                                    ],
                                                    stops: [0, 1],
                                                    begin: AlignmentDirectional(
                                                        -1, 0),
                                                    end: AlignmentDirectional(
                                                        1, 0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    color: Color(0xFFE2EFFF),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: InkWell(
                                                  onTap: () async {
                                                    setState(() => FFAppState()
                                                            .subjectSelectionGroupCode =
                                                        gridViewCategoriesRecord!
                                                            .code!);
                                                    await queryCategoriesRecordOnce()
                                                        .then(
                                                          (records) => simpleSearchResults =
                                                              TextSearch(
                                                            records
                                                                .map(
                                                                  (record) =>
                                                                      TextSearchItem(
                                                                          record,
                                                                          [
                                                                        record
                                                                            .parentId!
                                                                      ]),
                                                                )
                                                                .toList(),
                                                          )
                                                                  .search(
                                                                      valueOrDefault<
                                                                          String>(
                                                                    gridViewCategoriesRecord!
                                                                        .id,
                                                                    '\"\"',
                                                                  ))
                                                                  .map((r) =>
                                                                      r.object)
                                                                  .toList(),
                                                        )
                                                        .onError((_, __) =>
                                                            simpleSearchResults =
                                                                [])
                                                        .whenComplete(() =>
                                                            setState(() {}));

                                                    setState(() => FFAppState()
                                                            .currentSubjectID =
                                                        functions
                                                            .getFirstCategoryFromList(
                                                                simpleSearchResults
                                                                    .toList(),
                                                                gridViewCategoriesRecord!
                                                                    .id!)!
                                                            .subjectId!);
                                                    setState(() => FFAppState()
                                                            .currentClassID =
                                                        functions
                                                            .getFirstCategoryFromList(
                                                                simpleSearchResults
                                                                    .toList(),
                                                                gridViewCategoriesRecord!
                                                                    .id!)!
                                                            .classId!);
                                                    setState(() => FFAppState()
                                                            .subjectSelectionCode =
                                                        functions
                                                            .getFirstCategoryFromList(
                                                                simpleSearchResults
                                                                    .toList(),
                                                                gridViewCategoriesRecord!
                                                                    .id!)!
                                                            .code!);
                                                    setState(() => FFAppState()
                                                            .subjectSelectionID =
                                                        functions
                                                            .getFirstCategoryFromList(
                                                                simpleSearchResults
                                                                    .toList(),
                                                                gridViewCategoriesRecord!
                                                                    .id!)!
                                                            .id!);
                                                    await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ThemesWidget(
                                                          currentCategoryID:
                                                              gridViewCategoriesRecord!
                                                                  .id,
                                                          currentCategoryName:
                                                              gridViewCategoriesRecord!
                                                                  .name,
                                                          currentCategoryDescription:
                                                              gridViewCategoriesRecord!
                                                                  .description,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 4, 0, 0),
                                                        child: Container(
                                                          width: 70,
                                                          height: 70,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFEEEEEE),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                              child:
                                                                  Image.network(
                                                                functions.getImageURL(
                                                                    FFAppState()
                                                                        .baseURL!,
                                                                    gridViewCategoriesRecord!
                                                                        .imageUrl!),
                                                                width: 70,
                                                                height: 70,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 24,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFEEEEEE),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Text(
                                                          gridViewCategoriesRecord!
                                                              .name!,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .subtitle1
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito Sans',
                                                                fontSize: 18,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.01, -0.6),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 8,
                                              borderWidth: 1,
                                              buttonSize: 42,
                                              fillColor: Color(0x9AFFCC00),
                                              icon: Icon(
                                                FFIcons.kismartLogo,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 21,
                                              ),
                                              onPressed: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        PlatformWebViewWidget(
                                                      platformURL: functions
                                                          .getCategoryPlatformURL(
                                                              FFAppState()
                                                                  .baseCategoryPlatformURL!,
                                                              gridViewCategoriesRecord!
                                                                  .code!,
                                                              gridViewCategoriesRecord!
                                                                  .type!,
                                                              '\"\"',
                                                              '\"\"',
                                                              '\"\"',
                                                              '\"\"'),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          if (valueOrDefault(
                                                  currentUserDocument?.isAdmin,
                                                  false) ??
                                              true)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.02, -1.08),
                                              child: AuthUserStreamWidget(
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 20,
                                                  borderWidth: 1,
                                                  buttonSize: 40,
                                                  icon: Icon(
                                                    Icons.more_vert,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 30,
                                                  ),
                                                  onPressed: () async {
                                                    final selectedMedia =
                                                        await selectMediaWithSourceBottomSheet(
                                                      context: context,
                                                      allowPhoto: true,
                                                    );
                                                    if (selectedMedia != null &&
                                                        selectedMedia.every((m) =>
                                                            validateFileFormat(
                                                                m.storagePath,
                                                                context))) {
                                                      showUploadMessage(
                                                        context,
                                                        'Uploading file...',
                                                        showLoading: true,
                                                      );
                                                      final downloadUrls = (await Future
                                                              .wait(selectedMedia
                                                                  .map((m) async =>
                                                                      await uploadData(
                                                                          m.storagePath,
                                                                          m.bytes))))
                                                          .where((u) => u != null)
                                                          .map((u) => u!)
                                                          .toList();
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .hideCurrentSnackBar();
                                                      if (downloadUrls !=
                                                              null &&
                                                          downloadUrls.length ==
                                                              selectedMedia
                                                                  .length) {
                                                        setState(() =>
                                                            uploadedFileUrl2 =
                                                                downloadUrls
                                                                    .first);
                                                        showUploadMessage(
                                                          context,
                                                          'Success!',
                                                        );
                                                      } else {
                                                        showUploadMessage(
                                                          context,
                                                          'Failed to upload media',
                                                        );
                                                        return;
                                                      }
                                                    }

                                                    final categoriesUpdateData =
                                                        createCategoriesRecordData(
                                                      imageUrl:
                                                          uploadedFileUrl2,
                                                    );
                                                    await gridViewCategoriesRecord!
                                                        .reference
                                                        .update(
                                                            categoriesUpdateData);
                                                  },
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
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
