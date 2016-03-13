/*
ToDos_2.playground

You will need to:

Print all your todos (small description)
Print a single todo
Add a todo
Update a todo
Delete a todo
Submit your github repository url


*/


import Foundation

// nested tuple

var records = [
    (id: 1, title: "Record 1", date: "01-31-16", desc: "My first record", assigned: (first: "First", last: "Last")),
    (id: 2, title: "Record 2", date: "01-31-16", desc: "My second record", assigned: (first: "First", last: "Last")),
    (id: 3, title: "Record 3", date: "01-31-16", desc: "My third record", assigned: (first: "First", last: "Last"))

]

print("All records:")
printTodos(records)

print("\nSingle todo at index 1:")

printTodo(records, index: 1)

let newRecord = (id: 4, title: "Record 4", date: "01-31-16", desc: "My forth record", assigned: (first: "First", last: "Last"))
addRecord(&records, record: newRecord)
print("\nAll records after adding new record:")
printTodos(records)

var modifiedRecord = records[2]
modifiedRecord.desc += " modified"
updateRecord(&records, updatedrecord: modifiedRecord, index: 2)
print("\nAll records after updating record 2:")
printTodos(records)


deleteRecord(&records, index: 0)
print("\nAll records after deleting record 0:")
printTodos(records)


