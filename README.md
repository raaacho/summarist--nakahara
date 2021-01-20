# Exercise - Layouts

## Introduction
At the beginning of this exercise let's get familiar with most common flutter layouts concept:
1. [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) - convenience widget that combines common painting, positioning, and sizing widgets.
2. [Row](https://api.flutter.dev/flutter/widgets/Row-class.html) - a widget that displays its children in a horizontal array.
3. [Column](https://api.flutter.dev/flutter/widgets/Column-class.html) - a widget that displays its children in a vertical array.
4. [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) - a widget that expands a child of a Row or Column so that the child fills the available space.

## Work preparation

1. Clone repository for this exercise.
2. Create new branch and call it by your name.

## Task

Try to reproduce screen below:

<img src="https://i.imgur.com/bVWleG5.png" alt="lark" height="600"/>

### Requirements:

- Bird's image is in repository, inside images directory.
- Margins for `Text` widgets are 20.0 from left and right side.
- Wiki about Larks is available [here](https://en.wikipedia.org/wiki/Lark)
- MaterialApp gives us a lot of material components, on of them are material icons. Use Icon widget to create `Rating start`.
List of all icons is available [here](https://api.flutter.dev/flutter/material/Icons-class.html)
 ```dart
 // Use this icons
Icon(Icons.star)
Icon(Icons.star_border)
 ```
 
### How to plan your work

#### Divide screen to two equal sections

As you can see body of our application is kind a column of widgets:

<img src="https://i.imgur.com/BBmWBlz.png" alt="lark" height="600"/>

We've got two section: 

1. section for image
1. section for texts (with margin)

Let's divide our screen to two equal sections. 

To create that, use `Expanded` and `Container` widgets. 

Everything you need is just simple tree of widgets like here:

<img src="https://i.imgur.com/xc3oVFF.png" alt="lark" height="600"/>

#### Divide bottom section to two sections

In the bottom purple section we've got two texts, so we again need to divide that into two sections.

<img src="https://i.imgur.com/Qj52VFl.png" alt="lark" height="600"/>

We've got two sections at the bottom part of screen:

* title text
* description text. 

First one has got constant one line of title, so we can set constant `height` property to 100.0.

Second section takes all remaining space so we can expand it by using `Expanded` widget again. 

Let's correct the left part of previous widget tree and try to reproduce this one:

<img src="https://i.imgur.com/xLUL5BX.png" alt="lark" height="600"/>

#### Row inside Container

As you can see in the yellow part of view, we also have got more than one widget. 

There is 

* `Text`
* `Icon`
* `Icon`
* `Icon`

First what you need to add is a new `Row` widget inside the yellow section which contains `Text` and `Container` with constant `width` property.  

Make a place for 'Stars', set it to 100.0.

<img src="https://i.imgur.com/szFcNQ8.png" alt="lark" height="600"/>

Left part of your widget tree should look like:

<img src="https://i.imgur.com/R82mD0A.png" alt="lark" height="600"/>

#### Fill in everything

Now let's swap each `Container` with the appropriate widget.

From the top, it should be:

* `Image`
* `Text`
* `Row(Icon,Icon,Icon)`
* `Text`

#### Expected result

<img src="https://i.imgur.com/bVWleG5.png" alt="lark" height="600"/>

## Bonus
Text widget has got ``style`` property which expects [TextStyle](https://api.flutter.dev/flutter/painting/TextStyle-class.html) widget, let's try to add some fancy styles to texts:
- ``Lark`` - TextStyle(fontWeight: FontWeight.bold, fontSize: 24)
- ``Larks are passerine`` - TextStyle(color: Colors.grey)

#### Expected result:

<img src="https://i.imgur.com/MzwhsDT.png" alt="lark" height="600"/>

[Result in Figma](https://www.figma.com/file/fUktcoiWL31rK21ECvnuoa/Untitled?node-id=0%3A1)

## How to Submit

1. Commit your changes when you finish exercise.
2. Push your branch to Github.
3. Copy the URL to your Pull Request from the browser location bar.
4. Paste this URL in the [exercise submission form](https://docs.google.com/forms/d/e/1FAIpQLSd3wK628-vQ0zW77Tn1kHUigmTaJuqC5XMaIglFigKl9_INYw/viewform).
