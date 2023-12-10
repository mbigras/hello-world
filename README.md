# Hello world!

> Describe how to get started running your code in a Docker container.

## Getting started

This section is for helping you get started with Docker. I describe how to run your code in a Docker container. Don't worry if terms or commands seem strange. Concentrate on running this procedure. Copy and paste error messages into your notes. If you become confused, then surpress the urge to impulsively search for an answer; instead, stop. Wait. Then start by guessing what's wrong. Create a plan for how to further explore your guess. Practice solving your own problems. When you run into problems, practice forming a clear verbal and written explanation of your problem that includes details about what you expected to happen compared to what actually happened.

Docker is a great tool to learn since you can quickly and reliabily run your code. Have fun!

1. Install Docker.

   Follow the instructions on the [_Get Docker_](https://docs.docker.com/get-docker/) Docker documentation page.

1. Start a terminal emulator.

   For example, for Apple laptops, you can start [_Terminal_](https://en.wikipedia.org/wiki/Terminal_(macOS)) or [_iTerm2_](https://iterm2.com/) terminal emulators.

1. Get this code on your laptop.

   ```
   git clone git@github.com:mbigras/hello-world.git
   cd hello-world
   ```

1. Build your Docker image.

   ```
   docker build --tag hello .
   ```

   Consider the following details:

   1. `--tag hello` means you name your image hello. You can name your image anything you like—so `--tag foo` is fine. Also, `-t` is the short form. That means `-t catdog` is synonymous with `--tag catdog`.
   1. `.` means Docker should look in your current working directory for a file named `Dockerfile`. You could pass an argument like `path/to/docker`, then Docker will look for the `path/to/docker/Dockerfile` file.

1. Run your Docker container.

   ```
   docker run --rm hello
   ```

   Running a Docker container creates a running instance of your image—you can create many containers from one image. The `--rm` options configures Docker to delete your container (not your image!) when your container exists.

   Your output should look this:

   ```
   $ docker run --rm hello
   hello world!
   got args: []
   ```

1. Run your container with arguments.

   ```
   docker run --rm hello foo bar baz
   ```
   
   Your output should look like this:

   ```
   $ docker run --rm hello foo bar baz
   hello world!
   got args: ['foo', 'bar', 'baz']
   ```

   Consider the following arguments:

   1. `hello` tells Docker to run a container from a Docker image named `hello`—that's the image you built earlier.
   1. `foo bar baz` is 3 string arguments—`foo`, `bar`, and `baz`. Docker passes those arguments to your program—`app.py`—because your Dockerfile has an [`ENTRYPOINT`](https://docs.docker.com/engine/reference/builder/#entrypoint) directive. Directive is a very general word for statement, piece of configuration, line of text that configures a program. In general, you configure programs with text files that contain many directives. Each directive tells your program about some setting or preference.

1. Good job! You built a Docker image and ran a Docker container!

   Also, you practiced packaging and running your code.

## But why bother learning Docker?

For fun. Running your code in Docker containers is fun because you can reliabilty and repeatedly run your code and continue to improve your code. Docker solves immediate and future problems. Very soon, you will need to figure out how to run your code on some other machine (or your laptop in like 3 months!). Docker reliabily encodes the precise details for how your code should run.
