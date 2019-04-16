# Consider the following class. I'll be using this class for the following examples

```
public class User {
  private String username;
  private String name;
  private Integer age;
  
  public User(String username, String name, Integer age) {
    this.username = username;
    this.name = name;
    this.age = age;
  }
  
  public Integer getAge() {
    return age;
  }
  
  public Integer getUsername() {
    return username;
  }
  
  public String toString(){
    return username + "," + name + ", " + age;
  }
}
```
Consider also the following list construction
```
List<User> users = new ArrayList<>();
users.add(new User("username1", "Lopez", 56));
users.add(new User("username2", "Smith", 32));
users.add(new User("username3", "Oman", 45));
```

Filter all the users bigger than 35 years will print user 1 and user 3
```
users.stream()
     .filter(user -> user.getAge() >= 35)
     .forEach(System.out::println)
```

Filter alll the users bigger than 35 years will only print the username username1 and username 3
```
users.stream()
     .filter(user -> user.getAge() >= 35)
     .map(User::getUsername)
     .forEach(System.out::println)
```
     




