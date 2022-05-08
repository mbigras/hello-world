# Hello world!

> Demonstrate how to run your code in a Docker container. Also, introduce ideas about how to quickly progress in software engineering.

## Getting started

The following section describes how to run code in a Docker container. Don't worry if terms or commands seem strange. Concentrate on running this procedure. Copy and paste error messages into your notes then research resolutions. Practice solving your own problems. When you run into problems, practice focusing on a clear verbal—and written—explanation of what you expected to happen compared to what actually happened.

1. Install Docker program.

   Follow the instructions on the [Get Docker](https://docs.docker.com/get-docker/) Docker documentation page.

1. Start Terminal program.

   For example, for Apple laptops, you can start the [Terminal](https://en.wikipedia.org/wiki/Terminal_(macOS)) or [iTerm2](https://iterm2.com/) programs.

1. Get this code on your laptop.

   ```
   git clone git@github.com:mbigras/hello-world.git
   cd hello
   ```

1. Build a Docker image.

   ```
   docker build --tag hello .
   ```

   Consider the following arguments:

   * `--tag hello` means you name your Docker image hello. You can name your image anything you like—so `--tag foo` is fine. Also, `-t` is the short form. That means `-t catdog` is synonymous with `--tag catdog`.
   * `.` means Docker should look in your current working directory for a file named `Dockerfile`. You could pass an argument like `path/to/docker`, then Docker will look for the `path/to/docker/Dockerfile` file.

1. Run a Docker container.

   ```
   docker run hello
   ```

   Running a Docker container is like creating an instance of your Docker image—you can create many Docker containers from one Docker image.

   Your output should look this:

   ```
   $ docker run hello
   hello world!
   got args: []
   ```

1. Run a Docker container with arguments.

   ```
   docker run hello foo bar baz
   ```
   
   Your output should look like this:

   ```
   $ docker run hello foo bar baz
   hello world!
   got args: ['foo', 'bar', 'baz']
   ```

   Consider the following arguments:

   * `hello` tells Docker to run a Docker container from a Docker image named `hello`—that's the image you built earlier.
   * `foo bar baz` is 3 arguments—that are strings—`foo`, `bar`, and `baz`. Docker passes those arguments to your program—`app.py`—because your Dockerfile has an [`ENTRYPOINT`](https://docs.docker.com/engine/reference/builder/#entrypoint) directive. Directive is a very general word for statement, piece of configuration, line of text that configures a program. In general, you configure programs with text files that contain many directives. Each directive tells your program about some setting or preference.

1. Good job! You built a Docker image and ran a Docker container.

   Also, you practiced packaging and running your application—app—with Docker—a general approach that is worth learning.

## Why bother learning Docker?

You should learn how to run all your code examples in a Docker container because then you solve immediate and future problems. Very soon, you need to figure out how to get all the dependencies to run your app. Docker can package those dependencies in a predictable, portable, and durable way. Later, you need to figure out how to deploy your app. When that happens you will learn that most cloud providers—Amazon, Google, Microsoft—offer comprehensive support for running your Docker container.

Also, if you are running code to demonstrate your capabilities to get a job and you run your code in a Docker container, then you are indicating that you understand that running your code in a predictable, portable, and durable way is worthwhile and that demonstrates shared values with other engineers.

Also, you should put your code examples on GitHub with clear README.md files.
