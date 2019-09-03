# Bitmap Editor

A Ruby program that simulates a basic canvas editor.

## How to use

- Clone this repository and navigate to the project root.
- To run the app type: `./bitmap-editor`
- To get a list of the commands when in the editor: `?`

## An Example

```
$./bitmap-editor
Welcome. Please enter a command:
>I 4 8
>L 2 2 A
>S
OOOO
OOOO
OOOO
OOOO
OOOO
OOOO
OAOO
OOOO
>V 1 1 8 A
>S
AOOO
AOOO
AOOO
AOOO
AOOO
AOOO
AAOO
AOOO
>X
```

## Testing

- To run the test suite: `rspec`

## Approach and Further Implementations

Due to the fact that the executable `bitmap-editor` was required, and that I only wanted this file to make a single call to an external class, my design approach was influenced by this. I created the `editor.rb` file in order to manage all incoming inputs and checks whether they are valid. There is two more edge cases I did not get time to complete. An error message should be given if:
- the user enters a coordinate that is greater than the canvas size.
- or, if the user enters a number less than 1 or a letter instead of a coordinate.

### Structure

The `editor` delegates the execution of commands to the `command_index`, and the `command_index`, in turn, sets up a `canvas`. My reasoning for this was that I wanted to give each class a single responsibility and at the same time restrict the way in which information flowed through the application. I didn't want the `editor` to know anything about the `canvas`. Also, having a `command_index` was a useful way to centralise the managing of the commands and convert them into usable values.

Unfortunately I ran out of time before I was able to implement a method that could 'fill a region of the canvas.' Looking into recursion as a way to check whether any pixel shares a common side with an adjacent pixel would've been quite interesting. I will look at implementing this in the future.