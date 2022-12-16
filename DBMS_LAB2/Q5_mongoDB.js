test> use EMPLOYEE;
switched to db EMPLOYEE

EMPLOYEE> db.salarycollections.insert({id:"104",name:"Manu",Age:30})
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("638eeecffc4d6be32bb4cd00") }
}

EMPLOYEE> db.salarycollections.find();
[
  {
    _id: ObjectId("638eee4efc4d6be32bb4ccff"),
    id: '103',
    name: 'Raju',
    Age: 30
  },
  {
    _id: ObjectId("638eeecffc4d6be32bb4cd00"),
    id: '104',
    name: 'Manu',
    Age: 30
  }
]

EMPLOYEE> db.salarycollections.update({'name':'Raju'},{$set:{'name':'Sona'}});
DeprecationWarning: Collection.update() is deprecated. Use updateOne, updateMany, or bulkWrite.
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}

EMPLOYEE> db.salarycollections.find();
[
  {
    _id: ObjectId("638eee4efc4d6be32bb4ccff"),
    id: '103',
    name: 'Sona',
    Age: 30
  },
  {
    _id: ObjectId("638eeecffc4d6be32bb4cd00"),
    id: '104',
    name: 'Manu',
    Age: 30
  }
]

EMPLOYEE> db.salarycollections.deleteOne({name:'Manu'});
{ acknowledged: true, deletedCount: 1 }

EMPLOYEE> db.salarycollections.find();
[
  {
    _id: ObjectId("638eee4efc4d6be32bb4ccff"),
    id: '103',
    name: 'Sona',
    Age: 30
  }
]
EMPLOYEE>