import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Webpage extends StatefulWidget {
  const Webpage({Key? key}) : super(key: key);

  @override
  State<Webpage> createState() => _WebpageState();
}

class _WebpageState extends State<Webpage> {

  String? url;
  double progress = 0;
  InAppWebViewController? WebController;
  String? currentUrl;
  bool ForWord = false;
  bool Back = false;
  PullToRefreshController? refreshController;
  @override
  void initState() {
    super.initState();

    refreshController = PullToRefreshController(onRefresh: (){
      WebController!.reload();
    });
  }
  @override
  Widget build(BuildContext context) {
    url = ModalRoute.of(context)!.settings.arguments as String?;
    return WillPopScope(
      onWillPop: () async {
        await WebController!.goBack();
        return (currentUrl == url) ? true : false;
      },
      child: Scaffold(
        appBar: AppBar(
            title: Text("Web Page",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_outlined,color: Colors.white,),
            ),
            actions: [
              (Back) ? IconButton(
                onPressed: () async {
                  if (WebController != null) {
                    await WebController!.goBack();
                  }
                  setState(() {});
                },
                icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
              )
                  : Container(),
              IconButton(
                  onPressed: () async {
                    if (WebController != null) {
                      await WebController!.reload();
                    }
                    setState(() {});
                  },
                  icon: Icon(Icons.refresh_outlined,color: Colors.white,)
              ),
              (ForWord)? IconButton(
                onPressed: () async{
                  if(WebController != null)
                  {
                    await WebController!.goForward();
                  }
                },
                icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
              )
                  : Container(),
            ]
        ),
        body: Column(
          children: [
            LinearProgressIndicator(
              value: progress,
              color: Colors.black54,
              backgroundColor: Colors.black26,
            ),
            Expanded(
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: Uri.parse(url!),
                ),
                pullToRefreshController: refreshController,
                onWebViewCreated: (controller) {
                  setState(() {
                    WebController = controller;
                  });
                },
                onLoadStart: (controller ,url) async{
                  setState((){
                    currentUrl = url.toString();
                  });
                  ForWord = await WebController!.canGoForward();
                  Back = await WebController!.canGoBack();
                  setState((){});
                },
                onLoadStop: (controller ,url) async{
                  setState((){
                    currentUrl = url.toString();
                  });
                  ForWord = await WebController!.canGoForward();
                  Back = await WebController!.canGoBack();
                  setState((){});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
