# jessie + node-jscoverage = PROFIT

This is an example of how to set up a node project to run specs and produce
coverage results. It's pretty basic, but it's for demo purposes.

To run specs, just run `make`

Take a look into the Makefile to see what is actually happening during the run.

## Dependencies

You need two things:

* jessie
* node-jscoverage

To install jessie, run this in the terminal:

```
npm install jessie -g
```

To install jscoverage, you run this

```
npm install jscoverage -g
```

If it does not work, get the source from [https://github.com/visionmedia/node-jscoverage](https://github.com/visionmedia/node-jscoverage) and compile it by hand.
