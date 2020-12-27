import 'package:flutter/material.dart';
import 'package:heartsleeve/CustomContainers/diaryPreview.dart';
import 'package:pagination_view/pagination_view.dart ';
import 'package:provider/provider.dart';
import 'package:heartsleeve/Models/authModel.dart';
import 'package:heartsleeve/JsonModels/diaryEntry.dart';
import 'package:heartsleeve/Services/diaryEntryService.dart';

import '../pages.dart';

class HomeBody extends StatefulWidget {
  @override
  HomeBodyState createState() {
    return HomeBodyState();
  }
}

class HomeBodyState extends State<HomeBody>{
  
  GlobalKey<PaginationViewState> _key;
  int _page;
  String _user;
  PaginationViewType _paginationViewType;

  @override
  initState(){
    _user  = Provider.of<AuthModel>(context, listen: false).user;
    _page = 0;
    _paginationViewType = PaginationViewType.listView;
    _key = GlobalKey<PaginationViewState>();

    super.initState();   
  }

  Future<List<EntryInfo>> pageFetch(int offset) async{
  		_page++;
  		var res   = await getEntries(_user,_page);
  		return res;
  	}

  	Future<List<EntryInfo>> pageRefresh(int offset) async{
  		_page = 0;
  		return pageFetch(offset);
  	}

	 _removeEntry(entryData) async {
		var token  = Provider.of<AuthModel>(context, listen: false).token;
		
    try{
      var res = await deleteEntry(entryData.id,token);
		  _key.currentState.refresh();
		  return res;
    }
    catch(e){
      print(e);
    }

		
	}

  @override
  Widget build(BuildContext context) {

    return PaginationView<EntryInfo>(
      key: _key,
      paginationViewType: _paginationViewType,
      itemBuilder: (context,entryInfo,index) => Column(
        children: [
          //SortMenu(),
          DiaryPreview(enInfo: entryInfo,
          delAction: _removeEntry,
          editAction: () async {
						var res  = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)
                  => WritePage(enInfo: entryInfo)),
                );

						if(res != null){
							_key.currentState.refresh();
							Scaffold.of(context)
							..removeCurrentSnackBar()
							..showSnackBar(SnackBar(content: Text('$res')));
						}
					}),
        ],
      ),

      pageFetch: pageFetch,
			pageRefresh: pageRefresh,
			pullToRefresh: true,
      initialLoader: Center(
		          child: CircularProgressIndicator()
		        ),
		  bottomLoader: Center(
		          child: Text('Loading data...'),
		        ),
		  onEmpty: Center(
		          child: Text('No entry yet. It is okay, take your time!'),
		        ),
      onError: (dynamic error) => Center(
          child: Text('$error'),
        ),

    );

  }
}
