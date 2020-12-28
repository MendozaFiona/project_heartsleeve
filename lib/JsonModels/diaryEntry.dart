//storing entries into db
class DiaryEntry {
  final String message;
  final Map info;

  DiaryEntry({this.message, this.info});

  factory DiaryEntry.fromJson(Map<String, dynamic> json) {
    return DiaryEntry(
      message: json['message'],
      info: json['diary_entry']
    );
  }
}


//retrieving entries from db
class EntryInfo{
	final String id;
	final String title;
	final String content;
  final tagsArr; //list
	final String created;
	
  EntryInfo({
		this.id,
		this.title,
		this.content,
		this.tagsArr,
		this.created
		
	});
	factory EntryInfo.fromJson(Map<String,dynamic> json){
		return EntryInfo(
			id: json['id'],
			title: json['title'],
			content: json['content'],
			//tagsArr: json['description'], //from diff table
			created: (json['created_at'] == null)?"" : DateTime.parse(json['created_at']).toString()
		);
	}

}


class TagsInfo{
	//final String id;
	//final String entryID;
  final tagsArr; //list
	
  TagsInfo({
		//this.id,
		//this.entryID,
		this.tagsArr,
		
	});
	factory TagsInfo.fromJson(Map<String,dynamic> json){
		return TagsInfo(
			tagsArr: json['tags'],
		);
	}

}