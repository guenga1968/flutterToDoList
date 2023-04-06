class ToDo {
  String id;
  String todoText;
  bool isDone;

ToDo({
  required this.id,
  required this.todoText,
  this.isDone = false,
});

static List<ToDo> todoList(){
  return [
    ToDo(id: '01', todoText: 'Morning Excersie',isDone:true),
    ToDo(id:'02', todoText: 'Buy Grouceries', isDone: true),
    ToDo(id:'03', todoText: 'Check Emails'),
    ToDo(id:'04', todoText: 'Team Meeting'),
    ToDo(id:'05', todoText: 'Work on movile app'),
    ToDo(id:'06', todoText: 'Dinner with Carolina'),

  ];
} // mutable, so need a mutable list for sync roots.  Also, mutating it will cause a sync
}