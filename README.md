# To Do App

A simple to-do app built with Flutter. It lets the user add tasks, check them off when they're done, and delete tasks they no longer want.

## Preview

![image alt](https://github.com/MokraneFerhani/To-Do-App/raw/d247b9ce06325b3b9fcb74e3e53179c750699083/screenshoot.jpeg)
## Features

- Add a task with the text field and `+` button
- Check a task off when it's done (the text gets a line-through)
- Swipe a task to the left to delete it

## What I learned

- Using more than one Dart file and connecting them through classes (`main.dart`, `home page.dart`, `to do.dart`)
- Implementing functions (add, check, delete) and passing them between widgets
- Parent-child communication: `HomePage` passes data and functions down, and `toDo` calls those functions when the user checks or deletes a task
- Stateless vs stateful widgets: `toDo` only displays data, `HomePage` owns it and uses `setState`
- Using the `ListView` widget to display the list of tasks
- Using the floating action button and placing a text field with it at the bottom
- Styling a to-do item: a box with a checkbox, a title, and a slidable delete button
- How `setState` works in a Flutter widget: every time the data changes, it rebuilds the screen to show the change

## Run

```
flutter pub get
flutter run
```
