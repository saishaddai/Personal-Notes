# Java Streams tutorial

Get the names of each people and retrieve them in a list of Strings
```
// Java:
List<String> list = people.stream().map(Person::getName).collect(Collectors.toList());
// Kotlin:
val list = people.map { it.name }
```
Get all the people older than 18 years with a formatted output "In Germany x and y and z are legal age"
```
// Java:
String phrase = persons
 .stream()
 .filter(p -> p.age >= 18)
 .map(p -> p.name)
 .collect(Collectors.joining(" and ", "In Germany ", " are of legal age."));
System.out.println(phrase);

// Kotlin:
val phrase = persons
 .filter { it.age >= 18 }
 .map { it.name }
 .joinToString(" and ", "In Germany ", " are of legal age.")
println(phrase)
```
Get a map of persons (key: age, value: name), in case to persons have the same age, the value should append both names separated by semicolon
```
// Java:
Map<Integer, String> map = persons
 .stream()
 .collect(Collectors.toMap(
 p -> p.age,
 p -> p.name,
 (name1, name2) -> name1 + ";" + name2));
System.out.println(map);
// OUTPUT {18=Max, 23=Peter;Pamela, 12=David}

//First apporach in Kotlin using map method
// Kotlin:
val map1 = persons.map { it.age to it.name }.toMap()
println(map1)
// OUTPUT {18=Max, 23=Pamela, 12=David} 
// it removes the duplicate

//second approach using toMap method
val map2 = persons.toMap({ it.age }, { it.name })
println(map2)
// OUTPUT {18=Max, 23=Pamela, 12=David}

//third approach using toMapBy
val map3 = persons.toMapBy { it.age }
println(map3)
// OUTPUT {18=Person(name=Max, age=18), 23=Person(name=Pamela, age=23), 12=Person(name=David, age=12)}

//fourth approach using groupBy
val map4 = persons.groupBy { it.age }
println(map4)
// OUTPUT {18=[Person(name=Max, age=18)], 23=[Person(name=Peter, age=23), Person(name=Pamela, age=23)], 12=[Person(name=David, age=12)]}

//fifth approach using groupBy and mapValues
val map5 = persons.groupBy { it.age }.mapValues { it.value.map { it.name } }
println(map5)
// OUTPUT {18=[Max], 23=[Peter, Pamela], 12=[David]}

//sixth approach groupBy, mapValues and formatting the output
val map6 = persons.groupBy { it.age }.mapValues { it.value.joinToString(";") { it.name } }
println(map6)
// OUTPUT {18=Max, 23=Peter;Pamela, 12=David}
```

Appending the character "a" as prefix for a given list of numbers
```
// Java:
Stream.of(1.0, 2.0, 3.0)
 .mapToInt(Double::intValue)
 .mapToObj(i -> "a" + i)
 .forEach(System.out::println);
// Kotlin:
sequenceOf(1.0, 2.0, 3.0).map(Double::toInt).map { "a$it" }.forEach(::println)
```

