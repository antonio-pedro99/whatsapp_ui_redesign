class Message {
  String? name;
  String? imgPath;
  String? txtMsg;
  String? time;
  bool? read;

  Message({this.name, this.imgPath, this.txtMsg, this.time, this.read});

  static List<Message> getMessages() {
    List<Message> items = [];

    items.add(Message(
        name: "Kennedy Saints",
        imgPath:
            "https://images.unsplash.com/photo-1530785602389-07594beb8b73?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        txtMsg: "I have the keys! Where are you?",
        time: "13:00",
        read: true));

    items.add(Message(
        name: "Otniel Neves",
        imgPath:
            "https://images.unsplash.com/photo-1529688530647-93a6e1916f5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80",
        txtMsg: "Como estás irmão?",
        time: "12:30",
        read: false));

    items.add(Message(
        name: "Lusoke Kibin",
        imgPath:
            "https://images.unsplash.com/photo-1611420232107-2ec12b3a73c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=383&q=80",
        txtMsg: "O professor não conseguiu nos orientar ahahah",
        time: "12:00",
        read: true));

    items.add(Message(
        name: "Jamba Firmino",
        imgPath:
            "https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        txtMsg: "Thank you for your friendship bro",
        time: "11:53",
        read: true));

    items.add(Message(
        name: "Joshua Arminy",
        imgPath:
            "https://images.unsplash.com/photo-1512310604669-443f26c35f52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=434&q=80",
        txtMsg: "What is going on bro?",
        time: "Yesterday",
        read: false));

    items.add(Message(
        name: "Akshani Gupta",
        imgPath:
            "https://images.unsplash.com/photo-1623091411466-19dce1ed99a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        txtMsg: "See you dear <3",
        time: "Yesterday",
        read: false));

    return items;
  }
}
