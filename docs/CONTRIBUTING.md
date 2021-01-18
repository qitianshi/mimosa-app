# Contributor guidelines
Thank you so much for your interest in contributing to Mimosa! These guidelines offer helpful advice and useful information for contributors; be sure to take a look! It won't take too long.

* [How to contribute](#How-to-contribute)
* [Best practices](#Best-practices)
    - [In your code](#In-your-code)
    - [On GitHub](#On-GitHub)
* [Style guides](#Style-guides)
    - [Header comments](#Header-comments)
    - [Whitespace](#Whitespace)
* [The Contributor Agreement](#The-Contributor-Agreement)

## How to contribute
Contributing to Mimosa is simple; just follow the usual steps for other open-source projects.

This section might be helpful if this is your first time contributing on GitHub. If you already know your way around issues, forking, and pull requests, you can skip ahead to [Best practices](#Best-practices).

### Issues
If you want to suggest a feature, report a bug, or discuss questions about Mimosa, you can submit an issue:
1. On this repository, click the [Issues tab](https://github.com/qitianshi/mimosa-app/issues).
2. Describe your issue using the template.
3. Add a label. [What do the labels mean?](#On-GitHub)
4. Submit the Issue and discuss with other contributors.

### Contributing code
You're welcome to contribute directly to Mimosa! Here's how:
1. [Fork this repository.](https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/fork-a-repo)
2. [Create a branch.](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/creating-and-deleting-branches-within-your-repository)
3. Make and commit your edits. 
4. [Create your pull request.](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests)
5. We'll let you know if there are any issues that you might need to address.
6. When everything looks good, we'll merge your branch. Congrats! You're the newest contributor to Mimosa.

## Best practices

### In your code
__Follow naming conventions.__ Here's a great guide to [Swift naming conventions](https://medium.com/better-programming/naming-conventions-in-swift-4b7ca5eed4d2).

__Mimosa adds prefixes to names.__ Mimosa has a unique way of prefixing filenames and some global objects that clearly identifies their purpose, even outside of the context in which they're defined. For example, all SwiftUI Views related to the Library Tab have the prefix `LT_` (like `LT_ListRow`), which helps differentiate them from other Views, like `BT_ListRow` for the Browse Tab. If a prefix has already been chosen for your context, you should follow the existing prefix. If you're naming your own prefix, make sure you it's two alphabets, like `GV` for "Generic views" or `Ut` for "Utilities". Always add an underscore after prefixes to differentiate them from Apple frameworks (for example, MapKit symbols look like this: `MKDirections`).

__Add comments and documentation, but only where necessary.__ It's important to add comments and documentation where your code may be difficult to understand, but adding too many comments can make it harder to follow. Don't add comments where it's already obvious what the code does:

Don't do this:
```Swift
// Text that says "Hello, world!"
Text("Hello, world!")
```

Do this:
```Swift
/// Used by `GV_ContentPreview` to determine the type of content to preview.
enum PreviewType { case formula, category, term }
```

Remember that comments and documentation are different. Comments describe the nuts and bolts of your code; documentation tells others how to use it. Add documentation to public functions, classes, structs, methods, and other code that is meant to be reused numerous times, especially if it's by others. For example, all Generic Views require documentation to help others understand how to use them. Use Xcode's built-in documentation generator.

### On GitHub
__Choose the right label for issues and pull requests.__ Here's what they mean:
* `bug`: something isn't working in the code. This could be a minor problem, like a misaligned icon, or a major bug, like broken navigation; as long as something isn't working, use the `bug` label.
* `documentation`: used to reference code documentation (like comments or docstrings), or repository documentation like the README.
* `duplicate`: a substantially similar issue already exists. This label is meant for repository managers; adding this to your own issue might result in it being ignored.
* `enhancement`: you'd like to see a new feature.
* `help`: you'd like more experienced contributors to help out.
* `invalid`: this issue or pull request does not offer anything constructive or of value. This label is meant for repository managers; adding this to your own issue might result in it being ignored.
* `priority`: this issue or pull request needs extra attention; for example, because it has a major impact on usability. Compare with `URGENT`. 
* `question`: you want some more information about your issue.
* `refactor`: some code needs to be refactored; for example, because it's inefficient or its components are deprecated.
* `URGENT`: this issue or pull request must be resolved immediately. This is reserved for critical bugs and vulnerabilities, especially if it affects public releases.
* `wontfix`: this won't be worked on. This label is meant for repository managers; adding this to your own issue might result in it being ignored.

__Follow Mimosa's branching model.__ Name your branches with one of these prefixes: `feat_` for new features, `bug_` for bugfixes, `refactor_` for refactors, and `minor_` for minor changes. Choose `develop` as the base branch when submitting a pull request, `minor-changes` for branches with the `minor_` prefix. You might be asked to change your base branch before your pull request is accepted and your changes are merged.

__Follow conventions for commit messages.__ Here's a great [guide to writing good commit messages](https://chris.beams.io/posts/git-commit/). Remember to write your commit messages in the simple present tense (for example, "Fix icon alignment bug in navigation tab", not "Fixed..." or "Fixes...").

__Follow the template, but exercise your judgment.__ When submitting an issue or pull request, you may be presented with a template that prompts you for some basic information. It's usually a good idea to provide that information because it helps everyone understand you better. But, if it makes no sense to provide some of those details, and doing so would make it harder, not easier, to understand you, feel free to delete those fields. It's just a template, after all.

## Style guides
We like keeping a consistent style in our code, issues, and pull requests. Follow these guides to make your code readable for everyone.

### Header comments
 The [IDETemplateMacros.plist](https://github.com/qitianshi/mimosa-app/blob/main/Mimosa.xcodeproj/xcshareddata/IDETemplateMacros.plist) sets a header comment template that should be used when new files are created. If you're not using Xcode, or for whatever reason the correct header comment is not generated, this is what it should look like:
 
 ```
 // filename.swift

 // Created on 12/1/21
 // Contributors: Qi Tianshi
 // Swift 5.0

 // Mimosa: Working title; non-working project.

 // description
 
 
```

You'll need to add a brief description of what the file does. If you're working on an existing file, add your name to the `Contributors` line.

Note that there should be __two__ empty lines between the `description` line and the first line of your code.

### Whitespace
Give your code a little room to breathe.

Add a single character whitespace:
* around operators: `foo = bar`
* where there are multiple nested parentheses: `( ((a && b) || (c && d)) && ((e && f) || (g && h)) )`

Add a single line vertical whitespace to separate logically unrelated chunks of code.

## The Contributor Agreement
Contributors need to agree to the [Contributor Agreement](./Contributor%20Agreement.md) before contributing. It contains useful information regarding licensing and proper conduct.

Here's a summary of the Agreement:
* You'll remain the copyright holder of your own contributions, but you allow me, Qi Tianshi, and my affiliates, to use your contribution. We'll be sure to list your name in the README so you get the proper credit for your hard work.
* You should try your best to make sure that your contributions work correctly and are constructive.
* You should follow the [Code of Conduct](./CODE_OF_CONDUCT.md) to create a safe environment for all contributors.
