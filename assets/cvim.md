Hi, guys.
I have to say that [flash.nvim](https://github.com/folke/flash.nvim) is better than [leap.nvim](https://github.com/ggandor/leap.nvim).
So I've implemented something similar to flash.nvim in vscodeVim.
So far it's done.
and I can't live without it in my daily work.
Here is a description of the flash plugin and how to install it.
If you have more ideas, please feel free to contact me.
## Functions
Let's take a look at what flash can do
### The basics
The most basic way to use flash is: `f` + the character to search for + the marker label
![flash-function-1](https://github.com/VSCodeVim/Vim/assets/12064746/6433ef18-06d3-48bb-b8e4-17ff8d864dbf)
For example, if you want to search for "vscode"
Just press `f` + "vscode" and you'll see lots of labels highlighted in green on the screen.
These labels are markers, and you can jump to them by pressing the corresponding label character.
Isn't it very simple?
Compared to leap, flash doesn't limit the number of characters you can input.
It's the same as /search, so it feels very natural.
At the same time, because of the label, it is much more efficient than / search.
> When searching with /, if there are multiple matches, you can only jump one by one with n.
### There's a limit to the number of labels you can jump to.
It's important to note that there is a limit to the number of labels that can be used.
By default, there are only these 'hklyuiopnm,qwertzxcvbasdgjf;'
When matching, it also removes the next possible character to be entered
so the actual label is smaller.
When the number of matching characters is greater than the number of labels, the label is not displayed.
![The red circles are the matches where there is no label](https://images-1252602850.cos.ap-beijing.myqcloud.com/20230917180538.png)
The solution is also very simple, just type in a few more characters, like this.
![Improved precision for searching multiple characters editor](https://images-1252602850.cos.ap-beijing.myqcloud.com/20230917180622.png)
### Supports displaying the currently typed search character in the statusBar.
For consistency with /search
the currently typed characters will be displayed during the search.
![image.png](https://images-1252602850.cos.ap-beijing.myqcloud.com/20230917180828.png)
If you type a wrong character quickly, there will be no match at all.
You can check for spelling errors by looking at the characters displayed in the statusBar.
### Support for logging jump points
After a flash jump, it will be recorded in the jump list.
So this means that you can jump back to the previous position with ctrl + o/i.
![flash-function-2](https://github.com/VSCodeVim/Vim/assets/12064746/1911349e-dcba-44c7-b2f8-1c9e7e1be39f)
This is very useful when writing code in everyday life, for example in this scenario.
You're writing code in a, and then you want to copy the code in b.
You can use f to jump to the location of the code you want to copy.
Then press `ctrl` + `o` to go back to a and paste the code, and then continue coding.
![flash-function-3](https://github.com/VSCodeVim/Vim/assets/12064746/ef7b1b7a-cf52-4fe5-a4f3-91982af82c83)
### Support for visualization mode
Flash can also be used in visual mode.
Just press v and then `f` + the character you're searching for.
![flash-function-9](https://github.com/VSCodeVim/Vim/assets/12064746/e3b3112e-b259-4180-b8c8-309e060b6c2f)
### Operator support
flash also supports operators.
Now you can use it with the operators `d` or `y`
![flash-function-4](https://github.com/VSCodeVim/Vim/assets/12064746/2e4d5cad-8075-4902-8058-b9f0003b8bee)
It will contain the entire searched character, i.e. it will work up to the end of the searched character.
PS: this is a big breakthrough after leap!
The previous implementation of leap didn't support the operator
### Support for carriage returns to jump to the next marker.
When you want to jump to the next marker directly
you can just press `enter`.
There is also a different background color for the next marker.
![flash-function-5](https://github.com/VSCodeVim/Vim/assets/12064746/1791f387-1ece-4d74-bd34-6acc6ea2ae32)
### Support for last search
Sometimes I want to search for the last search character, but I'm too lazy to repeat it.
What can I do?
Well, flash takes care of that for you.
Just hit `f` + `enter` and that's it!
![flash-function-6](https://github.com/VSCodeVim/Vim/assets/12064746/80bfe7af-a6d2-46a4-a5a8-2161c985423d)
The last search history is recorded after a successful challenge.
If no previous search exists, you'll be prompted.
![flash-function-7](https://github.com/VSCodeVim/Vim/assets/12064746/57371b97-7bde-426e-8147-f14f1eb25804)
These are the functions supported so far
Compared to flash.nvim, there are not many functions, but they are all basic functions that are frequently used in daily life.
The main focus is on utility.
## Configuration
Let's talk about the currently supported configurations
- Ignoring case
- Setting labels
- Setting the background color of labels
- set the background color of the next match
#### ignores case
```json
"vim.flash.ignorecase": true
```
Default is true
Match both upper and lower-case characters
If set to false it is case sensitive
#### sets labels
```json
"vim.flash.labels": "hklyuiopnm,qwertzxcvbasdgjf;"
```
The label that is displayed at the point of the marker.
You can expand it as much as you want.
Note that it only displays one character at a time.
For those of you familiar with easymotion, you can see that these are easymotion labels.
Yes, I took the label from easymotion, because I'm lazy.
#### sets the background color of the label
```json
"vim.flash.marker.backgroundColor": "#ccff88"
```
Set the background color of the marker
![image.png](https://images-1252602850.cos.ap-beijing.myqcloud.com/20230917190801.png)
The default color is the same as leap, which I like.
If you think it's ugly, feel free to change it.
#### sets the background color of the next match.
```json
[+]"vim.flash.marker.nextMatchBackgroundColor":[/+][-] "vim.flash.marker.nextMarkerBackgroundColor":[/-] "#ffb86c"
```
Set the background color of the next marker
![image.png](https://images-1252602850.cos.ap-beijing.myqcloud.com/20230917190923.png)
This color is a reference to flash.nvim, which made up an orange color that looks pretty good.
## Installation
Now all you need to do to use flash is the following:
1. Uninstall the official Vim
2. install [CVim](https://marketplace.visualstudio.com/items?itemName=cuixiaorui.cvim)
3. Add the following configuration to settings.json to enable flash.
```json
"vim.flash.enable": true
```
Now you can happily use flash!
### Why CVim?
The last leap was to let you download the installer directly, but a lot of students said it was too much trouble.
But a lot of students said it was too much trouble, and they wondered if they could install it directly from the plugin market.
So this time, flash will fulfill your request.
released a plugin for CVim.
![image.png](https://images-1252602850.cos.ap-beijing.myqcloud.com/20230916202507.png)
It's the official Vim version with flash functionality.
> CVim also made other improvements like easymotion's matching behavior on the current line.
I'll be updating CVim from time to time to synchronize with official updates.
Luckily, VScodeVim is very stable now, and updates are very infrequent, so the maintenance cost is not that big.
Of course, it would be nice if they could merge my code, but that's not really an option for features like this.
Because it will affect many old users, and not every old user wants to use flash.
> The [leap plugin PR](https://github.com/VSCodeVim/Vim/pull/8197) that I submitted a long time ago still hasn't been merged.
So there's no need to wait for the official announcement, let's use the new features first.
I'll post some good plugins to CVim later.
I'll let the new features settle in CVim first, and then submit PR to Vim when it's really well accepted.
## Why use f as the on key?
There are two questions you might have about using f as an opener:
- What about the native f function?
- Why not use s? Why not use s? The previous leap and sneak have always used s.
### What about the native f function?
Some of you may be worried about what to do with the native f function when you use f as the on button.
Actually, the flash function can completely replace the native f function now.
The matching algorithm of flash is based on matching the current line up and down.
This guarantees that the current line will have a marker.
So searching based on a single character can also jump to the!
![flash-function-8](https://github.com/VSCodeVim/Vim/assets/12064746/24562416-9645-4b3e-a67f-7a180a1c4e88)
This can also be combined with a carriage return to jump directly to the first matching token.
So compared to the native f, there are only two cases.
- if the matched character is the first one, then you need to press `enter` one more time.
- If the match is the nth character, then the label jumps straight to it.
### Why don't you use s anymore?
I've given up on the `s` key for three reasons.
#### The `s` key is very useful.
The `s` key is actually a very common and very useful operator.
If you don't use `s`, you have to use `dl` instead.
The reason why sneak and leap used s
I suspect that the reason why sneak and leap used the s key is that it's not an alternative to the f key.
#### conflicts with the vim-surround plugin.
Using `s` in vscodeVim will conflict with the vim-surround plug-in
![image.png](https://images-1252602850.cos.ap-beijing.myqcloud.com/20230917195233.png)
You can see that surround can also be used in conjunction with the `y` `d` `c` `s` operator
#### Pressing `f` is more comfortable than pressing `s`
Pressing `f` is more comfortable than pressing `s`.
Pressing `f` uses the index finger while pressing `s` uses the ring finger.
So the index finger must be more comfortable.
## Problem
There's no caching optimization for the display of jump points.
But it's pretty smooth in use so far, so it's tolerable.
We'll deal with it later when we go live.
We haven't found any other problems yet.
If you have any problems with it, please leave me a message or add me on wechat: cuixr1314
## Compare flash.nvim
flash.nvim contains a lot of features, and I've only implemented the basics.
But I think these basic features are enough for me.
Here's a list of some of the features
For those of you who are used to using flash.nvim, it's important to know that
1. the jump point is displayed at the first character of the search.
2. the start key is `f` instead of `s`.
3. remote is not implemented, personally, I prefer to use `ctrl` + `o` to operate.
4. flit is not implemented, I don't like it.
## Open Source
The code is [here](https://github.com/cuixiaorui/vscodeVim/tree/flash).
Feel free to contribute code.
The implementation principle is quite simple, so you can see the source code directly. ~~~~
