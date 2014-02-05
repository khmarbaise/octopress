---
layout: post
title: "FluentAPI - Usage"
date: 2014-01-01 01:23
comments: true
categories: [News,Programming,SAPM]
---
As a Java developer I always got the impression that my own code
can be made better (unfortunately I am not perfect). That
brought me to think about how I could improve the code.

So I thought several times about my code and while looking for example into my
unit/integrations tests I found the following code snippet:

``` java
AccessRules rules = new AccessRules();

AccessRule rule1 = new AccessRule("/");
rule1.add(UserFactory.createInstance("*"), AccessLevel.READ);
rule1.add(UserFactory.createInstance("harry"), AccessLevel.READ);
rule1.add(UserFactory.createInstance("brian"), AccessLevel.READ);

rules.add(rule1);
```

 So far so good but it basically violates the [DRY rule](http://en.wikipedia.org/wiki/Don%27t_repeat_yourself).
 If you take a deeper look into it you will recognize that ```AcessLevel.READ``` and ```UserFactory.createInstance(..)```
 are repeated three times as well as ```rule1.add(...)```.


 Let us change the perspective and move to the user`s point of view. So you
 can imagine that a user of this code needs to write such kind of code several times
 which probably is cumbersome.


 After a time of thinking about the problem I came across a solution which
 is from the user`s point of view much more convenient, simpler to read and
 of course better to understand.

``` java
AccessRules accessRules = new AccessRules.Builder()
    .forRepository("/")
    .forUser("*").and("harry").and("brian")
    .with(AccessLevel.READ)
    .build();
```

 The only things I had to do was to write some supplemental code to get to the above result.
 The following code lines are needed for the ```.forRepository("...")``` part.

``` java
public static class Builder {
    private AccessRules accessRules;

    public Builder() {
        this.accessRules = new AccessRules();
    }

    public AccessRuleBuilder forRepository(String repositoryPath) {
        AccessRule accessRule = new AccessRule(repositoryPath);
        accessRules.add(accessRule);
        return new AccessRuleBuilder(this, accessRule);
    }

    public AccessRules build() {
        return this.accessRules;
    }
}
```

  The next step was to get the ```.forUser("..")``` working which can be achieved by the following
  code part:

``` java
public static class AccessRuleBuilder {
    private Builder builder;
    private AccessRule rule;

    private AccessRuleBuilder(Builder builder, AccessRule rule) {
        this.builder = builder;
        this.rule = rule;
    }

    public UserBuilder forUser(String userName) {
        return new UserBuilder(this.builder, rule).and(userName);
    }
}
```

 And finally the following code snippet which solves the rest of the things like
 ```.and("..")``` and the last line ```.with(AccessLeve.READ)```.


``` java
public static class UserBuilder {
    private List<User> userList;
    private AccessRule accessRule;
    private Builder builder;

    private UserBuilder(Builder builder, AccessRule accessRule) {
        this.userList = new ArrayList<User>();
        this.builder = builder;
        this.accessRule = accessRule;
    }

    public UserBuilder and(String userName) {
        this.userList.add(UserFactory.createInstance(userName));
        return this;
    }

    public Builder with(AccessLevel level) {
        for (User user : this.userList) {
            accessRule.add(user, level);
        }
        return this.builder;
    }
}
```
