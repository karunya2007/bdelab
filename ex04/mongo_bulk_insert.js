use college
sh.enableSharding("college")
sh.shardCollection("college.students", { rollno: 1 })

let bulk = []
for (let i = 1; i <= 100000; i++) {
    bulk.push({
        rollno: i,
        name: "Student_" + i,
        mark: Math.floor(Math.random() * 100)
    })
}
db.students.insertMany(bulk)
