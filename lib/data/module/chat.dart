class Chat {
  String? id;
  int? accountId;
  String? fullName;
  int? contactId;
  String? lastMessage;
  String? lastMessageTime;
  List<Dialogs>? dialogs;

  Chat(
      {this.id,
        this.accountId,
        this.fullName,
        this.contactId,
        this.lastMessage,
        this.lastMessageTime,
        this.dialogs});

  factory Chat.fromJson(Map<String, dynamic> json) {
    Chat chat=new Chat();
    chat.id = json['id'];
    chat.accountId = json['accountId'];
    chat.fullName = json['fullName'];
    chat.contactId = json['contactId'];
    chat.lastMessage = json['lastMessage'];
    chat.lastMessageTime = json['lastMessageTime'];
    chat.dialogs = <Dialogs>[];
    if (json['dialogs'] != null) {

      json['dialogs'].forEach((v) {
        chat.dialogs!.add(Dialogs.fromJson(v));
      });
    }
    return chat ;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['accountId'] = this.accountId;
    data['fullName'] = this.fullName;
    data['contactId'] = this.contactId;
    data['lastMessage'] = this.lastMessage;
    data['lastMessageTime'] = this.lastMessageTime;
    if (this.dialogs != null) {
      data['dialogs'] = this.dialogs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Dialogs {
  int? id;
  int? who;
  String? message;
  String? chatid;
  String? time;

  Dialogs({this.id, this.who, this.message, this.chatid, this.time});

  factory Dialogs.fromJson(Map<String, dynamic> json) {
    Dialogs dialogs=Dialogs() ;
    dialogs.id = json['id'];
    dialogs.who = json['who'];
    dialogs.message = json['message'];
    dialogs.chatid = json['chatid'];
    dialogs.time = json['time'];
    return dialogs ;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['who'] = this.who;
    data['message'] = this.message;
    data['chatid'] = this.chatid;
    data['time'] = this.time;
    return data;
  }
}
