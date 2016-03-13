import Foundation

public func printTodos(records: [(id: Int, title: String, date: String, desc: String, assigned: (first: String, last: String))] )
{
    for record in records{
        print(record.desc)
    }
}


public func printTodo(records: [(id: Int, title: String, date: String, desc: String, assigned: (first: String, last: String))], index: Int )
{
        print(records[index].desc)
}

public func addRecord(inout records: [(id: Int, title: String, date: String, desc: String, assigned: (first: String, last: String))] ,record:(id: Int, title: String, date: String, desc: String, assigned: (first: String, last: String)))
{
    records.append(record)
}

public func updateRecord(inout records: [(id: Int, title: String, date: String, desc: String, assigned: (first: String, last: String))] ,updatedrecord:(id: Int, title: String, date: String, desc: String, assigned: (first: String, last: String)), index: Int)
{
    records[index] = updatedrecord
}

public func deleteRecord(inout records: [(id: Int, title: String, date: String, desc: String, assigned: (first: String, last: String))] , index: Int)
{
    records.removeAtIndex(index)
}