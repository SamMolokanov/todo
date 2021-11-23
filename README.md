# CLI TODO App

Everyone has a TODO App! Nothing serious, some experiments with `dry-container`.

## Interactive TODO

```sh
todo (main) $ ./bin/todo

Welcome to the TODO app
command >
```

Available commands

```
add_item
all_items
complete_item
delete_all
delete_item
exit
q
quit
```

Autocomplete with `tab`

Add item with

```shell
todo (main) $ ./bin/todo
Welcome to the TODO app
command > add_item
Type title (single line)
  title > new item
Type body (2 empty lines will finish the input)
  body >some text
  body >another line
  body >
  body >enough!
  body >
  body >
  
Added item:
  id:8825719e-c5f8-4938-90ff-f07ef7b06b9e

  done:
false

  title:
new item

  body:
some text
another line

enough!
```
